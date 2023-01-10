#include "../src/simulated_memory.hpp"
#include "../src/ace_type.hpp"
#include "../third_party/catch.hpp"
#include "limits.h"

TEST_CASE("get_addr_start_and_end", "[simulated_memory]") {
  // =============== test element size with known type ==========
  {
    Simulated_Memory<int> mem = Simulated_Memory<int>(1000, sizeof(int));
    REQUIRE(1000 * sizeof(int) == (mem.get_addr_end() - mem.get_addr_start()));
  }

  {
    Simulated_Memory<short> mem = Simulated_Memory<short>(0, sizeof(short));
    REQUIRE(0 == (mem.get_addr_end() - mem.get_addr_start()));
  }

  {
    Simulated_Memory<short> mem = Simulated_Memory<short>(3000, sizeof(short));
    REQUIRE(3000 * sizeof(short) ==
            (mem.get_addr_end() - mem.get_addr_start()));
  }

  {
    Simulated_Memory<ULL> mem = Simulated_Memory<ULL>(666, sizeof(ULL));
    REQUIRE(666 * sizeof(ULL) == (mem.get_addr_end() - mem.get_addr_start()));
  }

  // =============================================================
  // when allocting more for each elmement

  {
    Simulated_Memory<short> mem = Simulated_Memory<short>(10, 100);
    REQUIRE(10 * 100 == (mem.get_addr_end() - mem.get_addr_start()));
  }

  {
    Simulated_Memory<short> mem = Simulated_Memory<short>(66, 10);
    REQUIRE(66 * 10 == (mem.get_addr_end() - mem.get_addr_start()));
  }

  {
    Simulated_Memory<short> mem = Simulated_Memory<short>(0, 1000);
    REQUIRE(0 == (mem.get_addr_end() - mem.get_addr_start()));
  }

  {
    Simulated_Memory<ULL> mem = Simulated_Memory<ULL>(100, 10);
    REQUIRE(100 * 10 == (mem.get_addr_end() - mem.get_addr_start()));
  }
}
TEST_CASE("is_index_overbound", "[simulated_memory]") {

  {
    Simulated_Memory<int> mem = Simulated_Memory<int>(1000, sizeof(int));
    REQUIRE(false == mem.is_index_overbound(0));
    REQUIRE(false == mem.is_index_overbound(666));
    REQUIRE(false == mem.is_index_overbound(999));

    REQUIRE(true == mem.is_index_overbound(-1));
    REQUIRE(true == mem.is_index_overbound(-5));
    REQUIRE(true == mem.is_index_overbound(1000));
    REQUIRE(true == mem.is_index_overbound(1001));
  }

  {
    Simulated_Memory<long> mem =
        Simulated_Memory<long>(1000, sizeof(long) + 10);

    REQUIRE(false == mem.is_index_overbound(0));
    REQUIRE(false == mem.is_index_overbound(666));
    REQUIRE(false == mem.is_index_overbound(999));

    REQUIRE(true == mem.is_index_overbound(-1));
    REQUIRE(true == mem.is_index_overbound(-5));
    REQUIRE(true == mem.is_index_overbound(1000));
    REQUIRE(true == mem.is_index_overbound(1001));
  }
}
TEST_CASE("set_and_get__int", "[simulated_memory]") {
  Simulated_Memory<int> mem = Simulated_Memory<int>(1000, sizeof(int) + 10);

  mem.set_value_at_idx(INT_MAX, 0);
  REQUIRE(INT_MAX == mem.get_value_at_idx(0));

  mem.set_value_at_idx(666, 3);
  REQUIRE(666 == mem.get_value_at_idx(3));

  mem.set_value_at_idx(777, 3);
  REQUIRE(777 == mem.get_value_at_idx(3));

  mem.set_value_at_idx(INT_MIN, 999);
  REQUIRE(INT_MIN == mem.get_value_at_idx(999));

  mem.set_value_at_idx(100, 3);
  REQUIRE(100 == mem.get_value_at_idx(3));
}

