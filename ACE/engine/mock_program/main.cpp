#include "../third_party/CLI11.hpp"
#include "../third_party/json.hpp"
#include "ACE/server.hpp"
#include "ACE/str_utils.hpp"
#include "zmq.hpp"
#include <string>

using json = nlohmann::json;

int main(int argc, char **argv) {
  printf("args: ");
  for (int i = 0; i < argc; i++) {
    printf("%s, ", argv[i]);
  }
  printf("\n");
  int port = -1;
  size_t arr_size = 0;

  CLI::App app{"For Unit Testing"};
  app.add_option("--port", port)->required();
  app.add_option("--arr_size", arr_size, "amount of memory for testing")
      ->required();

  try {
    (app).parse(argc, argv);
  } catch (const CLI::ParseError &e) {
    return (app).exit(e);
  }

  int *arr = (int *)malloc(sizeof(int) * arr_size);
  auto on_input = [&arr](std::string input) -> std::string {
    size_t index = 0;
    int val = 0;
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
    CLI::App *set_val_at_idx_cmd = app.add_subcommand("set_val_at_idx");
    set_val_at_idx_cmd->add_option("--index", index)->required();
    set_val_at_idx_cmd->add_option("--value", val)->required();
    set_val_at_idx_cmd->callback(

        [&]() {
          //
          printf("set index %zu to %d\n", index, val);
          arr[index] = val;
        }

    );
    // get
    //
    CLI::App *get_val_at_idx_cmd = app.add_subcommand("get_val_at_idx");
    get_val_at_idx_cmd->add_option("--index", index)->required();
    get_val_at_idx_cmd->callback(

        [&]() {
          //
          output = std::to_string(arr[index]);
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
  free(arr);

  return 0;
}
