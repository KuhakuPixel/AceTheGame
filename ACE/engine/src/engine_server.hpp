#pragma once
#include <string>

/*
 * attach engine to process [pid] and provide memory scan/edit via
 * [engine_server_binded_address] with zmq
 *
 * this is useful for gui communication
 * */
void engine_server_start(int pid, std::string engine_server_binded_address);
