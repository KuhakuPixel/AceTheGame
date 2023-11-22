#include "ACE/common.hpp"
#include "../third_party/catch.hpp"

TEST_CASE("TIME_ACTION", "[COMMON]") {

  REQUIRE(1 == 2);
  int sum = 0;
  {
    double time_sec = -1;

    time_action([&]() { sum++; }, &time_sec);
    REQUIRE(time_sec >= 0.0);
  }
  {
    double time_sec = -1;

    time_action(
        [&]() {
          for (int i = 0; i < 1000; i++)
            sum++;
        },
        &time_sec

    );
    REQUIRE(time_sec >= 0.0);
  }

  // shouldnt throw segfault,
  // when passingg NULL ptr
  {

    double *NULL_PTR = NULL;
    time_action([&]() { sum++; }, NULL_PTR);

    time_action(
        [&]() {
          for (int i = 0; i < 1000; i++)
            sum++;
        },
        NULL_PTR);
  }
  printf("sum: %d\n", sum);
}
