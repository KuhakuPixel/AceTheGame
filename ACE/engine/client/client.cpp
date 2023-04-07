#include "../src/ACE_global.hpp"
#include "../src/engine_client.hpp"
#include "../src/input.hpp"
#include "../third_party/CLI11.hpp"
#include <iostream>
#include <stdio.h>
#include <string>

int main(int argc, char **argv) {

  // ================ parse args =================
  CLI::App main_app{
      "ACE engine client: client for communicating to ACE's server"};

  //
  std::string msg_to_server = "";
  CLI::Option *msg_option = main_app.add_option(
      "--msg", msg_to_server,
      "send message to engine's server and get reply via stdout\n");
  //
  CLI11_PARSE(main_app, argc, argv);
  // ==============================================
  engine_client client =
      engine_client(ACE_global::engine_client_binded_address);

  // only output one time  request
  if (*msg_option) {
    std::string reply = client.request(msg_to_server);
    printf("%s", reply.c_str());
  }

  else {
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
