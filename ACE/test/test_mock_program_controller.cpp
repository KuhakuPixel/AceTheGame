
#include "../third_party/catch.hpp"
#include "mock_program_controller.hpp"
#include <stdexcept>

const size_t arr_length = 1000;
const int val_to_find = 0;

TEST_CASE("mock_program_controller", "[mock_program_controller]") {
  /**
   * some stress test to see if in the end the [port] will be freed
   * */
  int n = 10;
  for (int i = 0; i < n; i++) {
    mock_program_controller<int> mock_controller =
        mock_program_controller<int>(arr_length, val_to_find);
    std::string res = mock_controller.request("is_running");
    REQUIRE("1" == res);
  }
}

TEST_CASE("mock_program_controller_exception", "[mock_program_controller]") {
  /**
   * sending invalid command should throw exception
   * */

  mock_program_controller<int> mock_controller =
      mock_program_controller<int>(arr_length, val_to_find);
  try {
    std::string res =
        mock_controller.request("invalid_command_that_doenst exist");
    REQUIRE(false);

  }

  catch (std::runtime_error &e) {
    REQUIRE(true);
  }
}

TEST_CASE("mock_program_controller.get_expected_found_addresses",
          "[mock_program_controller]") {

  size_t arr_length = 1000;
  int val_to_find = 0;
  /**
   * sending invalid command should throw exception
   * */
  mock_program_controller<int> mock_controller =
      mock_program_controller<int>(arr_length, val_to_find);
  // setup
  mock_controller.setup_val_to_find(0);
  mock_controller.setup_val_to_find(665);
  mock_controller.setup_val_to_find(666);
  mock_controller.setup_val_to_find(999);
  // inc
  //
  std::vector<std::string> addresses =
      mock_controller.get_expected_found_addresses();

  REQUIRE(4 == addresses.size());
}

TEST_CASE("mock_program_controller.increment", "[mock_program_controller]") {

  size_t arr_length = 1000;
  int val_to_find = 0;
  /**
   * sending invalid command should throw exception
   * */
  mock_program_controller<int> mock_controller =
      mock_program_controller<int>(arr_length, val_to_find);
  // setup
  mock_controller.setup_val_to_find(0);
  mock_controller.setup_val_to_find(666);
  mock_controller.setup_val_to_find(999);
  // inc
  mock_controller.increment_setupped_val(+1);
  mock_controller.increment_setupped_val(+2);
  mock_controller.increment_setupped_val(+1);
  //
  std::vector<std::string> setupped_vals = mock_controller.get_setupped_val();
  REQUIRE(3 == setupped_vals.size());
  for (std::string val : setupped_vals) {
    REQUIRE("4" == val);
  }
}
