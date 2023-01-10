#include "../src/common.hpp"
#include "../third_party/catch.hpp"

TEST_CASE("TINE_ACTION", "[COMMON]") {

  /*
   * mark all variables here as volatile
   * so the compiler won't remove this wait loops
   * https://stackoverflow.com/a/246148/14073678
   * */
  // time  of executions cannot be negative
  {
    double time_sec = -1;

    TIME_ACTION(
        {
          volatile int sum = 0;
          sum++;
        },
        &time_sec);
    REQUIRE(time_sec >= 0.0);
  }
  {
    double time_sec = -1;

    TIME_ACTION(
        {
          volatile int sum = 0;
          for (volatile int i = 0; i < 1000; i++)
            sum++;
        },
        &time_sec);
    REQUIRE(time_sec >= 0.0);
  }

  // shouldnt throw segfault,
  // when passingg NULL ptr
  {

    double *NULL_PTR = NULL;
    TIME_ACTION(
        {
          volatile int sum = 0;
          sum++;
        },
        NULL_PTR);

    TIME_ACTION(
        {
          volatile int sum = 0;
          for (int i = 0; i < 1000; i++)
            sum++;
        },
        NULL_PTR);
  }
}
TEST_CASE("free_and_null", "[COMMON]") {

  {
    size_t *arr = (size_t *)malloc(sizeof(size_t) * 10000);
    REQUIRE(arr != NULL);
    FREE_AND_NULL(arr);
    REQUIRE(arr == NULL);
  }

  {
    size_t *arr = (size_t *)malloc(sizeof(size_t) * 1000000);
    REQUIRE(arr != NULL);
    FREE_AND_NULL(arr);
    REQUIRE(arr == NULL);
  }

  {
    size_t *null_ptr = NULL;
    FREE_AND_NULL(null_ptr);
    REQUIRE(null_ptr == NULL);
  }
}
