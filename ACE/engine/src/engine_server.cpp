#include "ACE/engine_server.hpp"
#include "ACE/ACE_global.hpp"
#include "ACE/ace_type.hpp"
#include "ACE/cheat_session.hpp"
#include "ACE/server.hpp"
#include "ACE/to_frontend.hpp"

void engine_server_start(int pid, int port) {

  cheat_session _cheat_session = cheat_session(pid, E_num_type::INT);
  // callback on each input
  auto on_input_received =

      [&](std::string input_str) -> std::string {
    // reset output  buffer to make sure
    // we won't have previous output
    frontend::pop_buff();
    _cheat_session.on_each_input(input_str);
    // get std output from _cheat_session.on_each_input
    // function call
    std::string out = frontend::pop_buff();
    frontend::print("task \"%s\" done\n", input_str.c_str());
    return out;
  };

  // start server
  server _server = server(port, on_input_received);
  _server.start();
}
