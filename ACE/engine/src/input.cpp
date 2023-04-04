#include "input.hpp"
#include "../third_party/cpp-linenoise/linenoise.hpp"
#include "ACE_global.hpp"
#include "error.hpp"
#include "to_frontend.hpp"
#include <string.h>

void run_input_loop(std::function<E_loop_statement(std::string)> on_input,
                    std::string mode_name) {

  char input_display[200];
  snprintf(input_display, 199, "(%s) ", mode_name.c_str());

  while (true) {
    // ================== take line input ==========
    std::string input_str;

    char input_buff[200];

    frontend_print("%s", input_display);
    if (fgets(input_buff, 199, stdin) == NULL)
      error_exit("fgets cannot read anything\n");

    // remove newline(use \r incase stream is binary)
    // https://stackoverflow.com/a/28462221/14073678
    // https://cplusplus.com/reference/cstring/strspn/
    input_buff[strcspn(input_buff, "\r\n")] = 0;
    //
    input_str = std::string(input_buff);
    // only enter?, just continue like a normal shell would
    if (input_str == "")
      continue;

    // =============================================
    // tells frontend that task has started
    // or done when gui_protocol is enabled

    if (ACE_global::use_gui_protocol)
      frontend_mark_task_begin();
    if (on_input(input_str) == E_loop_statement::break_)
      break;

    if (ACE_global::use_gui_protocol)
      frontend_mark_task_done();
  }
}
