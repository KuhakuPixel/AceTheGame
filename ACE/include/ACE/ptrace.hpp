#pragma once

/*
 * used for operation using `ptrace` syscall
 * we need to attach this program to the <pid> of
 * the program when we want to perform `ptrace` on
 *
 * on error all ptrace operation will return -1
 * https://man7.org/linux/man-pages/man2/ptrace.2.html
 *
 *
 *
 * */

/*
 *
 * */

#include "input.hpp"
#include <functional>
#include <string>

int ptrace_attach_pid(int pid, bool force_stop);

int ptrace_deattach_pid(int pid, bool force_stop);

/*
 * call a code block of [action] (must be wrapped with {})
 * while being ptrace attaced to process with pid of [pid]
 * then ptrace deattach from process
 * after [action] is performed
 *
 * [ptrace_attach_return_ptr]: ptrace attach return code
 *
 * [ptrace_deattach_return_ptr] ptrace deattach return code
 *
 * [force_stop]: force process [pid] to stop between ptrace calls
 * 		 and process is continued after done
 * 		 this is useful since PTRACE_ATTACH
 *   		 doesn't necessarily stop process [pid]
 *
 * will return -1 if fail
 *
 *
 * example:
 * ```
    CALL_WHILE_PTRACE_ATTACHED(
        pid,

        // call a block of code while ptrace attached
        {
          ret_code = _cheat_cmd<long>(&scanner, input_str,
                                           segments_to_scan, &cheat_config);
        },

        &ptrace_attach_ret,

        &ptrace_deattach_ret,

        true

    );
    ```
 *
 *https://stackoverflow.com/questions/17182877/is-it-ok-to-use-a-code-block-as-an-argument-for-a-c-macro
 * */
#define CALL_WHILE_PTRACE_ATTACHED(pid, action, ptrace_attach_return_ptr,      \
                                   ptrace_deattach_return_ptr, force_stop)     \
  do {                                                                         \
    *ptrace_attach_return_ptr = ptrace_attach_pid(pid, force_stop);            \
    /*                                                                         \
     * exit early when cannot attach                                           \
     * */                                                                      \
    if (*ptrace_attach_return_ptr == -1)                                       \
      break;                                                                   \
    /*                                                                         \
     * everything looks okay, execute code block of [action]                   \
     * */                                                                      \
    {action};                                                                  \
    *ptrace_deattach_return_ptr = ptrace_deattach_pid(pid, force_stop);        \
  } while (0)
