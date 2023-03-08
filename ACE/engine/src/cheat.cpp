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

template <typename T>
void cheater_mode_loop(int pid, engine_module<T> *engine_module_ptr) {

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

template <typename T> void run_cheater_mode(int pid) {

  engine_module<T> _engine_module = engine_module<T>(pid);
  // run cheater_mode
  cheater_mode_loop<T>(pid, &(_engine_module));
}

// ================================================
void cheater_mode(int pid, E_num_type num_type) {

  std::string num_type_str = E_num_type_to_str_map.at(num_type);
  frontend_print("set type to %s\n", num_type_str.c_str());
  // ==============================================================
  // TODO: add test for multiple types
  switch (num_type) {

  case E_num_type::INT: {
    run_cheater_mode<int>(pid);
    break;
  }

  case E_num_type::LONG: {
    run_cheater_mode<long>(pid);
    break;
  }

  case E_num_type::SHORT: {
    run_cheater_mode<short>(pid);
    break;
  }
  case E_num_type::BYTE: {
    run_cheater_mode<byte>(pid);
    break;
  }

  case E_num_type::FLOAT: {
    run_cheater_mode<float>(pid);
    break;
  }
  }
}
