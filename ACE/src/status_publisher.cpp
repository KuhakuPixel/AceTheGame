//
//  Weather update server in C++
//  Binds PUB socket to tcp://*:5556
//  Publishes random weather updates
//
#include "ACE/status_publisher.hpp"
#include "../third_party/json.hpp"
#include "ACE/to_frontend.hpp"
#include <stdlib.h>

using json = nlohmann::json;

status_publisher::status_publisher(int port) {

  std::string publisher_binded_address =
      this->publisher_base_zmq_address + std::to_string(port);

  this->socket.bind(publisher_binded_address);
  frontend::log("starting publisher at address %s\n",
                publisher_binded_address.c_str());
}

void status_publisher::send(std::string data) {
  //  Send message to all subscribers
  zmq::message_t zmq_msg(data.size());
  memcpy(zmq_msg.data(), data.c_str(), data.size());
  socket.send(zmq_msg, zmq::send_flags::none);
}

void status_publisher::send_scan_progress(size_t current, size_t max,
                                          bool is_finished) {

  json j = {
      {"current", current},
      {"max", max},
      {"is_finished", is_finished},
  };
  this->send(j.dump());
}
