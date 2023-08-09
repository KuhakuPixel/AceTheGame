#include "ACE/aslr_edit.hpp"
#include "../third_party/catch.hpp"
#include "ACE/file_utils.hpp"

/*
TEST_CASE("aslr_set", "[aslr_edit]") {

  std::vector<std::string> prev_aslr_val =
      read_file("/proc/sys/kernel/randomize_va_space");

  aslr_set(true);
  REQUIRE(std::vector<std::string>{"2"} ==
          read_file("/proc/sys/kernel/randomize_va_space")

  );

  aslr_set(false);
  REQUIRE(std::vector<std::string>{"0"} ==
          read_file("/proc/sys/kernel/randomize_va_space")

  );

  aslr_set(true);
  REQUIRE(std::vector<std::string>{"2"} ==
          read_file("/proc/sys/kernel/randomize_va_space")

  );

  aslr_set(false);
  REQUIRE(std::vector<std::string>{"0"} ==
          read_file("/proc/sys/kernel/randomize_va_space")

  );
  // reset back the previous aslr value
  write_file("/proc/sys/kernel/randomize_va_space", prev_aslr_val);
}
*/
