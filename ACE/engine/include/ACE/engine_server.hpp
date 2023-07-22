#pragma once
#include <string>

/*
 * attach engine to process [pid] and provide memory scan/edit via
 * port [port] with zmq
 *
 * this is useful for gui communication
 * */
void engine_server_start(int pid, int engine_server_port, int status_publisher_port);
