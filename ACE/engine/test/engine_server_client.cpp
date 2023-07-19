#include "../third_party/catch.hpp"
#include "ACE/ACE_global.hpp"
#include "ACE/attach_client.hpp"
#include "ACE/engine_server.hpp"
#include "ACE/proc_create.hpp"
#include <stdlib.h>
#include <thread>
#include <unistd.h>
TEST_CASE("engine_server_client", "[engine_server_client]") {
  int pid = getpid();
  // need to do this on another thread
  // because starting server will block main thread
  std::thread server_thread = std::thread(

      [pid]() {
        engine_server_start(
            pid, ACE_global::engine_server_client_default_port,
            ACE_global::status_publisher_subscriber_default_port);
      }

  );
  //
  attach_client client =
      attach_client(ACE_global::engine_server_client_default_port);
  // test if client can connect to server
  REQUIRE("attached_ok\n" == client.request("attached"));
  // stop server and wait for thread to finish
  client.stop_server();
  server_thread.join();
}
