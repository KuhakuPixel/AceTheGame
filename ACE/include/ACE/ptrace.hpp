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
 * call a code [action]
 * while being ptrace attaced to process with pid of [pid]
 * then ptrace deattach from process
 * after [action] is called
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
 *
 *https://stackoverflow.com/questions/17182877/is-it-ok-to-use-a-code-block-as-an-argument-for-a-c-macro
 * */

void call_while_ptrace_attached(int pid, std::function<void()> action,
                                int *ptrace_attach_return_ptr,
                                int *ptrace_deattach_return_ptr,
                                bool force_stop);
