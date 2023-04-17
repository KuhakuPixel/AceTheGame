#include "../src/ACE_global.hpp"
#include "../src/engine_client.hpp"
#include "../src/input.hpp"
#include "../src/main_cmd_creator.hpp"
#include "../third_party/CLI11.hpp"
#include <iostream>
#include <stdio.h>
#include <string>

int main(int argc, char **argv) {

  // ================ parse args =================
  CLI::App app{"ACE engine client: client for communicating to ACE's server"};
  // add ACE's main command to client
  main_mode_options _main_mode_options = main_mode_options();
  CLI::App *main_cmd = app.add_subcommand(
      "main", "ACE's main command that doesn't require attach");
  main_cmd_create(main_cmd, &_main_mode_options);
  // --msg command
  std::string msg_to_server = "";
  CLI::Option *msg_option = app.add_option(
      "--msg", msg_to_server,
      "send message to engine's server and get reply via stdout\n");
  //
  //
  int port = ACE_global::engine_server_client_default_port;
  app.add_option("--port", port, "default port: " + std::to_string(port));
  CLI11_PARSE(app, argc, argv);
  // ==============================================
  engine_client client = engine_client(port);

  // only output one time  request
  if (*msg_option) {
    std::string reply = client.request(msg_to_server);
    printf("%s", reply.c_str());
  }

  // if no argument is passed run as console app
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
