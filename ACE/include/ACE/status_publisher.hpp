#pragma once
#include "zmq.hpp"
#include <string>

/*
 * publish status to any subscriber that is listening
 * used to publish things like scan progress
 *
 *  Problem:
 *  	- when ACE is runned as a server by a gui
 *  	  it can only act as a request reply
 *
 *  	  so when gui send request to do thing like scan
 *  	  it won't be able to receive any ongoing
 *  	  progress until scan is finished
 *
 * Solution:
 * 	- open up another port by using this class
 * 	  that continuously publish the ongoing progress
 *
 * 	  gui can then subscribe to the [port] and can know ongoing progress
 * */

class status_publisher {
private:
  const int io_thread_count = 1;
  //  Prepare our context and socket
  zmq::context_t context = zmq::context_t(io_thread_count);
  zmq::socket_t socket = zmq::socket_t(context, zmq::socket_type::pub);
  //
  const std::string publisher_base_zmq_address = "tcp://*:";

public:
  status_publisher(int port);
  void send(std::string data);
  void send_scan_progress(size_t current, size_t max, bool is_finished);
};
