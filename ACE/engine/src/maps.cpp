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

parse_proc_map_context::parse_proc_map_context(const std::string exename)
    : exename(exename) {}
#define MAX_LINKBUF_SIZE 256

std::string get_executable_name(int pid) {

  /* get executable name */

  char exelink[128] = {0};
  char exename[MAX_LINKBUF_SIZE] = {0};
  snprintf(exelink, sizeof(exelink), "/proc/%d/exe", pid);
  readlink(exelink, exename, MAX_LINKBUF_SIZE - 1);
  return std::string(exename);
}

std::string mem_region::get_displayable_str() const {

  std::string segment_display_str = "";
  if (this->mem_type == mem_region_type::misc)
    segment_display_str += "<Misc Mappings>";

  else
    segment_display_str += this->path_name;

  char buff[200];
  snprintf(buff, 199, "0x%llx-0x%llx", this->address_start, this->address_end);
  segment_display_str += " -> " + std::string(buff);

  snprintf(buff, 199, "(%llu bytes)", this->address_end - this->address_start);

  segment_display_str += " " + std::string(buff);

  return segment_display_str + "\n";
}

// TODO need to spltup the functions
// to help with readability
struct mem_region parse_proc_map_str(const std::string &line,
                                     parse_proc_map_context *context) {

  /*
   path_name ussualy contains literal path
   with exception of special region like [heap],[stack]
   that are surrounded by square brackets

   if one of the bracket is missing, we assume that it is either an anonymous
   mapping (empty path_name) or literal path to a file
   */
  struct mem_region m_reg;

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
  // set perms
  m_reg.perm_read = perms[0] == 'r';
  m_reg.perm_write = perms[1] == 'w';
  m_reg.perm_execute = perms[2] == 'x';
  // shared and private field shares the same index
  m_reg.perm_shared = perms[3] == 's';
  m_reg.perm_private = perms[3] == 'p';

  m_reg.address_start = address_start;
  m_reg.address_end = address_end;
  m_reg.path_name = std::string(path_name);
  // TODO: need to add constructor
  m_reg.mem_type = get_mem_region_type(std::string(path_name), context);
  m_reg.is_special_region = is_special_region;

  free(path_name);
  return m_reg;
}
std::vector<struct mem_region>
parse_proc_map_file(const char *path_to_maps, parse_proc_map_context *context) {

  std::vector<struct mem_region> proc_mem_regions;
  std::vector<std::string> file_content = read_file(path_to_maps);
  for (size_t i = 0; i < file_content.size(); i++) {
    struct mem_region current_mem_seg =
        parse_proc_map_str(file_content[i], context);
    proc_mem_regions.push_back(current_mem_seg);
  }
  return proc_mem_regions;
}

std::vector<struct mem_region> parse_proc_map_file(const char *path_to_maps) {

  parse_proc_map_context context = parse_proc_map_context("");
  return parse_proc_map_file(path_to_maps, &context);
}

std::vector<struct mem_region> parse_proc_map_file(int pid) {

  char path_to_maps[200];
  snprintf(path_to_maps, 199, "/proc/%d/maps", pid);

  // get exe name from pid and its parsing context
  std::string exename = get_executable_name(pid);
  parse_proc_map_context context = parse_proc_map_context(exename);
  //
  std::vector<struct mem_region> proc_mem_regions =
      parse_proc_map_file(path_to_maps, &context);
  return proc_mem_regions;
}

mem_region_type get_mem_region_type(const std::string &path_name,
                                    const parse_proc_map_context *context) {

  if (context->is_exe)
    return mem_region_type::exe;
  else if (context->code_regions > 0)
    return mem_region_type::code;
  else if (path_name == "[heap]")
    return mem_region_type::heap;
  else if (path_name == "[stack]")
    return mem_region_type::stack;
  else
    return mem_region_type::misc;
}

bool mem_region_is_suitable(const struct mem_region &mem_reg) {
  // mem_region_type mem_type = mem_reg.mem_type;
  /*
   * segment must be readable and writable
   * for it to be useful
   * */
  if (!mem_reg.perm_read || !mem_reg.perm_write)
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
  else if (strncmp(mem_reg.path_name.c_str(), "/dev/", strlen("/dev/")) == 0)
    return false;

  else
    return true;
}

std::vector<struct mem_region>
mem_region_get_regions_for_scan(int pid,
                                Scan_Utils::E_region_level region_level) {
  //  ================= find memory mapped regions to scan =============
  char path_to_maps[200];
  snprintf(path_to_maps, 199, "/proc/%d/maps", pid);

  std::vector<struct mem_region> proc_mem_regions =
      parse_proc_map_file(path_to_maps);
  //
  std::vector<struct mem_region> segments_to_scan = {};
  for (size_t i = 0; i < proc_mem_regions.size(); i++) {
    struct mem_region mem_reg = proc_mem_regions[i];
    // choose whether to add this region depending on [region_level]
    bool is_region_suitable = false;
    switch (region_level) {
    case Scan_Utils::E_region_level::all_read_write: {
      is_region_suitable = mem_reg.perm_read && mem_reg.perm_write;
      break;
    }

    case Scan_Utils::E_region_level::all: {
      is_region_suitable = true;
      break;
    }
    }
    // add region
    if (is_region_suitable)
      segments_to_scan.push_back(mem_reg);
  }
  // =================================================================
  return segments_to_scan;
}
