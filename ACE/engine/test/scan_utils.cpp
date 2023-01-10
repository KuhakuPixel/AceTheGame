#include "../src/scan_utils.hpp"
#include "../third_party/catch.hpp"

TEST_CASE("get_nearest_aligned_addr", "[scanner]") {

  { REQUIRE(0x0 == Scan_Utils::get_nearest_aligned_addr(0x0, sizeof(int))); }

  /*
   * test by finding the [next_aligned] using a
   * while loop,
   *
   * and test from [base_addr] to [next_alligned] (inclusive) with
   * Scan_Utils::get_nearest_aligned_addr
   * each of the address should all return [next_alligned]
   * */
  {
    ADDR base_addr = 0x1;

    ADDR next_alligned = base_addr;
    while (next_alligned % sizeof(int) != 0)
      next_alligned++;

    for (ADDR i = base_addr; i <= next_alligned; i++) {
      REQUIRE(next_alligned ==
              Scan_Utils::get_nearest_aligned_addr(i, sizeof(int)));
    }
  }

  {
    ADDR base_addr = 0x5;

    ADDR next_alligned = base_addr;
    while (next_alligned % sizeof(short) != 0)
      next_alligned++;

    for (ADDR i = base_addr; i <= next_alligned; i++) {
      REQUIRE(next_alligned ==
              Scan_Utils::get_nearest_aligned_addr(i, sizeof(short)));
    }
  }

  {
    ADDR base_addr = 0x1203;

    ADDR next_alligned = base_addr;
    while (next_alligned % sizeof(long) != 0)
      next_alligned++;

    for (ADDR i = base_addr; i <= next_alligned; i++) {
      REQUIRE(next_alligned ==
              Scan_Utils::get_nearest_aligned_addr(i, sizeof(long)));
    }
  }

  {
    ADDR base_addr = 0x5;

    ADDR next_alligned = base_addr;
    while (next_alligned % sizeof(short) != 0)
      next_alligned++;

    // should return self if it is already aligned
    REQUIRE(next_alligned ==
            Scan_Utils::get_nearest_aligned_addr(next_alligned, sizeof(short)));
  }
}
TEST_CASE("ACE_get_address_iterator_end", "[scanner]") {
  // make sure it works on all
  // different type of pointer
  // we don't want the [catch] framework to derefrence that pointer

  {
    int *addr_itr_end;

    addr_itr_end =
        Scan_Utils::ACE_get_address_iterator_end<int>((byte *)0x3000);
    REQUIRE((ULL)(0x3000 - sizeof(int)) == (ULL)(addr_itr_end));

    addr_itr_end =
        Scan_Utils::ACE_get_address_iterator_end<int>((byte *)0x4000);
    REQUIRE((ULL)(0x4000 - sizeof(int)) == (ULL)(addr_itr_end));

    addr_itr_end = Scan_Utils::ACE_get_address_iterator_end<int>((byte *)0x100);
    REQUIRE((ULL)(0x100 - sizeof(int)) == (ULL)(addr_itr_end));
  }

  {
    byte *addr_itr_end;

    addr_itr_end =
        Scan_Utils::ACE_get_address_iterator_end<byte>((byte *)0x3000);
    REQUIRE((ULL)(0x3000 - sizeof(char)) == (ULL)(addr_itr_end));

    addr_itr_end =
        Scan_Utils::ACE_get_address_iterator_end<byte>((byte *)0x4000);
    REQUIRE((ULL)(0x4000 - sizeof(char)) == (ULL)(addr_itr_end));

    addr_itr_end =
        Scan_Utils::ACE_get_address_iterator_end<byte>((byte *)0x100);
    REQUIRE((ULL)(0x100 - sizeof(char)) == (ULL)(addr_itr_end));
  }

  {
    ULL *addr_itr_end;

    addr_itr_end =
        Scan_Utils::ACE_get_address_iterator_end<ULL>((byte *)0x3000);
    REQUIRE((ULL)(0x3000 - sizeof(ULL)) == (ULL)(addr_itr_end));

    addr_itr_end =
        Scan_Utils::ACE_get_address_iterator_end<ULL>((byte *)0x4000);
    REQUIRE((ULL)(0x4000 - sizeof(ULL)) == (ULL)(addr_itr_end));

    addr_itr_end = Scan_Utils::ACE_get_address_iterator_end<ULL>((byte *)0x100);
    REQUIRE((ULL)(0x100 - sizeof(ULL)) == (ULL)(addr_itr_end));
  }
}

