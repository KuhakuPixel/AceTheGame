#include "../third_party/json.hpp"
#include "ACE/attach_client.hpp"
#include "ACE/str_utils.hpp"
#include <exception>
#include <stdexcept>
#include <string.h>
#include <string>
#include <sys/wait.h>
#include <unistd.h>
#include <vector>

using json = nlohmann::json;
/**
 * for controlling [mock_program]
 * */
template <typename T> class mock_program_controller {

private:
  const std::string prog_path = "./mock_program/mock_program";
  attach_client *_attach_client = NULL;
  int runned_prog_pid = -1;

public:
  mock_program_controller(size_t arr_size, int port = 56665) {
    this->_attach_client = new attach_client(port);
    int pid = fork();
    switch (pid) {
    case -1: {
      exit(EXIT_FAILURE);
    }
    case 0: {
      E_num_type num_type = get_E_num_type_from_T<T>();
      /**
       * run the mock program with execve
       * */
      // child:
      // construct arguments
      std::vector<std::string> mock_program_arg = {
          prog_path,
          "--port",
          std::to_string(port),
          "--arr_size",
          std::to_string(arr_size),
          "--type",
          E_num_type_to_str_map.at(num_type),
      };
      size_t mock_program_args_length = 0;
      char **mock_program_args = str_vector_to_c_str_arr_nulled_new(
          mock_program_arg, &mock_program_args_length);

      // run
      errno = 0;
      execve(prog_path.c_str(), mock_program_args, NULL);
      if (errno != 0) {
        printf("error (%d): %s\n", errno, strerror(errno));
      }
      str_arr_free(mock_program_args, mock_program_args_length);
      exit(EXIT_SUCCESS);
    }
    default: {
      // set pid
      this->runned_prog_pid = pid;
    }
    }
  }
  std::string request(std::string msg) {

    std::string json_str = _attach_client->request(msg);
    json j = json::parse(json_str);
    if (j["error"] != "") {
      throw std::runtime_error(j["error"]);
    }

    return j["output"];
  }

  ~mock_program_controller() {

    // kill server
    _attach_client->stop_server();
    // wait for server to die
    waitpid(runned_prog_pid, NULL, 0);
    delete _attach_client;
  }
};
