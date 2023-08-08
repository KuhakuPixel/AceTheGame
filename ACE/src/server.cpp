#include "ACE/server.hpp"
#include "ACE/to_frontend.hpp"
#include <zmq.hpp>
const std::string server::stop_request_str = "stop";

server::server(
    int port,
    std::function<std::string(std::string input_str)> on_input_received

) {

  this->server_binded_address =
      this->server_base_zmq_address + std::to_string(port);
  this->on_input_received = on_input_received;
}

void server::start() {

  frontend::log("starting server at address %s\n",
                this->server_binded_address.c_str());

  zmq::context_t context(2);
  zmq::socket_t socket(context, zmq::socket_type::rep);
  socket.bind(this->server_binded_address);

  while (true) {
    zmq::message_t request;

    //  Wait for next request from client
    auto receive_res = socket.recv(request, zmq::recv_flags::none);
    if (!receive_res) {
      printf("Warning: Failed to receive message\n");
    }

    std::string request_str = request.to_string();
    std::string out_str = "";
    // only call [on_input_received] if server is not to be stopped
    if (request_str != server::stop_request_str) {
      //  Do some 'work' and get an output string
      out_str = this->on_input_received(request_str);
    }
    //  Send reply back to client
    zmq::message_t reply(out_str.size());
    memcpy(reply.data(), out_str.c_str(), out_str.size());
    socket.send(reply, zmq::send_flags::none);
    // quit from loop if server is stopped
    if (request_str == server::stop_request_str)
      return;
  }
}
