#pragma once
#include <string>

void engine_server_start(int pid, std::string engine_server_binded_address);

/*
 * attach engine to process [pid] and provide memory scan/edit via
 * port [port] with zmq
 *
 * this is useful for gui communication
 * */
void engine_server_start(int pid, int port);
