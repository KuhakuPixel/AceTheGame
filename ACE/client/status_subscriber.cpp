
/*
 * demonstrate on seeing active progress by ACE
 * by using publisher-subscriber pattern
 * */

#include "../third_party/CLI11.hpp"
#include "ACE/ACE_global.hpp"
#include <iostream>
#include <sstream>
#include <zmq.hpp>

int main(int argc, char *argv[]) {

  // ================ parse args =================
  CLI::App app{"client for to listening to ACE's server's status to track "
               "things like scan progress in real time"};
  int port = ACE_global::status_publisher_subscriber_default_port;
  app.add_option("--port", port, "default port: " + std::to_string(port));
  // ==============================================
  // parse inputs
  try {
    (app).parse(argc, argv);
  } catch (const CLI::ParseError &e) {
    return (app).exit(e);
  }
  // ==============================================

  /*
   * listen all message published to [port]
   * */
  zmq::context_t context(1);

  //  Socket to talk to server
  zmq::socket_t subscriber(context, zmq::socket_type::sub);
  subscriber.connect("tcp://localhost:" + std::to_string(port));

  //  empty string "" for no filter at all
  //  we want to receive all message
  subscriber.set(zmq::sockopt::subscribe, "");

  while (true) {
    zmq::message_t msg_received;

    zmq::recv_result_t res =
        subscriber.recv(msg_received, zmq::recv_flags::none);
    if (!res.has_value()) {
      printf("warning: message failed to be received\n");
    }

    std::string data_str = std::string(msg_received.to_string());
    printf("%s\n", data_str.c_str());
  }
  return 0;
}
