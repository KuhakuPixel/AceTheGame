#include "proc_rw.hpp"
#include "ACE_global.hpp"
#include "common.hpp"
#include "error.hpp"
#include "file_utils.hpp"
#include <errno.h> // for errno
#include <fcntl.h> // for open and O_RDWR
#include <stdexcept>
#include <string.h>
#include <sys/ptrace.h> //For ptrace()
#include <sys/uio.h>
#include <sys/wait.h> //For waitpid()
#include <unistd.h>

__attribute__((always_inline)) inline ssize_t
read_proc_mem_new(int proc_mem_fd, const byte *target_address, size_t size,
                  byte *buff) {

  size_t read_count_total = 0;
  do {
    /*
     * read memory from [proc_mem_fd] file
     * [current_read_count] must be signed size_t
     * because it can return negative 1
     * to idicate error
     * */

    ssize_t current_read_count =
        pread(proc_mem_fd, buff + read_count_total, size - read_count_total,
              (size_t)(target_address + read_count_total));
    // can't read further
    if (current_read_count == -1)
      break;
    else
      read_count_total += current_read_count;

  } while (read_count_total < size);

  return read_count_total;
}

/*
 * read a chunk of memory of process [pid] at [target_address] with
 * size of [size]
 * https://man7.org/linux/man-pages/man2/process_vm_readv.2.html
 * */
__attribute__((always_inline)) inline ssize_t
process_vm_readv_new(int pid, const byte *target_address, size_t size,
                     byte *buff) {
  // the target we want to read at
  struct iovec remote[1];
  size_t remote_length = 1;
  // specify the starting address at other process
  remote[0].iov_base = (void *)target_address;
  remote[0].iov_len = size;

  // where the data should go
  // after process_vm_readv is succsessful
  struct iovec local[1];
  size_t local_length = 1;
  local[0].iov_base = buff;
  local[0].iov_len = size;

  //
  size_t read_count_total = 0;
  ssize_t current_read_count =
      process_vm_readv(pid, local, local_length, remote, remote_length, 0);

  // process_vm_readv returns -1 when fail,
  // so only increment read_count_total when we read succsessfully
  if (current_read_count != -1) {
    read_count_total += current_read_count;
  }
  // set the size that we have read
  return read_count_total;
}

// ===================================================================================
//

template <typename T> proc_rw<T>::proc_rw(int pid) {

  proc_rw<T>::proc_pid = pid;
#ifndef __ANDROID__
  /*
   * for linux desktop, we can use proc/pid/mem
   * */
  // ========== get file descriptor of /proc/<pid>/mem ===========
  char path_to_proc_mem[200];
  snprintf(path_to_proc_mem, 199, "/proc/%d/mem", pid);

  /*
   * there is no /proc/<pid>/mem ?, either a very old linux
   * or doesn't have root accsess to read from it
   * */
  if (!file_exist(path_to_proc_mem)) {
    char buff[1000];
    snprintf(buff, 999, "program can't accsess: %s %s\n", path_to_proc_mem,
             getuid() != 0 ? "(WARNING you are not root)"
                           : "(/proc/<pid>/mem is not available in system)");
    throw std::logic_error(buff);
  }
  // proc mem file must be readable and writable
  // so we need to open with read and write requests
  // https://man7.org/linux/man-pages/man2/open.2.html
  proc_rw<T>::proc_pid_mem_fd = open(path_to_proc_mem, O_RDWR);
#endif
}
template <typename T>
ssize_t
proc_rw<T>::read_mem_new(const byte *base_addr, size_t read_size, byte *buff,
                         Scan_Utils::E_read_mem_method read_mem_method) {

  if (read_mem_method == Scan_Utils::E_read_mem_method::with_process_vm_readv) {
    return process_vm_readv_new(proc_rw<T>::proc_pid, base_addr, read_size,
                                buff);
  } else {
    return read_proc_mem_new(proc_rw<T>::proc_pid_mem_fd, base_addr, read_size,
                             buff);
  }
}

template <typename T> T proc_rw<T>::retrieve_val(const byte *address) {

  size_t actual_read_size = 0;
  T val = -1;
  byte *buff = (byte *)malloc(sizeof(T));

  // retrieve values
#ifdef USE_PROC_VM_READ_WRITEV
  actual_read_size =
      process_vm_readv_new(proc_rw<T>::proc_pid, address, sizeof(T), buff);
#else
  actual_read_size =
      read_proc_mem_new(proc_rw<T>::proc_pid_mem_fd, address, sizeof(T), buff);
#endif

  // don't retrieve value if only partial read
  if (actual_read_size == sizeof(T))
    val = *((T *)(buff));

  free(buff);
  return val;
}

template <typename T>

ssize_t proc_rw<T>::write_val(byte *address, T value) {

  ssize_t ret_val = 0;
#ifdef USE_PROC_VM_READ_WRITEV
  // the target we want to read at
  struct iovec remote[1];
  size_t remote_length = 1;
  // where to write at other process
  remote[0].iov_base = (void *)address;
  remote[0].iov_len = sizeof(T);

  // data we want to write
  // to the target process
  struct iovec local[1];
  size_t local_length = 1;
  local[0].iov_base = (void *)&value;
  local[0].iov_len = sizeof(T);

  //
  ret_val = process_vm_writev(proc_rw<T>::proc_pid, local, local_length, remote,
                              remote_length, 0);

#else
  ret_val = pwrite(proc_rw<T>::proc_pid_mem_fd, &value, sizeof(T),
                   (unsigned long)address);
#endif
  return ret_val;
}

template <typename T> void proc_rw<T>::increment_val(byte *address, T inc_val) {

  T current_val = proc_rw<T>::retrieve_val(address);
  proc_rw<T>::write_val(address, current_val + inc_val);
}

#define EXPLICIT_INSTANTIATE(TYPE) template class proc_rw<TYPE>;
TEMPLATE_NUMERIC_INSTANTIATE(EXPLICIT_INSTANTIATE);
#undef EXPLICIT_INSTANTIATE
