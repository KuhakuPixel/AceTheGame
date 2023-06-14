
/*
 * adapted from hello world client inc++
 * */
#include "ACE/attach_client.hpp"
#include "ACE/ACE_global.hpp"
#include "ACE/server.hpp"
#include <stdlib.h>

attach_client::attach_client(std::string client_binded_address) {
  this->client_binded_address = client_binded_address;
  // connect the socket to address
  this->socket.connect(client_binded_address);
}
attach_client::attach_client(int port)
    : attach_client::attach_client(
          ACE_global::attach_client_base_zmq_address + std::to_string(port)

      ) {
  // nothing
}

std::string attach_client::request(std::string msg) {
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

void attach_client::stop_server() {
  //
  this->request(server::stop_request_str);
}
