/*
 * use /proc/[pid]/stat to get processes's information
 * */

#pragma once
#include "ace_type.hpp"
#include <map>
#include <string>
#include <vector>

static const std::map<char, std::string> proc_state_to_desc_map = {
    {'R', "Running"},
    {'S', "Sleeping in an interruptible wait"},
    {'D', "Waiting in uninterruptible disk sleep"},
    {'Z', "Zombie"},
    {'T', "Stopped (on a signal) or (before Linux 2.6.33) trace stopped"},
    {'t', "Tracing stop (Linux 2.6.33 onward)"},
    {'W', "Paging (only before Linux 2.6.0)"},
    {'X', "Dead (from Linux 2.6.0 onward)"},
    {'x', "Dead (Linux 2.6.33 to 3.13 only)"},
    {'K', "Wakekill (Linux 2.6.33 to 3.13 only)"},
    {'W', "Waking (Linux 2.6.33 to 3.13 only)"},
    {'P', "Parked (Linux 3.9 to 3.13 only)"},

};

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

struct proc_info get_proc_info(int pid);

/**
 * parse a proc/[pid]/stat file and return proc_info
 * if file doesn't exist or parsing fails for any other reason
 * will return proc_info.pid of 0
:wa!
 * */
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
