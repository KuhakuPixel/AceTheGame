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
  T val_to_find;

  std::vector<size_t> setupped_val_at_indexes = {};

public:
  mock_program_controller(size_t arr_size, T val_to_find, int port = 56665) {
    this->_attach_client = new attach_client(port);
    this->val_to_find = val_to_find;
    E_num_type num_type = get_E_num_type_from_T<T>();

    int pid = fork();
    switch (pid) {
    case -1: {
      exit(EXIT_FAILURE);
    }
    case 0: {
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

    /**
     * make sure wait until program is running
     * because if we try to read its memory
     * immediately, we won't be able to read anything (read length that is
     * successfull is 0), and it will hang during the scan
     *
     * I don't know the reasons, but probably due to race condition
     *
     * this seems hacky but it works
     * */
    if (this->request("is_running") == "1") {
      // need to have this so the compiler won't freaking remove the
      // request instruction in the name of optimization
      printf("mock_program with pid %d is started\n", this->runned_prog_pid);
    } else {
      throw std::runtime_error("Unexpected reply from mock_program");
    }
  }

  int get_prog_pid() { return this->runned_prog_pid; }
  std::string request(std::string msg) {

    std::string json_str = _attach_client->request(msg);
    json j = json::parse(json_str);
    if (j["error"] != "") {
      throw std::runtime_error(j["error"]);
    }

    return j["output"];
  }

  void setup_val_to_find(size_t i) {
    char buff[200];
    snprintf(buff, sizeof(buff), "set --index %zu --value %s", i,
             std::to_string(this->val_to_find).c_str());
    request(std::string(buff));

    this->setupped_val_at_indexes.push_back(i);
  }

  void increment_setupped_val(T val) {

    for (size_t i : this->setupped_val_at_indexes) {
      char buff[200];
      snprintf(buff, sizeof(buff), "increment --index %zu --value %s", i,
               std::to_string(val).c_str());
      request(std::string(buff));
    }
  }
  std::vector<std::string> get_setupped_val() {
    std::vector<std::string> vals_str = {};
    for (size_t i : this->setupped_val_at_indexes) {
      char buff[200];
      snprintf(buff, sizeof(buff), "get --index %zu", i);
      vals_str.push_back(request(std::string(buff)));
    }
    return vals_str;
  }
  std::vector<std::string> get_expected_found_addresses() {
    std::vector<std::string> addresses = {};
    for (size_t i : this->setupped_val_at_indexes) {
      char buff[200];
      // request the address of value at index [i]
      snprintf(buff, sizeof(buff), "get_addr --index %zu", i);
      addresses.push_back(request(std::string(buff)));
    }
    return addresses;
  }

  ~mock_program_controller() {

    // kill server
    _attach_client->stop_server();
    // wait for server to die
    waitpid(runned_prog_pid, NULL, 0);
    delete _attach_client;
  }
};
