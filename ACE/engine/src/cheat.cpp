#include "ACE/cheat.hpp"
//
#include "../third_party/CLI11.hpp"
#include "ACE/ACE_global.hpp"
#include "ACE/ace_type.hpp"
#include "ACE/cheat_cmd_handler.hpp"
#include "ACE/cheat_session.hpp"
#include "ACE/engine_module.hpp"
#include "ACE/error.hpp"
#include "ACE/freeze.hpp"
#include "ACE/input.hpp"
#include "ACE/proc_rw.hpp"
#include "ACE/proc_stat.hpp"
#include "ACE/ptrace.hpp"
#include "ACE/str_utils.hpp"
#include "ACE/to_frontend.hpp"
#include <string.h>
#include <sys/ptrace.h> //For ptrace()
#include <sys/wait.h>   //For waitpid()
#include <unistd.h>

void cheater_mode_loop(int pid) {

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
