//
//  Hello World client in C++
//  Connects REQ socket to tcp://localhost:5555
//  Sends "Hello" to server, expects "World" back
//
#include "../src/ACE_global.hpp"
#include "../src/input.hpp"
#include <iostream>
#include <stdio.h>
#include <string>
#include <zmq.hpp>

int main() {
  //  Prepare our context and socket
  zmq::context_t context(1);
  zmq::socket_t socket(context, zmq::socket_type::req);

  printf("Connecting to ACE engine server ...\n");
  socket.connect(ACE_global::engine_client_binded_address);
  printf("done\n");

  auto on_input = [&](std::string input_str) -> E_loop_statement {
    // dont allow empty input
    if (input_str.size() == 0)
      return E_loop_statement::continue_;
    //
    zmq::message_t request(input_str.size());
    memcpy(request.data(), input_str.c_str(), input_str.size());
    socket.send(request, zmq::send_flags::none);

    //  Get and print the reply.
    zmq::message_t reply;
    socket.recv(reply, zmq::recv_flags::none);
    printf("\n%s\n", reply.to_string().c_str());
    return E_loop_statement::continue_;
  };

  run_input_loop(on_input, "Engine Server");
  return 0;
}
