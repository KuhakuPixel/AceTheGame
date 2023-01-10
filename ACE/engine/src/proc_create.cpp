#include "proc_create.hpp"
#include "error.hpp"
#include <errno.h>
#include <signal.h>   // kill and SIGKILL
#include <stdexcept>  // std::runtime_error
#include <stdio.h>    // printf
#include <string.h>   // strerror
#include <sys/wait.h> // wait
#include <unistd.h>   // fork

int proc_fork_busy_child() {
  int child_pid = fork();
  switch (child_pid) {

  case -1:
    error_exit("fork failed\n");
    break;

  case 0:
    // child execution after sucessfull fork
    // make a busy loop
    //
    while (1)
      pause();
    break;
  default:
    // parent execution after sucessfull fork
    break;
  }
  return child_pid;
}