TEST_CASE("Scan_Utils::value_compare", "[scanner]") {

  REQUIRE(true ==
          Scan_Utils::value_compare(3, Scan_Utils::E_filter_type::equal, 3));

  REQUIRE(true ==
          Scan_Utils::value_compare(5, Scan_Utils::E_filter_type::equal, 5));

  REQUIRE(false ==
          Scan_Utils::value_compare(4, Scan_Utils::E_filter_type::equal, 5));

  REQUIRE(true ==
          Scan_Utils::value_compare(4, Scan_Utils::E_filter_type::less, 5));

  REQUIRE(false ==
          Scan_Utils::value_compare(5, Scan_Utils::E_filter_type::less, 4));

  REQUIRE(true ==
          Scan_Utils::value_compare(5, Scan_Utils::E_filter_type::greater, 4));

  REQUIRE(false ==
          Scan_Utils::value_compare(4, Scan_Utils::E_filter_type::greater, 5));

  REQUIRE(true == Scan_Utils::value_compare(
                      4, Scan_Utils::E_filter_type::less_equal, 5));

  REQUIRE(false == Scan_Utils::value_compare(
                       5, Scan_Utils::E_filter_type::less_equal, 4));

  REQUIRE(true == Scan_Utils::value_compare(
                      5, Scan_Utils::E_filter_type::less_equal, 5));

  REQUIRE(false == Scan_Utils::value_compare(
                       6, Scan_Utils::E_filter_type::less_equal, 5));

  REQUIRE(false == Scan_Utils::value_compare(
                       4, Scan_Utils::E_filter_type::greater_equal, 5));

  REQUIRE(true == Scan_Utils::value_compare(
                      5, Scan_Utils::E_filter_type::greater_equal, 4));

  REQUIRE(true == Scan_Utils::value_compare(
                      5, Scan_Utils::E_filter_type::greater_equal, 5));

  REQUIRE(false == Scan_Utils::value_compare(
                       5, Scan_Utils::E_filter_type::greater_equal, 6));

  REQUIRE(true == Scan_Utils::value_compare(
                      -1, Scan_Utils::E_filter_type::not_equal, -4));

  REQUIRE(true == Scan_Utils::value_compare(
                      5, Scan_Utils::E_filter_type::not_equal, 4));

  REQUIRE(true == Scan_Utils::value_compare(
                      4, Scan_Utils::E_filter_type::not_equal, 5));

  REQUIRE(false == Scan_Utils::value_compare(
                       5, Scan_Utils::E_filter_type::not_equal, 5));

  REQUIRE(false == Scan_Utils::value_compare(
                       6, Scan_Utils::E_filter_type::not_equal, 6));
}

