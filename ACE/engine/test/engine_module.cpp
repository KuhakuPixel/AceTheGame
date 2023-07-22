#include "ACE/engine_module.hpp"
#include "../third_party/catch.hpp"
#include <unistd.h>
TEST_CASE("engine_module", "[engine_module]") {
  // just use self pid as pid
  // for this test, it doesn't really matter
  int pid = getpid();
  engine_module<int> _engine_module = engine_module<int>(
      pid, [](size_t current, size_t max) {}, []() {});
  REQUIRE(_engine_module.freezer_ptr != NULL);
  REQUIRE(_engine_module.process_rw != NULL);
  REQUIRE(_engine_module.scanner_ptr != NULL);
}
