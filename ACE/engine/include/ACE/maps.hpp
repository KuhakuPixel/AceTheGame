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

enum class Maps_pathname_type {
  // the program binary and libraries it used
  program_mapping,
  heap,
  stack,
  // The virtual dynamically linked shared object
  vdso,
  vvar,
  vsyscall,
  anonymous,
  unknown
};
static const std::unordered_map<std::string, Maps_pathname_type>
    str_to_Maps_pathname_type = {
        {"heap", Maps_pathname_type::heap},
        // this seems to be the heap of an android program
        // I got this info from an experiment with running
        // [example_program] and this program in google's android emulator
        // in adb shell
        {"anon:scudo:primary", Maps_pathname_type::heap},
        //
        {"stack", Maps_pathname_type::stack},
        {"vdso", Maps_pathname_type::vdso},
        {"vvar", Maps_pathname_type::vvar},
        {"vsyscall", Maps_pathname_type::vsyscall},

};

struct mem_segment {
  ULL address_start;
  ULL address_end;
  Maps_pathname_type mem_type;
  std::string mem_type_str;

  std::string get_displayable_str() const;
  bool is_special_region;

  // permissons
  bool perm_read;
  bool perm_write;
  bool perm_execute;
  bool perm_shared;
  bool perm_private;
};

/*
 *
 * read file at path_to_maps and on each line
 * parse to struct mem_segment
 * */
std::vector<struct mem_segment> parse_proc_map_file(const char *path_to_maps);

/*
 * meant to be used for parse_proc_map_str, avoid calling it
 * directly unless for unit testing
 * */
Maps_pathname_type get_Maps_pathname_type(const std::string &str);
struct mem_segment parse_proc_map_str(const std::string &line);

bool mem_segment_is_suitable(const struct mem_segment &mem_seg);
std::vector<struct mem_segment>
mem_segment_get_regions_for_scan(int pid,
                                 Scan_Utils::E_region_level region_level);
