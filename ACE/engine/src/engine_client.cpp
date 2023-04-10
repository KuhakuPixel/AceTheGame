
/*
 * adapted from hello world client inc++
 * */
#include "engine_client.hpp"
#include "ACE_global.hpp"
#include <stdlib.h>
engine_client::engine_client(std::string client_binded_address) {
  this->client_binded_address = client_binded_address;
  // connect the socket to address
  this->socket.connect(client_binded_address);
}
engine_client::engine_client(int port)
    : engine_client::engine_client(
          ACE_global::engine_client_base_zmq_address + std::to_string(port)

      ) {
  // nothing
}

std::string engine_client::request(std::string msg) {
  // make the request from string
  zmq::message_t request(msg.size());
  memcpy(request.data(), msg.c_str(), msg.size());
  socket.send(request, zmq::send_flags::none);
  //  Get the reply.
  zmq::message_t reply;
  auto receive_res = socket.recv(reply, zmq::recv_flags::none);
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
