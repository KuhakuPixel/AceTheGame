#include "../third_party/CLI11.hpp"
#include "../third_party/json.hpp"
#include "ACE/ace_type.hpp"
#include "ACE/server.hpp"
#include "ACE/str_utils.hpp"
#include "zmq.hpp"
#include <stdlib.h>
#include <string>
#include <sys/mman.h>

using json = nlohmann::json;

template <typename T> void run_loop(int port, size_t arr_size) {

  // cannot use normal malloc because return address is not guaranteed by the
  // standard to be a virtual address
  // https://github.com/KuhakuPixel/AceTheGame/issues/49
  // https://stackoverflow.com/questions/4779188/how-to-use-mmap-to-allocate-a-memory-in-heap
  T *arr = (T *)mmap(NULL, arr_size * sizeof(T), PROT_READ | PROT_WRITE,
                     MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
  // init to 0
  for (size_t i = 0; i < arr_size; i++) {
    arr[i] = 0;
  }
  auto on_input = [&arr, arr_size](std::string input) -> std::string {
    size_t index = 0;
    T val = 0;
    std::string output = "";
    std::string error_output = "";

    // ============================ command creation ==============
    CLI::App app{""};
    app.footer(
        "Use \"<Subcommands> --help\" for more info about that subcommand\n");

    CLI::App *is_running_cmd = app.add_subcommand("is_running");
    is_running_cmd->callback(

        [&]() {
          //
          output = std::to_string(true);
        }

    );
    // set//
    CLI::App *set_val_at_idx_cmd = app.add_subcommand("set");
    set_val_at_idx_cmd->add_option("--index", index)->required();
    set_val_at_idx_cmd->add_option("--value", val)->required();
    set_val_at_idx_cmd->callback(

        [&]() {
          //
          if (index >= arr_size) {
            char err_buff[200];
            snprintf(err_buff, sizeof(err_buff), "index %zu is out of bound\n",
                     index);
            error_output = std::string(err_buff);
            return;
          }
          arr[index] = val;
        }

    );

    // increment
    CLI::App *inc_val_at_idx_cmd = app.add_subcommand("increment");
    inc_val_at_idx_cmd->add_option("--index", index)->required();
    inc_val_at_idx_cmd->add_option("--value", val)->required();
    inc_val_at_idx_cmd->callback(

        [&]() {
          //
          if (index >= arr_size) {
            char err_buff[200];
            snprintf(err_buff, sizeof(err_buff), "index %zu is out of bound\n",
                     index);
            error_output = std::string(err_buff);
            return;
          }
          arr[index] += val;
        }

    );
    // get
    //
    CLI::App *get_val_at_idx_cmd = app.add_subcommand("get");
    get_val_at_idx_cmd->add_option("--index", index)->required();
    get_val_at_idx_cmd->callback(

        [&]() {
          if (index >= arr_size) {
            char err_buff[200];
            snprintf(err_buff, sizeof(err_buff), "index %zu is out of bound\n",
                     index);
            error_output = std::string(err_buff);
            return;
          }
          output = std::to_string(arr[index]);
        }

    );

    // get_address
    //
    CLI::App *get_addr_at_idx_cmd = app.add_subcommand("get_addr");
    get_addr_at_idx_cmd->add_option("--index", index)->required();
    get_addr_at_idx_cmd->callback(

        [&]() {
          if (index >= arr_size) {
            char err_buff[200];
            snprintf(err_buff, sizeof(err_buff), "index %zu is out of bound\n",
                     index);
            error_output = std::string(err_buff);
            return;
          }
          ADDR addr = (ADDR)&arr[index];
          output = std::to_string(addr);
        }

    );

    // ======================== split and make args =================
    std::vector<std::string> args = {""};
    std::vector<std::string> splitted_strs = str_split(input, " ");
    args.insert(args.end(), splitted_strs.begin(), splitted_strs.end());
    size_t c_str_arr_length = 0;
    char **c_str_arr = str_vector_to_c_str_arr_new(args, &c_str_arr_length);

    // parse inputs
    try {
      (app).parse(c_str_arr_length, c_str_arr);
      str_arr_free(c_str_arr, c_str_arr_length);
    } catch (const CLI::ParseError &e) {
      error_output = std::string(e.what());
      (app).exit(e);
      str_arr_free(c_str_arr, c_str_arr_length);
      //
    };
    json output_json = {
        {"output", output},
        {"error", error_output},
    };
    // ===============================================================
    return output_json.dump();
  };

  server _server = server(port, on_input);
  _server.start();
  // free
  munmap(arr, arr_size * sizeof(T));
}

int main(int argc, char **argv) {
  printf("args: ");
  for (int i = 0; i < argc; i++) {
    printf("%s, ", argv[i]);
  }
  printf("\n");
  int port = -1;
  size_t arr_size = 0;
  E_num_type num_type;

  CLI::App app{"For Unit Testing"};
  app.add_option("--port", port)->required();
  app.add_option("--arr_size", arr_size, "amount of memory for testing")
      ->required();

  app.add_option("--type", num_type, "number type")
      ->required()
      ->transform(CLI::CheckedTransformer(num_type_str_to_E_num_type_map,
                                          CLI::ignore_case));

  try {
    (app).parse(argc, argv);
  } catch (const CLI::ParseError &e) {
    return (app).exit(e);
  }

  switch (num_type) {
  case E_num_type::BYTE:
    run_loop<byte>(port, arr_size);
    break;
  case E_num_type::SHORT:
    run_loop<short>(port, arr_size);
    break;
  case E_num_type::INT:
    run_loop<int>(port, arr_size);
    break;
  case E_num_type::LONG:
    run_loop<long>(port, arr_size);
    break;
  case E_num_type::FLOAT:
    run_loop<float>(port, arr_size);
    break;
  }

  return 0;
}