TEST_CASE("Scan_Utils::value_compare_decimal", "[scan_utils]") {
  /*
   * test the accuracy of comparing floating points
   * when they are incremented and decremented by the same number
   * even the the value should be equal from and before the operations
   * the value can be different after the increment,decrement process
   * because of inaccuracy of float representation in computer
   * when tolerence level is not taken into account
   * */

  float x = 0.11;
  REQUIRE(true == Scan_Utils::value_compare<float>(
                      x, Scan_Utils::E_filter_type::equal, 0.11));
  x += 1;
  REQUIRE(true == Scan_Utils::value_compare<float>(
                      x, Scan_Utils::E_filter_type::equal, 1.11));

  x -= 1;

  //
  REQUIRE(true == Scan_Utils::value_compare<float>(
                      x, Scan_Utils::E_filter_type::equal, 0.11));

  REQUIRE(true == Scan_Utils::value_compare<float>(
                      x, Scan_Utils::E_filter_type::greater_equal, 0.11));

  REQUIRE(true == Scan_Utils::value_compare<float>(
                      x, Scan_Utils::E_filter_type::less_equal, 0.11));

  //
  REQUIRE(false == Scan_Utils::value_compare<float>(
                       x, Scan_Utils::E_filter_type::not_equal, 0.11));

  REQUIRE(false == Scan_Utils::value_compare<float>(
                       x, Scan_Utils::E_filter_type::greater, 0.11));

  REQUIRE(false == Scan_Utils::value_compare<float>(
                       x, Scan_Utils::E_filter_type::less, 0.11));

  REQUIRE(false == Scan_Utils::value_compare<float>(
                       x, Scan_Utils::E_filter_type::not_equal, 0.11));
  //
  x -= 0.01;
  //
  REQUIRE(false == Scan_Utils::value_compare<float>(
                       x, Scan_Utils::E_filter_type::equal, 0.11));

  REQUIRE(false == Scan_Utils::value_compare<float>(
                       x, Scan_Utils::E_filter_type::greater, 0.11));
  REQUIRE(false == Scan_Utils::value_compare<float>(
                       x, Scan_Utils::E_filter_type::greater_equal, 0.11));

  REQUIRE(true == Scan_Utils::value_compare<float>(
                      x, Scan_Utils::E_filter_type::less, 0.11));

  REQUIRE(true == Scan_Utils::value_compare<float>(
                      x, Scan_Utils::E_filter_type::less_equal, 0.11));

  REQUIRE(true == Scan_Utils::value_compare<float>(
                      x, Scan_Utils::E_filter_type::not_equal, 0.11));
}

TEST_CASE("Scan_Utils::get_last_chunk_read_idx0",
          "[Scan_Utils::get_last_chunk_read_idx]") {

  {
    std::vector<struct Scan_Utils::addr_and_value<int>> array;
    //
    for (int i = 0; i < 100; i++) {
      array.push_back(Scan_Utils::addr_and_value<int>(0xaa0 + i, 1));
    }

    array.push_back(Scan_Utils::addr_and_value<int>(0xfffffff4, 100));

    ssize_t idx = Scan_Utils::get_last_chunk_read_idx<int>(array, 0);
    REQUIRE(99 == idx);
  }

  {
    /*
     * test passing different start index in the same array
     * */
    std::vector<struct Scan_Utils::addr_and_value<int>> array;
    // add first address
    array.push_back(Scan_Utils::addr_and_value<int>(0xaa0, 1));
    // add other addresses
    for (int i = 0; i < 100; i++) {
      array.push_back(Scan_Utils::addr_and_value<int>(0xfff4 + i, 100));
    }

    for (int i = 0; i < 100; i++) {
      array.push_back(Scan_Utils::addr_and_value<int>(0xeeeee4 + i, 100));
    }

    REQUIRE(0 == Scan_Utils::get_last_chunk_read_idx<int>(array, 0));
    // read next
    REQUIRE(100 == Scan_Utils::get_last_chunk_read_idx<int>(array, 1));
    // read next
    REQUIRE(200 == Scan_Utils::get_last_chunk_read_idx<int>(array, 101));
  }

  {
    std::vector<struct Scan_Utils::addr_and_value<int>> array;
    //
    for (int i = 0; i < 1000; i++) {
      array.push_back(Scan_Utils::addr_and_value<int>(0xaa0 + i, 1));
    }

    array.push_back(Scan_Utils::addr_and_value<int>(0xfffffff4, 6666666));

    ssize_t idx = Scan_Utils::get_last_chunk_read_idx<int>(array, 0);
    REQUIRE(999 == idx);
  }

  {
    std::vector<struct Scan_Utils::addr_and_value<int>> array;
    array.push_back(Scan_Utils::addr_and_value<int>(0xaa0, 1));

    ssize_t idx = Scan_Utils::get_last_chunk_read_idx<int>(array, 0);
    REQUIRE(0 == idx);
  }

  // empty
  {
    std::vector<struct Scan_Utils::addr_and_value<int>> array = {};

    ssize_t idx = Scan_Utils::get_last_chunk_read_idx<int>(array, 0);
    REQUIRE(-1 == idx);
  }

  // start index out of bound
  {
    std::vector<struct Scan_Utils::addr_and_value<int>> array;
    array.push_back(Scan_Utils::addr_and_value<int>(0xaa0, 1));

    ssize_t idx = Scan_Utils::get_last_chunk_read_idx<int>(array, 2);
    REQUIRE(-1 == idx);
  }
}

