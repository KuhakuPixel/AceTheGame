#include "../src/ACE_global.hpp"
#include "../src/engine_client.hpp"
#include "../src/engine_server.hpp"
#include "../src/proc_create.hpp"
#include "../third_party/catch.hpp"
#include <stdlib.h>
#include <thread>
#include <unistd.h>
TEST_CASE("engine_server_client", "[engine_server_client]") {
  int pid = getpid();
  // need to do this on another thread
  // because starting server will block main thread
  std::thread server_thread = std::thread(

      [pid]() {
        engine_server_start(pid, ACE_global::engine_server_client_default_port);
      }

  );
  //
  engine_client client =
      engine_client(ACE_global::engine_server_client_default_port);
  // test if client can connect to server
  REQUIRE("attached_ok\n" == client.request("attached"));
  // stop server and wait for thread to finish
  client.stop_server();
  server_thread.join();
}
