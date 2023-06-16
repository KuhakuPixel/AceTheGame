/*
 * use /proc/[pid]/stat to get processes's information
 * */

#pragma once
#include "ace_type.hpp"
#include <string>
#include <vector>
struct proc_info {
  std::string proc_name;
  int pid;
  char state;
  int ppid;
  // process group id of the processes
  int pgrp;
  ULL start_time;
};

struct proc_info parse_proc_stat_line(std::string line);

struct proc_info parse_proc_stat_file(const char *path_to_stat);
/*
 * get all running processes's info
 * */
std::vector<struct proc_info> list_processes();

/*
 * check if process with [pid] is currently running
 * */
bool proc_is_running(int pid);

/*
 * get process name of [pid]
 * returns empty when no [pid] is running
 * */
std::string proc_get_pid_name(int pid);
