#include "input.hpp"
#include "../third_party/cpp-linenoise/linenoise.hpp"
#include "ACE_global.hpp"
#include "error.hpp"
#include "to_frontend.hpp"
#include <string.h>

void run_input_loop(std::function<E_loop_statement(std::string)> on_input,
                    std::string mode_name) {

  if (!ACE_global::use_gui_protocol) {
    // ============== linenoise setting ==================
    // Enable the multi-line mode
    linenoise::SetMultiLine(CMD_MULTI_LINE_EDIT);

    // Set max length of the history
    linenoise::SetHistoryMaxLen(CMD_HISTORY_MAX_LEN);
    // Load history
    linenoise::LoadHistory(CMD_HISTORY_FILE_PATH);
    // ===================================================
    // TODO: for this project, snprintf 's count argument
    //(second one) also takes account for null terminator
    // so no need to decrement size by one
    // TODO: don't use linenoise when engine serves as a backedn
    // because linenoise seems to break compatibility with gui
  }
  char input_display[200];
  snprintf(input_display, 199, "(%s) ", mode_name.c_str());

  while (true) {
    // ================== take line input ==========
    std::string input_str;

    if (!ACE_global::use_gui_protocol) {
      // some configuration for linenoise
      struct linenoise::history_config history_conf;
      history_conf.allow_duplicate_history = true;

      //
      linenoise::Readline(input_display, input_str);

      // Add line to history
      linenoise::AddHistory(input_str.c_str(), history_conf);

      // Save history
      linenoise::SaveHistory(CMD_HISTORY_FILE_PATH);
    }

    else {
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
    }

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
