/*
 * read process's memory segments by using
 * linux's api interface `/proc/self/maps`  or `/proc/<pid>/maps
 * to get the the first and last addresses
 * of a running processes
 *
 * 	```
 * 	address           perms offset  dev   inode   pathname
        08048000-08056000 r-xp 00000000 03:0c 64593   /usr/sbin/gpm
 * 	```
 * ref :
 *
 https://stackoverflow.com/questions/3565232/how-to-programmatically-get-the-address-of-the-heap-on-linux
 * 	https://man7.org/linux/man-pages/man5/procfs.5.html
 *
 https://stackoverflow.com/questions/1401359/understanding-linux-proc-pid-maps-or-proc-self-maps
 *
 *
 * */
#pragma once

#include "ACE/ace_type.hpp"
#include "ACE/scan_utils.hpp"
#include <string>
#include <unordered_map>
#include <vector>

enum class mem_region_type {
  heap,
  stack,
  // starts with executable permission and
  // the regions after that (don't have executable permission) as well,
  // code that don't belong to self process directly
  // example: loaded dynamic/static library
  code,
  // belong to self process, the first region must  have executable
  // permission, and the regions after that belongs to it as well
  // if the pathname is equal to the path of binary
  exe,
  misc,
};
static const std::unordered_map<std::string, mem_region_type>
    str_to_mem_region_type = {
        {"heap", mem_region_type::heap}, {"stack", mem_region_type::stack},
        {"code", mem_region_type::code}, {"exe", mem_region_type::exe},
        {"misc", mem_region_type::misc},

};

struct mem_region {
  ULL address_start;
  ULL address_end;
  mem_region_type mem_type;
  std::string path_name;

  std::string get_displayable_str() const;
  bool is_special_region;

  // permissons
  bool perm_read;
  bool perm_write;
  bool perm_execute;
  bool perm_shared;
  bool perm_private;
  //
  bool is_exe;
};
struct parse_proc_map_context {
  unsigned int code_regions = 0, exe_regions = 0;
  unsigned long prev_end = 0, load_addr = 0, exe_load = 0;
  bool is_exe = false;
  std::string binname;
  const std::string exename;

  parse_proc_map_context(const std::string exename);
};

/*
 *
 * read file at path_to_maps and on each line
 * parse to struct mem_region
 * */
std::vector<struct mem_region>
parse_proc_map_file(const char *path_to_maps, parse_proc_map_context *context);

std::vector<struct mem_region> parse_proc_map_file(const char *path_to_maps);
std::vector<struct mem_region> parse_proc_map_file(int pid);

/*
 * meant to be used for parse_proc_map_str, avoid calling it
 * directly unless for unit testing
 * */
mem_region_type get_mem_region_type(const std::string &path_name,
                                    const parse_proc_map_context *context);

struct mem_region parse_proc_map_str(const std::string &line,
                                     parse_proc_map_context *context);

bool mem_region_is_suitable(const struct mem_region &mem_reg);
std::vector<struct mem_region>
mem_region_get_regions_for_scan(int pid,
                                Scan_Utils::E_region_level region_level);
