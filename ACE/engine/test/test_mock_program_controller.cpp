
#include "../third_party/catch.hpp"
#include "mock_program_controller.hpp"
#include <stdexcept>

const int port = 56665;

TEST_CASE("mock_program_controller_exception", "[mock_program_controller]") {
  /**
   * sending invalid command should throw exception
   * */

  mock_program_controller<int> mock_controller =
      mock_program_controller<int>(port, 1000);
  try {
    std::string res =
        mock_controller.request("invalid_command_that_doenst exist");
    REQUIRE(false);

  }

  catch (std::runtime_error &e) {
    REQUIRE(true);
  }
}
TEST_CASE("mock_program_controller", "[mock_program_controller]") {
  /**
   * some stress test to see if in the end the [port] will be freed
   * */
  int n = 10;
  for (int i = 0; i < n; i++) {
    mock_program_controller<int> mock_controller =
        mock_program_controller<int>(port, 1000);
    std::string res = mock_controller.request("is_running");
    REQUIRE("1" == res);
  }
}
