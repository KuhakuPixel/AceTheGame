
/*
 * adapted from hello world client inc++
 * */
#include "engine_client.hpp"
#include <stdlib.h>
#include <zmq.hpp>

engine_client::engine_client(std::string client_binded_address) {
  this->client_binded_address = client_binded_address;
  // connect the socket to address
  printf("Connecting to ACE engine server ...\n");
  this->socket.connect(client_binded_address);
  printf("done\n");
}

std::string engine_client::request(std::string msg) {
  printf("sending %s\n", msg.c_str());
  // make the request from string
  zmq::message_t request(msg.size());
  memcpy(request.data(), msg.c_str(), msg.size());
  socket.send(request, zmq::send_flags::none);
  //  Get the reply.
  zmq::message_t reply;
  auto receive_res = socket.recv(reply, zmq::recv_flags::none);
  printf("done\n");
  if (!receive_res) {
    printf("Warning: Failed to receive message\n");
  }
  return reply.to_string();
}

void engine_client::stop_server() {
  // cannot expect a reply back here,
  // because the server will be killed instantly
  // after we send "stop"
  this->request("stop");
}
