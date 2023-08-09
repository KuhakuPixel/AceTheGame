#pragma once

#include "ace_type.hpp"
#include "scan_utils.hpp"
#include <sys/types.h> //For ssize_t

/*
 * a static class used to read and write from and to
 * a process of pid [attached_pid]
 * which is set using `set_proc_pid` function
 *
 * */
template <typename T> class proc_rw {

private:
  // pid of process to read from and write to
  int proc_pid = -1;
  // file descriptor for /proc/attached_pid/mem
  int proc_pid_mem_fd = -1;

public:
  proc_rw(int pid);
  /*
   * read a chunk of memory from
   * the process's pid set by [set_proc_pid]
   * starting address at [base_addr] with size of [read_size] bytes
   * and put the read memory in [buff]
   *
   * return amount of bytes succsessfully read
   *        (can be less than  [read_size])
   * */
  ssize_t
  read_mem_new(const byte *base_addr, size_t read_size, byte *buff,
               Scan_Utils::E_read_mem_method read_mem_method =
                   Scan_Utils::E_read_mem_method::with_proc_pid_mem_file);
  /*
   * retrieve value of type [T] from a process
   *
   * on error, errno is set to indicate the error
   * */
  T retrieve_val(const byte *address);

  /*
   * write value of type [T] to a process
   *
   * on succsess returns number of bytes written
   * on error, returns -1 and errno is set to indicate the error
   * */
  ssize_t write_val(byte *address, T value);

  /*
   * add current value at [address] by [inc_val]
   * */
  void increment_val(byte *address, T inc_val);
};

// ======================================================================