TEST_CASE("set_and_get__ULL", "[simulated_memory]") {
  Simulated_Memory<ULL> mem = Simulated_Memory<ULL>(1000, sizeof(ULL) + 100);

  mem.set_value_at_idx(ULLONG_MAX, 0);
  REQUIRE(ULLONG_MAX == mem.get_value_at_idx(0));

  mem.set_value_at_idx(ULLONG_MAX - 1, 3);
  REQUIRE(ULLONG_MAX - 1 == mem.get_value_at_idx(3));

  mem.set_value_at_idx(ULLONG_MAX - 1, 3);
  REQUIRE(ULLONG_MAX - 1 == mem.get_value_at_idx(3));

  mem.set_value_at_idx((ULL)-1, 999);
  REQUIRE((ULL)-1 == mem.get_value_at_idx(999));
}

TEST_CASE("set_and_get__LL", "[simulated_memory]") {
  Simulated_Memory<LL> mem = Simulated_Memory<LL>(1000, sizeof(LL) + 30);

  mem.set_value_at_idx(LLONG_MAX, 0);
  REQUIRE(LLONG_MAX == mem.get_value_at_idx(0));

  mem.set_value_at_idx(LLONG_MIN, 3);
  REQUIRE(LLONG_MIN == mem.get_value_at_idx(3));

  mem.set_value_at_idx(LLONG_MIN + 10, 3);
  REQUIRE(LLONG_MIN + 10 == mem.get_value_at_idx(3));

  mem.set_value_at_idx(-1, 999);
  REQUIRE(-1 == mem.get_value_at_idx(999));
}

TEST_CASE("int_get_ptr_of_value_at_i", "[simulated_memory]") {
  Simulated_Memory<int> mem = Simulated_Memory<int>(1000, sizeof(int));

  {
    mem.set_value_at_idx(100, 3);

    int *ptr = mem.get_ptr_of_value_at_i(3);
    *ptr = 30;
    REQUIRE(30 == mem.get_value_at_idx(3));
  }

  {
    mem.set_value_at_idx(666, 0);

    int *ptr = mem.get_ptr_of_value_at_i(0);
    *ptr = 7;
    REQUIRE(7 == mem.get_value_at_idx(0));
  }

  {
    mem.set_value_at_idx(123, 999);
    REQUIRE(123 == mem.get_value_at_idx(999));

    int *ptr = mem.get_ptr_of_value_at_i(999);
    *ptr = 6;
    REQUIRE(6 == mem.get_value_at_idx(999));
  }

  {
    mem.set_value_at_idx(INT_MAX, 999);

    int *ptr = mem.get_ptr_of_value_at_i(999);

    *ptr = 123;
    REQUIRE(123 == mem.get_value_at_idx(999));
  }
}

TEST_CASE("LL_get_ptr_of_value_at_i", "[simulated_memory]") {
  Simulated_Memory<LL> mem = Simulated_Memory<LL>(1000, sizeof(LL));

  {
    mem.set_value_at_idx(100, 3);

    LL *ptr = mem.get_ptr_of_value_at_i(3);
    *ptr = 30;
    REQUIRE(30 == mem.get_value_at_idx(3));
  }

  {
    mem.set_value_at_idx(666, 0);

    LL *ptr = mem.get_ptr_of_value_at_i(0);
    *ptr = 7;
    REQUIRE(7 == mem.get_value_at_idx(0));
  }

  {
    mem.set_value_at_idx(123, 999);
    REQUIRE(123 == mem.get_value_at_idx(999));

    LL *ptr = mem.get_ptr_of_value_at_i(999);
    *ptr = LLONG_MIN;
    REQUIRE(LLONG_MIN == mem.get_value_at_idx(999));
  }

  {
    mem.set_value_at_idx(INT_MAX, 999);

    LL *ptr = mem.get_ptr_of_value_at_i(999);

    *ptr = LLONG_MAX;
    REQUIRE(LLONG_MAX == mem.get_value_at_idx(999));
  }
}

