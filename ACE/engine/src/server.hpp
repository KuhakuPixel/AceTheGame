#pragma once
#include <functional>
#include <string>

class server {
private:
  std::string server_binded_address;
  std::function<std::string(std::string input_str)> on_input_received;

public:
  /*
   *
   * [server_binded_address]: binded address of the server
   * [on_input_received]: called every time the server receive an input,
   * 			  it will be passed to [input_str] and the callback
   * 			  should return a output
   *
   *
   * server can be stopped by sending "stop" 
   *
   * */
  server(std::string server_binded_address,

         std::function<std::string(std::string input_str)> on_input_received);
  void start();
};
