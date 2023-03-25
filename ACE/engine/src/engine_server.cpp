#include "engine_server.hpp"
#include "ace_type.hpp"
#include "cheat_session.hpp"
#include "server.hpp"
#include "to_frontend.hpp"

void engine_server_start(int pid, std::string engine_server_binded_address) {

  cheat_session _cheat_session = cheat_session(pid, E_num_type::INT);
  // callback on each input
  auto on_input_received =

      [&](std::string input_str) -> std::string {
    // reset output  buffer to make sure
    // we won't have previous output
    frontend_output_buff = "";
    _cheat_session.on_each_input(input_str);
    // get std output from _cheat_session.on_each_input
    // function call
    std::string out = frontend_pop_output();
    return out;
  };

  // start server
  server _server =
      server(ACE_global::engine_server_binded_address, on_input_received);
  _server.start();
}
