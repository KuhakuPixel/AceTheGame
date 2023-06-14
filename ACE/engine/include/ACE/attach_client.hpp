#pragma once
#include <string>
#include <zmq.hpp>
class attach_client {
private:
  std::string client_binded_address;
  const int io_thread_count = 1;
  //  Prepare our context and socket
  zmq::context_t context = zmq::context_t(io_thread_count);
  zmq::socket_t socket = zmq::socket_t(context, zmq::socket_type::req);

public:
  /*
   * [client_binded_address]: binded address of the client
   * */
  attach_client(std::string client_binded_address);
  //
  attach_client(int port);

  /*
   * send message expecting reply
   * */
  std::string request(std::string msg);
  void stop_server();
};
