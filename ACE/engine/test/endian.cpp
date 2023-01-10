#include "../src/endian.hpp"
#include "../third_party/catch.hpp"
#include <limits.h>

/*
 * test to check if [swap_endian] swap the order
 * of bytes of a number correctly
 * */

TEST_CASE("swap_endian_short", "[endian]") {

  const size_t element_size = sizeof(short);

  union {
    short val;
    char bytes[element_size];
  } before_swap, after_swap;

  {
    before_swap.val = 3;
    after_swap.val = swap_endian(before_swap.val);

    for (size_t i = 0; i < element_size; i++)
      REQUIRE(before_swap.bytes[i] == after_swap.bytes[element_size - i - 1]);
  }

  {
    before_swap.val = 5;
    after_swap.val = swap_endian(before_swap.val);

    for (size_t i = 0; i < element_size; i++)
      REQUIRE(before_swap.bytes[i] == after_swap.bytes[element_size - i - 1]);
  }
}

TEST_CASE("swap_endian_long", "[endian]") {

  const size_t element_size = sizeof(long);

  union {
    long val;
    char bytes[element_size];
  } before_swap, after_swap;

  {
    before_swap.val = LONG_MIN;
    after_swap.val = swap_endian(before_swap.val);

    for (size_t i = 0; i < element_size; i++)
      REQUIRE(before_swap.bytes[i] == after_swap.bytes[element_size - i - 1]);
  }

  {
    before_swap.val = LONG_MAX;
    after_swap.val = swap_endian(before_swap.val);

    for (size_t i = 0; i < element_size; i++)
      REQUIRE(before_swap.bytes[i] == after_swap.bytes[element_size - i - 1]);
  }
}
