
#include "../third_party/catch.hpp"
#include "mock_program_controller.hpp"

const int port = 56665;
TEST_CASE("mock_program_controller", "[mock_program_controller]") {
  int n = 10;
  for (int i = 0; i < n; i++) {
    mock_program_controller<int> mock_controller =
        mock_program_controller<int>(port, 1000);
    std::string res = mock_controller.request("is_running");
    REQUIRE("1" == res);
  }
}
