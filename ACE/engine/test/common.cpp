#include "ACE/common.hpp"
#include "../third_party/catch.hpp"

TEST_CASE("TIME_ACTION", "[COMMON]") {

  int sum = 0;
  {
    double time_sec = -1;

    TIME_ACTION({ sum++; }, &time_sec);
    REQUIRE(time_sec >= 0.0);
  }
  {
    double time_sec = -1;

    TIME_ACTION(
        {
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
    TIME_ACTION({ sum++; }, NULL_PTR);

    TIME_ACTION(
        {
          for (int i = 0; i < 1000; i++)
            sum++;
        },
        NULL_PTR);
  }
  printf("sum: %d\n", sum);
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
