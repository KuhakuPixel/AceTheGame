//
//  Hello World client in C++
//  Connects REQ socket to tcp://localhost:5555
//  Sends "Hello" to server, expects "World" back
//
#include "../src/ACE_global.hpp"
#include "../src/input.hpp"
#include <iostream>
#include <string>
#include <zmq.hpp>

int main() {
  //  Prepare our context and socket
  zmq::context_t context(1);
  zmq::socket_t socket(context, zmq::socket_type::req);

  std::cout << "Connecting to ACE engine server..." << std::endl;
  socket.connect(ACE_global::engine_client_binded_address);

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

  /*
  //  Do 10 requests, waiting each time for a response
  for (int request_nbr = 0; request_nbr != 10; request_nbr++) {
    zmq::message_t request(5);
    memcpy(request.data(), "SHITT", 5);
    std::cout << "Sending SHITT " << request_nbr << "..." << std::endl;
    socket.send(request, zmq::send_flags::none);

    //  Get the reply.
    zmq::message_t reply;
    socket.recv(reply, zmq::recv_flags::none);
    std::cout << "Received World " << request_nbr << std::endl;
  }
  */
  return 0;
}
