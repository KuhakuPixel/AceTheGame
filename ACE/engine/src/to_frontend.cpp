#include "ACE/to_frontend.hpp"
#include <stdarg.h>
#include <stdio.h>
#include <zmq.hpp>

#ifdef __ANDROID__
#include <android/log.h>
#endif

std::string frontend::output_buff = "";

std::string frontend::pop_output() {
  std::string tmp = frontend::output_buff;
  frontend::output_buff = "";
  return tmp;
}

std::string frontend::peek_output() { return frontend::output_buff; }

void frontend::print_core(bool print_to_stdout, bool store_to_buff,
                         const char *fmt, va_list args) {

  char buffer[frontend::buff_size];
  // put args to buffer
  vsnprintf(buffer, sizeof(buffer), fmt, args);
  // print message
  if (print_to_stdout)
    printf("%s", buffer);
// also print to logcat for android
#ifdef __ANDROID__
  __android_log_print(ANDROID_LOG_DEBUG, "ACE", "%s", buffer);
#endif
  // put to buffer
  if (store_to_buff)
    frontend::output_buff += std::string(buffer);
}

void frontend::print(const char *fmt, ...) {
  // put args to bufer
  va_list args;
  va_start(args, fmt);
  frontend::print_core(true, true, fmt, args);
  va_end(args);
}

void frontend::log(const char *fmt, ...) {
  // put args to bufer
  va_list args;
  va_start(args, fmt);
  frontend::print_core(true, false, fmt, args);
  va_end(args);
}

void frontend::_print(bool print_to_stdout, const char *fmt, ...) {
  // put args to bufer
  va_list args;
  va_start(args, fmt);
  frontend::print_core(print_to_stdout, true, fmt, args);
  va_end(args);
}

void frontend::invalid_command(bool print_to_stdout, const char *fmt, ...) {
  frontend::_print(print_to_stdout, "INVALID_COMMAND\n");
  va_list args;
  va_start(args, fmt);
  frontend::print_core(print_to_stdout, true, fmt, args);
  va_end(args);
}
void frontend::mark_task_fail(const char *fmt, ...) {

  frontend::print("FAIL\n");
  va_list args;
  va_start(args, fmt);
  frontend::print_core(true, true, fmt, args);
  va_end(args);
}

void frontend::mark_progress(size_t current, size_t max) {
  frontend::print("PROGRESS_BEGIN\n");
  frontend::print("%zu/%zu\n", current, max);
  frontend::print("PROGRESS_END\n");
}

void frontend::handle_cli_parse_error(bool print_to_stdout,
                                     const CLI::ParseError &e) {
  /**
   * tells error to frontend if only not calling for help
   * */
  if (e.get_name() != "CallForHelp") {
    frontend::invalid_command(print_to_stdout, "%s\n", e.what());
  }
}
