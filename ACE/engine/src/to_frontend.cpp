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

void frontend_print_core(bool print_to_stdout, const char *fmt, va_list args) {

  char buffer[frontend_buff_size];
  // put args to buffer
  vsnprintf(buffer, sizeof(buffer), fmt, args);
  // print message
  if (print_to_stdout)
    printf("%s", buffer);
// also print to logcat for android
#ifdef __ANDROID__
  __android_log_print(ANDROID_LOG_DEBUG, "[ACE Engine]", "%s", buffer);
#endif
  // put to buffer
  frontend_output_buff += std::string(buffer);
}

void frontend_print(const char *fmt, ...) {
  // put args to bufer
  va_list args;
  va_start(args, fmt);
  frontend_print_core(true, fmt, args);
  va_end(args);
}

void _frontend_print(bool print_to_stdout, const char *fmt, ...) {
  // put args to bufer
  va_list args;
  va_start(args, fmt);
  frontend_print_core(print_to_stdout, fmt, args);
  va_end(args);
}

void frontend_invalid_command(bool print_to_stdout, const char *fmt, ...) {
  _frontend_print(print_to_stdout, "INVALID_COMMAND\n");
  va_list args;
  va_start(args, fmt);
  frontend_print_core(print_to_stdout, fmt, args);
  va_end(args);
}
void frontend_mark_task_fail(const char *fmt, ...) {

  frontend_print("FAIL\n");
  va_list args;
  va_start(args, fmt);
  frontend_print_core(true, fmt, args);
  va_end(args);
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

void frontend_handle_cli_parse_error(bool print_to_stdout,
                                     const CLI::ParseError &e) {
  /**
   * tells error to frontend if only not calling for help
   * */
  if (e.get_name() != "CallForHelp") {
    frontend_invalid_command(print_to_stdout, "%s\n", e.what());
  }
}
