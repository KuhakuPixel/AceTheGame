#include "ACE/ptrace.hpp"
#include "ACE/input.hpp"
#include "ACE/to_frontend.hpp"

#include <errno.h>      //For waitpid()
#include <signal.h>     // For kill()
#include <stdio.h>      //For waitpid()
#include <string.h>     //For strerror()
#include <sys/ptrace.h> //For ptrace()
#include <sys/wait.h>   //For waitpid()

/*
 * note that when [force_stop] is enabled
 *
 *  SIGSTOP and SIGCONT must be sent
 *  while process [pid] is attached
 *
 *  so the call goes like this
 *
 *  1. ptrace_attach_pid
 *  2. kill(pid,SIGSTOP)
 *  3. kill(pid,SIGCONT)
 *  4. ptrace_deattach_pid
 *
 *  since an attached program prevents
 *  terminal applications from
 *  dying when SIGSTOP is sent and
 *  SIGCONT is not sent before program is deattached
 * */

int ptrace_attach_pid(int pid, bool force_stop) {

  // First, attach to the process
  // All ptrace() operations that fail return -1, the exceptions are
  // PTRACE_PEEK* operations
  if (ptrace(PTRACE_ATTACH, pid, NULL, NULL) == -1) {
    frontend::mark_task_fail("Error while attaching %s\n", strerror(errno));
    return -1;
  }
  if (force_stop) {
    /*
     * make sure we really stop the process by sending SIGSTOP
     *
     * PTRACE_ATTACH  should also send SIGSTOP
     * to process [pid], but sometimes it doesn't completly stop the process
     * on some program for some reason
     *
     * example: java based program are not completly stopped like minecraft and
     * 	      android apps
     * */

    if (kill(pid, SIGSTOP) == -1) {
      frontend::mark_task_fail("Cannot force stop with SIGSTOP: %s\n",
                               strerror(errno));
      return -1;
    }
  }
  // wait for process to stop
  // waitpid() returns -1 on failure
  // WIFSTOPPED() returns true if the process was stopped when we attached to it
  // (sent by signal)
  int status;
  if (waitpid(pid, &status, 0) == -1 || !WIFSTOPPED(status)) {
    frontend::mark_task_fail("Error while waiting for process to stop: %s\n",
                             strerror(errno));
    frontend::mark_task_fail("Error code: %d\n", errno);
    return -1;
  }

  return 0;
}

int ptrace_deattach_pid(int pid, bool force_stop) {

  if (force_stop) {
    /*
     * if a process is sent SIGSTOP, we need to
     * continue it again with SIGCONT since `PTRACE_DETACH` won't do that
     * for us
     * */
    if (kill(pid, SIGCONT) == -1) {
      frontend::mark_task_fail(
          "Cannot continue process while deattaching with SIGCONT: %s\n",
          strerror(errno));
      return -1;
    }
  }

  if (ptrace(PTRACE_DETACH, pid, NULL, NULL) == -1) {
    frontend::mark_task_fail("Error while deattaching: %s\n", strerror(errno));
    return -1;
  }

  return 0;
}

void call_while_ptrace_attached(int pid, std::function<void()> action,
                                int *ptrace_attach_return_ptr,
                                int *ptrace_deattach_return_ptr,
                                bool force_stop) {

  *ptrace_attach_return_ptr =
      ptrace_attach_pid(pid,
                        force_stop); // exit early when cannot attach
  if (*ptrace_attach_return_ptr == -1)
    return;

  //  everything looks okay, call [action]
  action();
  *ptrace_deattach_return_ptr = ptrace_deattach_pid(pid, force_stop);
}
