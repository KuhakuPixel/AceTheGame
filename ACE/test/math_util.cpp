

#include "ACE/math_util.hpp"
#include "../third_party/catch.hpp"

TEST_CASE("pow_integral", "[math_util]") {
  // [base]
  // 2
  REQUIRE(1 == pow_integral<int>(2, 0));
  REQUIRE(2 == pow_integral<int>(2, 1));
  REQUIRE(4 == pow_integral<int>(2, 2));
  REQUIRE(8 == pow_integral<int>(2, 3));
  REQUIRE(16 == pow_integral<int>(2, 4));
  REQUIRE(1048576 == pow_integral<int>(2, 20));
  // -1
  REQUIRE(1 == pow_integral<int>(-1, 0));
  REQUIRE(-1 == pow_integral<int>(-1, 1));
  REQUIRE(1 == pow_integral<int>(-1, 2));
  REQUIRE(-1 == pow_integral<int>(-1, 3));
  REQUIRE(1 == pow_integral<int>(-1, 4));
  // 3
  REQUIRE(1 == pow_integral<int>(3, 0));
  REQUIRE(3 == pow_integral<int>(3, 1));
  REQUIRE(9 == pow_integral<int>(3, 2));
  REQUIRE(27 == pow_integral<int>(3, 3));
  REQUIRE(81 == pow_integral<int>(3, 4));

  // - 4
  REQUIRE(1 == pow_integral<int>(4, 0));
  REQUIRE(4 == pow_integral<int>(4, 1));
  REQUIRE(16 == pow_integral<int>(4, 2));
  REQUIRE(64 == pow_integral<int>(4, 3));
  REQUIRE(256 == pow_integral<int>(4, 4));
}
