#include "../third_party/CLI11.hpp"
#include "ACE/ACE_global.hpp"
#include "ACE/attach_client.hpp"
#include "ACE/input.hpp"
#include "ACE/main_cmd_creator.hpp"
#include "ACE/to_frontend.hpp"
#include <iostream>
#include <stdio.h>
#include <string>

int main(int argc, char **argv) {

  // ================ parse args =================
  CLI::App app{"client for to ACE's server whose has been "
               "attached to a process"};
  // --msg command
  std::string msg_to_server = "";
  CLI::Option *msg_option = app.add_option(
      "--msg", msg_to_server,
      "send message to engine's server and get reply via stdout\n");
  //
  //
  int port = ACE_global::engine_server_client_default_port;
  app.add_option("--port", port, "default port: " + std::to_string(port));
  // ==============================================
  // parse inputs
  try {
    (app).parse(argc, argv);
  } catch (const CLI::ParseError &e) {
    frontend_handle_cli_parse_error(true, e);
    return (app).exit(e);
  }
  // ==============================================
  attach_client client = attach_client(port);

  // only output one time  request
  if (*msg_option) {
    std::string reply = client.request(msg_to_server);
    printf("%s", reply.c_str());
  }
  // just run as console app if no args passed
  if (argc == 1) {
    // run prompt
    auto on_input = [&](std::string input_str) -> E_loop_statement {
      // dont allow empty input
      if (input_str.size() == 0)
        return E_loop_statement::continue_;
      //
      std::string reply = client.request(input_str);
      printf("\n%s\n", reply.c_str());
      return E_loop_statement::continue_;
    };

    run_input_loop(on_input, "Engine Server");
  }

  return 0;
}
