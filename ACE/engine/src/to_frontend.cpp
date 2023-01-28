#include "to_frontend.hpp"
#include <stdarg.h>
#include <stdio.h>
#include <zmq.hpp>

#ifdef __ANDROID__
#include <android/log.h>
#endif

std::string frontend_output_buff = "";

std::string frontend_pop_output() {
  std::string tmp = frontend_output_buff;
  frontend_output_buff = "";
  return tmp;
}

std::string frontend_peek_output() { return frontend_output_buff; }

void frontend_print(const char *fmt, ...) {

  char buffer[10000];
  // put args to bufer
  va_list args;
  va_start(args, fmt);
  vsnprintf(buffer, sizeof(buffer), fmt, args);
  va_end(args);
  // print message
  printf("%s", buffer);
  // also print to logcat for android
#ifdef __ANDROID__
  __android_log_print(ANDROID_LOG_DEBUG, "[ACE Engine]", "%s", buffer);
#endif
  // put to buffer
  frontend_output_buff += std::string(buffer);
}

void frontend_mark_task_fail(const char *fmt, ...) {
  char buffer[10000];
  // put args to bufer
  va_list args;
  va_start(args, fmt);
  vsnprintf(buffer, sizeof(buffer), fmt, args);
  va_end(args);
  // print failure message
  frontend_print("FAIL\n%s", buffer);
}

void frontend_mark_task_begin() {
  //
  frontend_print("TASK_BEGIN\n");
}

void frontend_mark_task_done() {
  //
  frontend_print("TASK_DONE\n");
}

void frontend_mark_progress(size_t current, size_t max) {
  frontend_print("PROGRESS_BEGIN\n");
  frontend_print("%zu/%zu\n", current, max);
  frontend_print("PROGRESS_END\n");
}
