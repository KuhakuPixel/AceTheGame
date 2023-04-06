#include "../src/ACE_global.hpp"
#include "../src/engine_client.hpp"
#include "../src/input.hpp"
#include <iostream>
#include <stdio.h>
#include <string>

int main() {
  engine_client client =
      engine_client(ACE_global::engine_client_binded_address);

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
  return 0;
}
