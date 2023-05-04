#include "cheat.hpp"
//
#include "../third_party/CLI11.hpp"
#include "ACE_global.hpp"
#include "ace_type.hpp"
#include "cheat_cmd_handler.hpp"
#include "cheat_session.hpp"
#include "engine_module.hpp"
#include "error.hpp"
#include "freeze.hpp"
#include "input.hpp"
#include "proc_rw.hpp"
#include "proc_stat.hpp"
#include "ptrace.hpp"
#include "str_utils.hpp"
#include "to_frontend.hpp"
#include <string.h>
#include <sys/ptrace.h> //For ptrace()
#include <sys/wait.h>   //For waitpid()
#include <unistd.h>

void cheater_mode_loop(int pid) {

  // tell frontend cheater mode is entered succsessfully
  if (ACE_global::use_gui_protocol)
    frontend_mark_task_done();

  cheat_session _cheat_session = cheat_session(pid, E_num_type::INT);

  auto on_input =

      [&](std::string input_str) -> E_loop_statement {
    return _cheat_session.on_each_input(input_str);
  };

  run_input_loop(on_input, "CHEATER");
}

void run_cheater_mode(int pid) { cheater_mode_loop(pid); }

// ================================================
void cheater_mode(int pid) {
  //
  run_cheater_mode(pid);
}