TEST_CASE("Scan_Utils::get_last_chunk_read_idx1",
          "[Scan_Utils::get_last_chunk_read_idx]") {

  {
    std::vector<struct Scan_Utils::addr_and_value<int>> array;
    //
    for (int i = 0; i < 1000; i++) {
      array.push_back(Scan_Utils::addr_and_value<int>(0xaa0 + i, 1));
    }

    for (int i = 0; i < 1000; i++) {
      array.push_back(Scan_Utils::addr_and_value<int>(0xfffffff4 + i, 1));
    }

    ssize_t idx = Scan_Utils::get_last_chunk_read_idx<int>(array, 0);
    REQUIRE(999 == idx);
  }

  {
    std::vector<struct Scan_Utils::addr_and_value<int>> array;
    //
    for (int i = 0; i < 1000; i++) {
      array.push_back(Scan_Utils::addr_and_value<int>(0xaa0 + i, 1));
    }

    for (int i = 0; i < 400; i++) {
      array.push_back(Scan_Utils::addr_and_value<int>(0xfffffff4 + i, 1));
    }

    ssize_t idx = Scan_Utils::get_last_chunk_read_idx<int>(array, 0);
    REQUIRE(999 == idx);
  }

  {
    std::vector<struct Scan_Utils::addr_and_value<int>> array;
    //
    for (int i = 0; i < 1000; i++) {
      array.push_back(Scan_Utils::addr_and_value<int>(0xaa0 + i, 1));
    }

    for (int i = 0; i < 401; i++) {
      array.push_back(Scan_Utils::addr_and_value<int>(0xfffffff4 + i, 1));
    }

    ssize_t idx = Scan_Utils::get_last_chunk_read_idx<int>(array, 0);
    REQUIRE(999 == idx);
  }
}

TEST_CASE("Scan_Utils::filter_str_to_E_filter_type_map", "[scanner]") {

  REQUIRE(1 == Scan_Utils::filter_str_to_E_filter_type_map.count("="));
  REQUIRE(Scan_Utils::E_filter_type::equal ==
          Scan_Utils::filter_str_to_E_filter_type_map.at("="));

  REQUIRE(1 == Scan_Utils::filter_str_to_E_filter_type_map.count(">"));
  REQUIRE(Scan_Utils::E_filter_type::greater ==
          Scan_Utils::filter_str_to_E_filter_type_map.at(">"));

  REQUIRE(1 == Scan_Utils::filter_str_to_E_filter_type_map.count(">="));
  REQUIRE(Scan_Utils::E_filter_type::greater_equal ==
          Scan_Utils::filter_str_to_E_filter_type_map.at(">="));

  REQUIRE(1 == Scan_Utils::filter_str_to_E_filter_type_map.count("<"));
  REQUIRE(Scan_Utils::E_filter_type::less ==
          Scan_Utils::filter_str_to_E_filter_type_map.at("<"));

  REQUIRE(1 == Scan_Utils::filter_str_to_E_filter_type_map.count("<="));
  REQUIRE(Scan_Utils::E_filter_type::less_equal ==
          Scan_Utils::filter_str_to_E_filter_type_map.at("<="));
}
