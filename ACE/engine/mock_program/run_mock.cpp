#include "../third_party/CLI11.hpp"
#include "ACE/attach_client.hpp"
#include "ACE/str_utils.hpp"
#include "zmq.hpp"
#include <cstdlib>
#include <string>
#include <sys/wait.h>
#include <unistd.h>

int main(int argc, char **argv) {
  int port = -1;

  CLI::App app{"For Unit Testing"};
  app.add_option("--port", port)->required();

  try {
    (app).parse(argc, argv);
  } catch (const CLI::ParseError &e) {
    return (app).exit(e);
  }

  int pid = fork();
  switch (pid) {
  case -1: {
    exit(EXIT_FAILURE);
  }
  case 0: {
    // child:
    // construct arguments
    std::vector<std::string> mock_program_arg = {
        "./mock_program/mock_program",
        "--port",
        std::to_string(port),
        "--arr_size",
        std::to_string(1),
    };
    size_t mock_program_args_length = 0;
    char **mock_program_args = str_vector_to_c_str_arr_nulled_new(
        mock_program_arg, &mock_program_args_length);

    // run
    errno = 0;
    execve("./mock_program/mock_program", mock_program_args, NULL);
    if (errno != 0) {
      printf("error (%d): %s\n", errno, strerror(errno));
    }
    str_arr_free(mock_program_args, mock_program_args_length);
    exit(EXIT_SUCCESS);
  }
  default: {
    // parent
    attach_client _attach_client = attach_client(port);
    _attach_client.request("inc");
    _attach_client.request("inc");

    std::string current = _attach_client.request("get");
    printf("current value: %s\n", current.c_str());

    // kill server
    _attach_client.stop_server();
    // wait for server to die
    waitpid(pid, NULL, 0);
    // exit(EXIT_SUCCESS);
  }
  }

  return 0;
}
