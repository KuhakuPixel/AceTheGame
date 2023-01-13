#include "to_frontend.hpp"
#include <stdarg.h>
#include <stdio.h>

#ifdef __ANDROID__
#include <android/log.h>
#endif
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
}

void frontend_mark_task_fail(const char *fmt, ...) {
  char buffer[10000];
  // put args to bufer
  va_list args;
  va_start(args, fmt);
  vsnprintf(buffer, sizeof(buffer), fmt, args);
  va_end(args);
  // print failure message
  printf("FAIL\n%s", buffer);
}

void frontend_mark_task_begin() {
  //
  printf("TASK_BEGIN\n");
}

void frontend_mark_task_done() {
  //
  printf("TASK_DONE\n");
}

void frontend_mark_progress(size_t current, size_t max) {
  printf("PROGRESS_BEGIN\n");
  printf("%zu/%zu\n", current, max);
  printf("PROGRESS_END\n");
}
