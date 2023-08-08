#pragma once
#include <string>
#include <zmq.hpp>
class attach_client {
private:
  const int io_thread_count = 1;
  //  Prepare our context and socket
  zmq::context_t context = zmq::context_t(io_thread_count);
  zmq::socket_t socket = zmq::socket_t(context, zmq::socket_type::req);
  const std::string attach_client_base_zmq_address = "tcp://127.0.0.1:";

public:
  //
  attach_client(int port);

  /*
   * send message expecting reply
   * */
  std::string request(std::string msg);
  void stop_server();
};