TEST_CASE("do_action", "[simulated_memory]") {

  Simulated_Memory<LL> mem = Simulated_Memory<LL>(1000, sizeof(LL) + 100);

  {
    mem.set_value_at_idx(777, 2);
    mem.do_action_at_idx(2, E_mem_action::increment);

    REQUIRE(778 == mem.get_value_at_idx(2));
  }

  {
    mem.set_value_at_idx(123, 0);
    mem.do_action_at_idx(0, E_mem_action::decrement);

    REQUIRE(122 == mem.get_value_at_idx(0));
  }

  {
    mem.set_value_at_idx(123, 0);
    mem.do_action_at_idx(0, E_mem_action::decrement);
    mem.do_action_at_idx(0, E_mem_action::decrement);
    mem.do_action_at_idx(0, E_mem_action::decrement);

    REQUIRE(120 == mem.get_value_at_idx(0));
  }

  {
    mem.set_value_at_idx(777, 2);
    mem.do_action_at_idx(2, E_mem_action::increment);
    mem.do_action_at_idx(2, E_mem_action::decrement);

    REQUIRE(777 == mem.get_value_at_idx(2));
  }
}

TEST_CASE("do_actions_at_indexes", "[simulated_memory]") {

  Simulated_Memory<LL> mem = Simulated_Memory<LL>(1000, sizeof(LL) + 100);
  {
    mem.set_value_at_idx(9, 0);
    mem.set_value_at_idx(10, 1);
    mem.set_value_at_idx(11, 2);
    mem.do_actions_at_indexes(std::vector<size_t>({0, 1, 2}),
                              E_mem_action::increment);
    REQUIRE(10 == mem.get_value_at_idx(0));
    REQUIRE(11 == mem.get_value_at_idx(1));
    REQUIRE(12 == mem.get_value_at_idx(2));
  }

  {
    std::vector<size_t> at_indexes = std::vector<size_t>({4, 5, 6});
    mem.set_value_at_idx(666, at_indexes[0]);
    mem.set_value_at_idx(777, at_indexes[1]);
    mem.set_value_at_idx(888, at_indexes[2]);

    mem.do_actions_at_indexes(at_indexes, E_mem_action::increment);
    mem.do_actions_at_indexes(at_indexes, E_mem_action::increment);

    REQUIRE(668 == mem.get_value_at_idx(at_indexes[0]));
    REQUIRE(779 == mem.get_value_at_idx(at_indexes[1]));
    REQUIRE(890 == mem.get_value_at_idx(at_indexes[2]));
  }

  {
    std::vector<size_t> at_indexes = std::vector<size_t>({4, 5, 6});
    mem.set_value_at_idx(666, at_indexes[0]);
    mem.set_value_at_idx(777, at_indexes[1]);
    mem.set_value_at_idx(888, at_indexes[2]);

    mem.do_actions_at_indexes(at_indexes, E_mem_action::increment);
    mem.do_actions_at_indexes(at_indexes, E_mem_action::increment);
    mem.do_actions_at_indexes(at_indexes, E_mem_action::decrement);

    REQUIRE(667 == mem.get_value_at_idx(at_indexes[0]));
    REQUIRE(778 == mem.get_value_at_idx(at_indexes[1]));
    REQUIRE(889 == mem.get_value_at_idx(at_indexes[2]));
  }

  {
    std::vector<size_t> at_indexes = std::vector<size_t>({4, 5, 6});
    mem.set_value_at_idx(666, at_indexes[0]);
    mem.set_value_at_idx(777, at_indexes[1]);
    mem.set_value_at_idx(888, at_indexes[2]);

    mem.do_actions_at_indexes(at_indexes, E_mem_action::decrement);
    mem.do_actions_at_indexes(at_indexes, E_mem_action::decrement);
    mem.do_actions_at_indexes(at_indexes, E_mem_action::decrement);

    REQUIRE(663 == mem.get_value_at_idx(at_indexes[0]));
    REQUIRE(774 == mem.get_value_at_idx(at_indexes[1]));
    REQUIRE(885 == mem.get_value_at_idx(at_indexes[2]));
  }
}
