#include "ACE/maps.hpp"
#include "ACE/file_utils.hpp"
#include "ACE/str_utils.hpp"
#include <cstdint>
#include <cstdio>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <string>
#include <unistd.h>
#include <vector>

#define MAX_LINKBUF_SIZE 256

std::string get_executable_name(int pid) {

  /* get executable name */

  char exelink[128] = {0};
  char exename[MAX_LINKBUF_SIZE] = {0};
  snprintf(exelink, sizeof(exelink), "/proc/%d/exe", pid);
  readlink(exelink, exename, MAX_LINKBUF_SIZE - 1);
  return std::string(exename);
}

std::string mem_segment::get_displayable_str() const {

  std::string segment_display_str = "";
  if (this->mem_type == Maps_pathname_type::anonymous)
    segment_display_str += "<Anonymous Mappings>";

  else
    segment_display_str += this->mem_type_str;

  char buff[200];
  snprintf(buff, 199, "0x%llx-0x%llx", this->address_start, this->address_end);
  segment_display_str += " -> " + std::string(buff);

  snprintf(buff, 199, "(%llu bytes)", this->address_end - this->address_start);

  segment_display_str += " " + std::string(buff);

  return segment_display_str + "\n";
}

// TODO need to spltup the functions
// to help with readability
struct mem_segment parse_proc_map_str(const std::string &line,
                                      parse_proc_map_context *context) {

  /*
   path_name ussualy contains literal path
   with exception of special region like [heap],[stack]
   that are surrounded by square brackets

   if one of the bracket is missing, we assume that it is either an anonymous
   mapping (empty path_name) or literal path to a file
   */
  struct mem_segment m_seg;

  ULL address_start;
  ULL address_end;

  char perms[5];
  int offset;

  char dev[6];
  int inode;
  bool is_special_region = false;

  // use calloc to null terminate the string
  char *path_name = (char *)calloc(line.size(), sizeof(char));
  // use llx for reading long hex
  // https://stackoverflow.com/a/30561928/14073678
  // https://cplusplus.com/reference/cstdio/scanf/
  //
  // use [^\n]
  // format specifier to read until but not including '\n'
  // because path_name can contains spaces
  sscanf(line.c_str(), "%llx-%llx %4s %x %5s %d %[^\n]s", &address_start,
         &address_end, perms, &offset, dev, &inode, path_name);
  // check if special region?
  size_t path_name_length = strlen(path_name);
  if (path_name_length >= 2) {

    //  path_name is special region if surrounded by []
    if (path_name[0] == '[' && path_name[path_name_length - 1] == ']')
      is_special_region = true;
  }

  // TODO: need to add constructor
  m_seg.address_start = address_start;
  m_seg.address_end = address_end;
  m_seg.mem_type_str = std::string(path_name);
  m_seg.mem_type = get_Maps_pathname_type(std::string(path_name));
  m_seg.is_special_region = is_special_region;
  // set perms
  m_seg.perm_read = perms[0] == 'r';
  m_seg.perm_write = perms[1] == 'w';
  m_seg.perm_execute = perms[2] == 'x';
  // shared and private field shares the same index
  m_seg.perm_shared = perms[3] == 's';
  m_seg.perm_private = perms[3] == 'p';

  free(path_name);
  return m_seg;
}
std::vector<struct mem_segment> parse_proc_map_file(const char *path_to_maps) {

  // TODO: accepty a function pointer that will be called everytime
  // we parse a line at /proc/[pid]/maps
  // (for example a function that prints the struct mem_segment, so
  // we can see the progress
  parse_proc_map_context context;
  std::vector<struct mem_segment> proc_mem_segments;
  std::vector<std::string> file_content = read_file(path_to_maps);
  for (size_t i = 0; i < file_content.size(); i++) {
    struct mem_segment current_mem_seg =
        parse_proc_map_str(file_content[i], &context);
    proc_mem_segments.push_back(current_mem_seg);
  }
  return proc_mem_segments;
}

Maps_pathname_type get_Maps_pathname_type(const std::string &str) {

  // If the pathname field is blank, this is an anonymous
  if (str.length() == 0)
    return Maps_pathname_type::anonymous;
  // cannot end with '/', otherwise it is a dir
  else if (str.length() > 2 && str[0] == '/' && str[str.length() - 1] != '/') {
    return Maps_pathname_type::program_mapping;
  }

  // special regions like the heap
  // and the stack and ect, which most of the program's
  // computation should reside in
  else if (str[0] == '[' && str[str.length() - 1] == ']') {

    // extract name from bracket
    char *buff = (char *)calloc(str.length(), sizeof(char));
    sscanf(str.c_str(), "[%[^]]", buff);
    std::string region_name_str = std::string(buff);
    // if the key doesn't exist, then the maps' pathname type is unknown
    Maps_pathname_type region_name;
    if (str_to_Maps_pathname_type.count(region_name_str) == 1)
      region_name = str_to_Maps_pathname_type.at(region_name_str);
    else
      region_name = Maps_pathname_type::unknown;

    // free resources
    free(buff);
    return region_name;

  }

  else
    return Maps_pathname_type::unknown;
}

bool mem_segment_is_suitable(const struct mem_segment &mem_seg) {
  // Maps_pathname_type mem_type = mem_seg.mem_type;
  /*
   * segment must be readable and writable
   * for it to be useful
   * */
  if (!mem_seg.perm_read || !mem_seg.perm_write)
    return false;
  /*
   * don't search region that starts with /dev/
   * because it is a special file used to communicate with device
   * driver in the kernel
   *
   * a typical process's value shouldn't reside there
   * https://en.wikipedia.org/wiki/Device_file
   * https://unix.stackexchange.com/a/18534/505340
   * */
  else if (strncmp(mem_seg.mem_type_str.c_str(), "/dev/", strlen("/dev/")) == 0)
    return false;

  else
    return true;
}

std::vector<struct mem_segment>
mem_segment_get_regions_for_scan(int pid,
                                 Scan_Utils::E_region_level region_level) {
  //  ================= find memory mapped regions to scan =============
  char path_to_maps[200];
  snprintf(path_to_maps, 199, "/proc/%d/maps", pid);

  std::vector<struct mem_segment> proc_mem_segments =
      parse_proc_map_file(path_to_maps);
  //
  std::vector<struct mem_segment> segments_to_scan = {};
  for (size_t i = 0; i < proc_mem_segments.size(); i++) {
    struct mem_segment mem_seg = proc_mem_segments[i];
    // choose whether to add this region depending on [region_level]
    bool is_region_suitable = false;
    switch (region_level) {
    case Scan_Utils::E_region_level::all_read_write: {
      is_region_suitable = mem_seg.perm_read && mem_seg.perm_write;
      break;
    }

    case Scan_Utils::E_region_level::all: {
      is_region_suitable = true;
      break;
    }
    }
    // add region
    if (is_region_suitable)
      segments_to_scan.push_back(mem_seg);
  }
  // =================================================================
  return segments_to_scan;
}
