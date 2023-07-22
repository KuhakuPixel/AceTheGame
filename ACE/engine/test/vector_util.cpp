
#include "ACE/vector_util.hpp"
#include "../third_party/catch.hpp"

TEST_CASE("vector_util.is_subset", "[vector_util]") {
  {
    std::vector<int> a = {4, 2, 1};
    std::vector<int> b = {2, 1};
    REQUIRE(true == vector_util<int>::is_subset(a, b));
  }

  {
    std::vector<int> a = {4, 2, 1};
    std::vector<int> b = {1};
    REQUIRE(true == vector_util<int>::is_subset(a, b));
  }

  {
    std::vector<int> a = {4, 2, 1};
    std::vector<int> b = {1, 4};
    REQUIRE(true == vector_util<int>::is_subset(a, b));
  }

  {
    std::vector<int> a = {4, 2, 1};
    std::vector<int> b = {1, 4, 2};
    REQUIRE(true == vector_util<int>::is_subset(a, b));
  }

  {
    std::vector<int> a = {4, 2, 1};
    std::vector<int> b = {3, 1};
    REQUIRE(false == vector_util<int>::is_subset(a, b));
  }

  {
    std::vector<int> a = {4, 2, 1};
    std::vector<int> b = {1, 4, 2, 3};

    // ordering matters because a is the subet
    REQUIRE(false == vector_util<int>::is_subset(a, b));
    REQUIRE(true == vector_util<int>::is_subset(b, a));
  }
}
