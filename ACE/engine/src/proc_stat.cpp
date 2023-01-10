#include "proc_stat.hpp"
#include "ace_type.hpp"
#include "file_utils.hpp"
#include "str_utils.hpp"
#include <stdlib.h>
#include <string.h>

struct proc_info parse_proc_stat_line(std::string line) {
  /*
   *  parse line from /proc/<pid>/stat and put into
   * `struct proc_info`
   *
   * a line typically has the following
   * which each variable is separated by space
   *
   * ```
   * <pid> <comm> <state> <ppid> ..........
   * ```
   *
   * https://man7.org/linux/man-pages/man5/procfs.5.html :
   * */

  struct proc_info ps_info;

  // the second fields (proc_name/comm %s) is really problematic and will be a
  // pain in the ass when using sscanf
  // since the only characters in a file_name that can appear is the '\0' (not
  // printable) and '/'
  // so we need to iterate from beginning and end for finding the '(' and ')' to
  // extract the file_name then just use sscanf at the next field after <comm>

  sscanf(line.c_str(), "%d", &(ps_info.pid));

  size_t closing_bracket_idx = 0;
  size_t opening_bracket_ix = 0;
  bool can_extract_str = false;
  std::string proc_name =
      str_extract_between_chars(line, '(', ')', &opening_bracket_ix,
                                &closing_bracket_idx, false, &can_extract_str);
  // TODO: what if can_extract_str returns false?
  ps_info.proc_name = proc_name;

  // start using sscanf after the closing bracket of <comm>
  // to the next characters, we
  // add 2 because the next property <state> after ')'
  // is separated by space
  // like so
  // ```
  // 4321 (some  program name) S ...................
  // ```

  std::string new_line = std::string(line.c_str() + closing_bracket_idx + 2);
  std::vector<std::string> proc_datas = str_split(new_line, " ");
  ps_info.state = proc_datas[0][0];
  ps_info.ppid = std::stoi(proc_datas[1]);
  ps_info.pgrp = std::stoi(proc_datas[2]);
  ps_info.start_time = std::stoull(proc_datas[19]);
  //

  return ps_info;
}

struct proc_info parse_proc_stat_file(const char *path_to_stat) {
  struct proc_info ps_info;
  std::vector<std::string> stat_file = read_file(path_to_stat);

  if (stat_file.size() == 1) {

    ps_info = parse_proc_stat_line(stat_file[0]);
  }

  else {

    ps_info.proc_name = "";
    ps_info.pid = 0;
  }
  return ps_info;
}
std::vector<struct proc_info> list_processes() {
  /*
   * use posix's /proc filesystem to get all runnning
   * processes
   * https://man7.org/linux/man-pages/man5/procfs.5.html
   * ```
   *  There is a numerical subdirectory for each running
              process; the subdirectory is named by the process ID.
   * ```
   * */

  std::vector<struct proc_info> processes_info = {};

  std::vector<std::string> dirs_at_proc = list_directories("/proc/");

  for (size_t i = 0; i < dirs_at_proc.size(); i++) {
    std::string current_dir = dirs_at_proc[i].c_str();
    if (str_is_numeric(current_dir.c_str())) {
      int pid = std::stoi(current_dir);
      //
      char path_to_stat[200];
      snprintf(path_to_stat, 199, "/proc/%d/stat", pid);

      /*
       * after we list directory at /proc/, some process might be killed
       * before we reach execution here but still recored in [dirs_at_proc]
       *
       *
       * therefore we need to check if the file still exist before we parse
       * the file
       * */
      if (!file_exist(path_to_stat))
        continue;
      struct proc_info current_proc_info = parse_proc_stat_file(path_to_stat);
      processes_info.push_back(current_proc_info);
    }
  }
  return processes_info;
}

bool proc_is_running(int pid) {
  std::vector<struct proc_info> processes = list_processes();
  for (size_t i = 0; i < processes.size(); i++) {
    if (processes[i].pid == pid)
      return true;
  }
  return false;
}
