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

  /*
   * detect which region is code and executable
   * credits: https://github.com/scanmem/scanmem/blob/main/maps.c
   * */
  /*
   * get the load address for regions of the same ELF file
   *
   * When the ELF loader loads an executable or a library into
   * memory, there is one region per ELF segment created:
   * .text (r-x), .rodata (r--), .data (rw-) and .bss (rw-). The
   * 'x' permission of .text is used to detect the load address
   * (region start) and the end of the ELF file in memory. All
   * these regions have the same filename. The only exception
   * is the .bss region. Its filename is empty and it is
   * consecutive with the .data region. But the regions .bss and
   * .rodata may not be present with some ELF files. This is why
   * we can't rely on other regions to be consecutive in memory.
   * There should never be more than these four regions.
   * The data regions use their variables relative to the load
   * address. So determining it makes sense as we can get the
   * variable address used within the ELF file with it.
   * But for the executable there is the special case that there
   * is a gap between .text and .rodata. Other regions might be
   * loaded via mmap() to it. So we have to count the number of
   * regions belonging to the exe separately to handle that.
   * References:
   * http://en.wikipedia.org/wiki/Executable_and_Linkable_Format
   * http://wiki.osdev.org/ELF
   * http://lwn.net/Articles/531148/
   */
  // detect further regions of the same ELF file and its end
  if (context->code_regions > 0) {
    if (m_reg.perm_execute ||
        (m_reg.path_name != context->binname &&
         (m_reg.path_name.size() > 0 ||
          m_reg.address_start != context->prev_end)) ||
        context->code_regions >= 4) {
      context->code_regions = 0;
      context->is_exe = false;
      // exe with .text and without .data is impossible
      if (context->exe_regions > 1)
        context->exe_regions = 0;
    }

    else {
      // exe must not have perm execute
      //
      context->code_regions++;
      if (context->is_exe)
        context->exe_regions++;
    }
  }

  if (context->code_regions == 0) {
    // detect the first region belonging to an ELF file
    if (m_reg.perm_execute && m_reg.path_name.size() > 0) {
      context->code_regions++;
      if (m_reg.path_name == context->exename) {
        context->exe_regions = 1;
        context->is_exe = true;
      }
      context->binname = m_reg.path_name;
      // detect the second region of the exe after skipping regions
    } else if (context->exe_regions == 1 && m_reg.path_name.size() > 0 &&
               m_reg.path_name == context->exename) {
      context->code_regions = ++context->exe_regions;
      context->is_exe = true;
      context->binname = m_reg.path_name;
    }
  }
  context->prev_end = m_reg.address_end;
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

std::vector<struct mem_region> parse_proc_map(int pid,
                                              parse_proc_map_context *context) {

  char path_to_maps[200];
  snprintf(path_to_maps, 199, "/proc/%d/maps", pid);

  std::vector<struct mem_region> proc_mem_regions =
      parse_proc_map_file(path_to_maps, context);
  return proc_mem_regions;
}

std::vector<struct mem_region> parse_proc_map(int pid) {

  std::string exename = get_executable_name(pid);
  parse_proc_map_context context = parse_proc_map_context(exename);
  return parse_proc_map(pid, &context);
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
  std::string exe_name = get_executable_name(pid);

  parse_proc_map_context context = parse_proc_map_context(exe_name);
  std::vector<struct mem_region> proc_mem_regions =
      parse_proc_map(pid, &context);
  //
  std::vector<struct mem_region> segments_to_scan = {};
  for (size_t i = 0; i < proc_mem_regions.size(); i++) {
    struct mem_region mem_reg = proc_mem_regions[i];
    // must at least have read permission
    if (!mem_reg.perm_read)
      continue;
    // skip if non writable except when [region_level] is all
    if (!mem_reg.perm_write && region_level != Scan_Utils::E_region_level::all)
      continue;
    // choose whether to add this region depending on [region_level]
    bool is_region_suitable = false;
    switch (region_level) {

    case Scan_Utils::E_region_level::all: {
      is_region_suitable = true;
      break;
    }
    case Scan_Utils::E_region_level::all_read_write: {
      is_region_suitable = true;
      break;
    }

    case Scan_Utils::E_region_level::heap_stack_executable_bss: {
      if (mem_reg.path_name.size() == 0)
        is_region_suitable = true;
    }
      // fall through
    case Scan_Utils::E_region_level::heap_stack_executable: {
      if (mem_reg.mem_type == mem_region_type::heap ||
          mem_reg.mem_type == mem_region_type::stack) {
        is_region_suitable = true;
      } else if (mem_reg.mem_type == mem_region_type::exe ||
                 mem_reg.path_name == exe_name) {
        is_region_suitable = true;
      }
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
