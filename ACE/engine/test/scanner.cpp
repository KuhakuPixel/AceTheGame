#include "ACE/scanner.hpp"
#include "../third_party/catch.hpp"
#include "ACE/endian.hpp"
#include "ACE/error.hpp"
#include "ACE/file_utils.hpp"
#include "ACE/str_utils.hpp"
#include "mock_program_controller.hpp"
#include <limits.h>
#include <list>
#include <stdlib.h>
#include <unistd.h> // for getpid

auto on_progress = [](size_t current, size_t max) {
  printf("%zu/%zu\n", current, max);
};

TEST_CASE("set_scan_level", "[scanner]") {
  int current_pid = getpid();
  auto on_scan_progress = [](size_t current, size_t max) {};
  {
    ACE_scanner<int> scanner = ACE_scanner<int>(current_pid, on_scan_progress);

    //
    scanner.set_scan_level(Scan_Utils::E_scan_level::aligned_only);
    REQUIRE(sizeof(int) == scanner.get_scan_step_size());
    REQUIRE(Scan_Utils::E_scan_level::aligned_only == scanner.get_scan_level());

    //
    scanner.set_scan_level(Scan_Utils::E_scan_level::all);
    REQUIRE(1 == scanner.get_scan_step_size());
    REQUIRE(Scan_Utils::E_scan_level::all == scanner.get_scan_level());

    //
    scanner.set_scan_level(Scan_Utils::E_scan_level::aligned_only);
    REQUIRE(sizeof(int) == scanner.get_scan_step_size());
    REQUIRE(Scan_Utils::E_scan_level::aligned_only == scanner.get_scan_level());

    //
    scanner.set_scan_level(Scan_Utils::E_scan_level::all);
    REQUIRE(1 == scanner.get_scan_step_size());
    REQUIRE(Scan_Utils::E_scan_level::all == scanner.get_scan_level());
  }

  {
    ACE_scanner<short> scanner =
        ACE_scanner<short>(current_pid, on_scan_progress);

    //
    scanner.set_scan_level(Scan_Utils::E_scan_level::aligned_only);
    REQUIRE(sizeof(short) == scanner.get_scan_step_size());
    REQUIRE(Scan_Utils::E_scan_level::aligned_only == scanner.get_scan_level());

    //
    scanner.set_scan_level(Scan_Utils::E_scan_level::all);
    REQUIRE(1 == scanner.get_scan_step_size());
    REQUIRE(Scan_Utils::E_scan_level::all == scanner.get_scan_level());

    //
    scanner.set_scan_level(Scan_Utils::E_scan_level::aligned_only);
    REQUIRE(sizeof(short) == scanner.get_scan_step_size());
    REQUIRE(Scan_Utils::E_scan_level::aligned_only == scanner.get_scan_level());

    //
    scanner.set_scan_level(Scan_Utils::E_scan_level::all);
    REQUIRE(1 == scanner.get_scan_step_size());
    REQUIRE(Scan_Utils::E_scan_level::all == scanner.get_scan_level());
  }

  {
    ACE_scanner<byte> scanner =
        ACE_scanner<byte>(current_pid, on_scan_progress);

    //
    scanner.set_scan_level(Scan_Utils::E_scan_level::aligned_only);
    REQUIRE(sizeof(byte) == scanner.get_scan_step_size());
    REQUIRE(Scan_Utils::E_scan_level::aligned_only == scanner.get_scan_level());

    //
    scanner.set_scan_level(Scan_Utils::E_scan_level::all);
    REQUIRE(1 == scanner.get_scan_step_size());
    REQUIRE(Scan_Utils::E_scan_level::all == scanner.get_scan_level());

    //
    scanner.set_scan_level(Scan_Utils::E_scan_level::aligned_only);
    REQUIRE(sizeof(byte) == scanner.get_scan_step_size());
    REQUIRE(Scan_Utils::E_scan_level::aligned_only == scanner.get_scan_level());

    //
    scanner.set_scan_level(Scan_Utils::E_scan_level::all);
    REQUIRE(1 == scanner.get_scan_step_size());
    REQUIRE(Scan_Utils::E_scan_level::all == scanner.get_scan_level());
  }
}
// ========================================= scan test
// =================================

TEST_CASE("int_scan_1", "[scanner]") {

  const int INT_VAL_TO_FIND = 1234567;
  mock_program_controller<int> tester =
      mock_program_controller<int>(1000, INT_VAL_TO_FIND);

  ACE_scanner<int> scanner =
      ACE_scanner<int>(tester.get_prog_pid(), on_progress);

  tester.setup_val_to_find(0);
  tester.setup_val_to_find(666);
  tester.setup_val_to_find(999);

  scanner.new_scan_multiple(Scan_Utils::E_operator_type::equal,
                            INT_VAL_TO_FIND);

  tester.increment_setupped_val(+1);
  scanner.next_scan(Scan_Utils::E_operator_type::equal, INT_VAL_TO_FIND + 1);

  tester.increment_setupped_val(+1);
  scanner.next_scan(Scan_Utils::E_operator_type::equal, INT_VAL_TO_FIND + 2);

  std::vector<std::string> found_addresses = scanner.get_matches_addresses();
  REQUIRE(found_addresses.size() == 3);
  REQUIRE(tester.get_expected_found_addresses() == found_addresses);
}

TEST_CASE("int_scan_2", "[scanner]") {

  const int INT_VAL_TO_FIND = 1234567;

  mock_program_controller<int> tester =
      mock_program_controller<int>(10000, INT_VAL_TO_FIND);

  ACE_scanner<int> scanner =
      ACE_scanner<int>(tester.get_prog_pid(), on_progress);

  tester.setup_val_to_find(0);
  tester.setup_val_to_find(6666);
  tester.setup_val_to_find(9996);
  tester.setup_val_to_find(9997);
  tester.setup_val_to_find(9998);
  tester.setup_val_to_find(9999);
  tester.setup_val_to_find(999);

  //
  scanner.new_scan_multiple(Scan_Utils::E_operator_type::equal,
                            INT_VAL_TO_FIND);
  scanner.next_scan(Scan_Utils::E_operator_type::equal, INT_VAL_TO_FIND);

  tester.increment_setupped_val(-1);
  scanner.next_scan(Scan_Utils::E_operator_type::equal, INT_VAL_TO_FIND - 1);

  tester.increment_setupped_val(-1);
  scanner.next_scan(Scan_Utils::E_operator_type::equal, INT_VAL_TO_FIND - 2);
  // assert
  std::vector<std::string> found_addresses = scanner.get_matches_addresses();
  REQUIRE(found_addresses.size() == 7);
  REQUIRE_THAT(tester.get_expected_found_addresses(),
               Catch::UnorderedEquals(found_addresses));
}

TEST_CASE("short_scan_0", "[scanner]") {

  const short VAL_TO_FIND = SHRT_MAX;

  mock_program_controller<short> tester =
      mock_program_controller<short>(10000, VAL_TO_FIND);

  ACE_scanner<short> scanner =
      ACE_scanner<short>(tester.get_prog_pid(), on_progress);

  tester.setup_val_to_find(0);
  tester.setup_val_to_find(9999);

  //
  scanner.new_scan_multiple(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

  tester.increment_setupped_val(-1);
  scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND - 1);

  tester.increment_setupped_val(-1);
  scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND - 2);

  // assert
  std::vector<std::string> found_addresses = scanner.get_matches_addresses();
  REQUIRE(found_addresses.size() == 2);
  REQUIRE_THAT(tester.get_expected_found_addresses(),
               Catch::UnorderedEquals(found_addresses));
}

TEST_CASE("short_scan_1", "[scanner]") {

  const short VAL_TO_FIND = SHRT_MAX;

  {

    mock_program_controller<short> tester =
        mock_program_controller<short>(241234, VAL_TO_FIND);

    ACE_scanner<short> scanner =
        ACE_scanner<short>(tester.get_prog_pid(), on_progress);
    tester.setup_val_to_find(0);
    tester.setup_val_to_find(1);
    tester.setup_val_to_find(2);
    tester.setup_val_to_find(3);
    tester.setup_val_to_find(666);
    tester.setup_val_to_find(9999);

    //
    scanner.new_scan_multiple(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    tester.increment_setupped_val(-1);
    scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND - 1);

    tester.increment_setupped_val(-1);
    scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND - 2);
    // assert
    std::vector<std::string> found_addresses = scanner.get_matches_addresses();
    REQUIRE(found_addresses.size() == 6);
    REQUIRE_THAT(tester.get_expected_found_addresses(),
                 Catch::UnorderedEquals(found_addresses));
  }
}

TEST_CASE("new_scan_not_equal", "[scanner]") {

  const short VAL_TO_FIND = 123;

  {
    mock_program_controller<short> tester =
        mock_program_controller<short>(1000, VAL_TO_FIND);

    ACE_scanner<short> scanner =
        ACE_scanner<short>(tester.get_prog_pid(), on_progress);

    tester.setup_val_to_find(0);
    tester.setup_val_to_find(1);
    tester.setup_val_to_find(2);
    tester.setup_val_to_find(3);
    tester.setup_val_to_find(666);
    tester.setup_val_to_find(999);

    //
    scanner.new_scan_multiple(Scan_Utils::E_operator_type::not_equal, 0);

    tester.increment_setupped_val(+1);
    scanner.next_scan(Scan_Utils::E_operator_type::not_equal);

    //
    scanner.next_scan(Scan_Utils::E_operator_type::equal);

    tester.increment_setupped_val(+1);
    scanner.next_scan(Scan_Utils::E_operator_type::not_equal);

    tester.increment_setupped_val(+1);
    scanner.next_scan(Scan_Utils::E_operator_type::greater);

    tester.increment_setupped_val(+1);
    scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND + 4);

    tester.increment_setupped_val(-1);
    scanner.next_scan(Scan_Utils::E_operator_type::less);

    // assert
    std::vector<std::string> found_addresses = scanner.get_matches_addresses();
    REQUIRE(found_addresses.size() == 6);
    REQUIRE_THAT(tester.get_expected_found_addresses(),
                 Catch::UnorderedEquals(found_addresses));

    //
    // assert
    scanner.next_scan(Scan_Utils::E_operator_type::less);
    // shouldn't find anything because we scan for value that is decreased
    // but the value still stays the same
    found_addresses = scanner.get_matches_addresses();
    REQUIRE(found_addresses.size() == 0);
  }
}

TEST_CASE("action_decimal", "[scanner]") {

  {

    float VAL_TO_FIND = 0.12;

    mock_program_controller<float> tester =
        mock_program_controller<float>(1000, VAL_TO_FIND);

    ACE_scanner<float> scanner =
        ACE_scanner<float>(tester.get_prog_pid(), on_progress);

    tester.setup_val_to_find(666);

    scanner.new_scan_multiple(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    tester.increment_setupped_val(1);

    tester.increment_setupped_val(1);

    tester.increment_setupped_val(1);

    scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND + 3);
    // assert
    std::vector<std::string> found_addresses = scanner.get_matches_addresses();
    REQUIRE(found_addresses.size() == 1);
    REQUIRE_THAT(tester.get_expected_found_addresses(),
                 Catch::UnorderedEquals(found_addresses));
  }

  {

    float VAL_TO_FIND = 0.12;

    mock_program_controller<float> tester =
        mock_program_controller<float>(10000, VAL_TO_FIND);

    ACE_scanner<float> scanner =
        ACE_scanner<float>(tester.get_prog_pid(), on_progress);

    tester.setup_val_to_find(0);
    tester.setup_val_to_find(666);
    tester.setup_val_to_find(667);

    scanner.new_scan_multiple(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    tester.increment_setupped_val(1);

    // setupped value should now be equal
    // to [VAL_TO_FIND]
    tester.increment_setupped_val(-1);

    scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    std::vector<std::string> found_addresses = scanner.get_matches_addresses();
    REQUIRE(found_addresses.size() == 3);
    REQUIRE_THAT(tester.get_expected_found_addresses(),
                 Catch::UnorderedEquals(found_addresses));

    REQUIRE(tester.get_expected_found_addresses() == found_addresses);

    // shouldn't find anything
    // since value has been incremented
    // but we still scan for 0.12, which by now should
    // be 1.12
    tester.increment_setupped_val(1);
    scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    REQUIRE(0 == scanner.get_matches_addresses().size());
  }
}

TEST_CASE("next_scan_not_equal", "[scanner]") {

  short VAL_TO_FIND = 0;
  {

    mock_program_controller<short> tester =
        mock_program_controller<short>(10000, VAL_TO_FIND);

    ACE_scanner<short> scanner =
        ACE_scanner<short>(tester.get_prog_pid(), on_progress);

    tester.setup_val_to_find(0);
    tester.setup_val_to_find(666);
    tester.setup_val_to_find(1000);
    tester.setup_val_to_find(9999);
    scanner.new_scan_multiple(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    //
    tester.increment_setupped_val(1);
    scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND + 1);

    //
    tester.increment_setupped_val(-1);
    scanner.next_scan(Scan_Utils::E_operator_type::not_equal);
    //
    tester.increment_setupped_val(1);
    scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND + 1);

    tester.increment_setupped_val(1);
    scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND + 2);

    // assert
    std::vector<std::string> found_addresses = scanner.get_matches_addresses();
    REQUIRE(scanner.get_matches_addresses().size() == 4);
    REQUIRE_THAT(tester.get_expected_found_addresses(),
                 Catch::UnorderedEquals(found_addresses));
  }
}

TEST_CASE("update_current_scan_result", "[scanner]") {

  short VAL_TO_FIND = 0;
  {
    mock_program_controller<short> tester =
        mock_program_controller<short>(10000, VAL_TO_FIND);

    ACE_scanner<short> scanner =
        ACE_scanner<short>(tester.get_prog_pid(), on_progress);

    /*
     * filter to narrow down values
     * */
    tester.setup_val_to_find(666);

    scanner.new_scan_multiple(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    tester.increment_setupped_val(1);
    scanner.next_scan(Scan_Utils::E_operator_type::greater);

    scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND + 1);

    tester.increment_setupped_val(1);
    scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND + 2);

    std::vector<std::string> found_addresses = scanner.get_matches_addresses();
    REQUIRE(found_addresses.size() == 1);

    // update current scan value
    tester.increment_setupped_val(1);
    tester.increment_setupped_val(1);
    scanner.update_current_scan_result();
    //
    std::vector<struct Scan_Utils::addr_and_value<short>> current_scan_res =
        scanner.get_current_scan_result_as_vector();
    REQUIRE(current_scan_res.size() == 1);
    // incremented by 4 so final value should be VAL_TO_FIND + 4
    REQUIRE(current_scan_res[0].value == VAL_TO_FIND + 4);
  }

  {
    mock_program_controller<short> tester =
        mock_program_controller<short>(10000, VAL_TO_FIND);

    ACE_scanner<short> scanner =
        ACE_scanner<short>(tester.get_prog_pid(), on_progress);

    /*
     * filter to narrow down values
     * */
    tester.setup_val_to_find(666);

    scanner.new_scan_multiple(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    tester.increment_setupped_val(1);
    scanner.next_scan(Scan_Utils::E_operator_type::greater);

    scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND + 1);

    tester.increment_setupped_val(1);
    scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND + 2);

    // update current scan value
    tester.increment_setupped_val(-1);
    tester.increment_setupped_val(-1);
    tester.increment_setupped_val(1);
    scanner.update_current_scan_result();

    //
    std::vector<struct Scan_Utils::addr_and_value<short>> current_scan_res =
        scanner.get_current_scan_result_as_vector();
    REQUIRE(current_scan_res.size() == 1);

    /*
     * value should be one
     * since we increment 3 times and
     * decrement 2 times as well
     * */
    REQUIRE(current_scan_res[0].value == VAL_TO_FIND + 1);
  }
}

TEST_CASE("long_scan_1", "[scanner]") {

  long VAL_TO_FIND = LONG_MIN;

  mock_program_controller<long> tester =
      mock_program_controller<long>(1000, VAL_TO_FIND);

  ACE_scanner<long> scanner =
      ACE_scanner<long>(tester.get_prog_pid(), on_progress);

  tester.setup_val_to_find(0);
  tester.setup_val_to_find(665);
  tester.setup_val_to_find(666);
  tester.setup_val_to_find(667);
  tester.setup_val_to_find(999);

  //
  scanner.new_scan_multiple(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

  tester.increment_setupped_val(1);
  scanner.next_scan(Scan_Utils::E_operator_type::greater);

  tester.increment_setupped_val(1);
  scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND + 2);

  // assert
  std::vector<std::string> found_addresses = scanner.get_matches_addresses();
  REQUIRE(found_addresses.size() == 5);
  REQUIRE_THAT(tester.get_expected_found_addresses(),
               Catch::UnorderedEquals(found_addresses));
}

TEST_CASE("long_scan_2", "[scanner]") {

  long VAL_TO_FIND = LONG_MAX;

  mock_program_controller<long> tester =
      mock_program_controller<long>(1000, VAL_TO_FIND);

  ACE_scanner<long> scanner =
      ACE_scanner<long>(tester.get_prog_pid(), on_progress);

  tester.setup_val_to_find(0);
  tester.setup_val_to_find(665);
  tester.setup_val_to_find(666);
  tester.setup_val_to_find(667);
  tester.setup_val_to_find(999);

  //
  scanner.new_scan_multiple(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

  tester.increment_setupped_val(-1);
  scanner.next_scan(Scan_Utils::E_operator_type::less);

  tester.increment_setupped_val(-1);
  scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND - 2);

  // assert
  std::vector<std::string> found_addresses = scanner.get_matches_addresses();
  REQUIRE(found_addresses.size() == 5);
  REQUIRE_THAT(tester.get_expected_found_addresses(),
               Catch::UnorderedEquals(found_addresses));
}

TEST_CASE("unknown_initial_value_scan", "[scanner]") {

  long VAL_TO_FIND = LONG_MAX;

  mock_program_controller<long> tester =
      mock_program_controller<long>(1000, VAL_TO_FIND);

  ACE_scanner<long> scanner =
      ACE_scanner<long>(tester.get_prog_pid(), on_progress);

  tester.setup_val_to_find(0);
  tester.setup_val_to_find(665);
  tester.setup_val_to_find(666);
  tester.setup_val_to_find(667);
  tester.setup_val_to_find(999);

  //
  scanner.new_scan_multiple(Scan_Utils::E_operator_type::unknown, 0);

  tester.increment_setupped_val(-1);
  scanner.next_scan(Scan_Utils::E_operator_type::not_equal);
  scanner.next_scan(Scan_Utils::E_operator_type::equal);

  tester.increment_setupped_val(-1);
  scanner.next_scan(Scan_Utils::E_operator_type::not_equal);
  scanner.next_scan(Scan_Utils::E_operator_type::equal);

  tester.increment_setupped_val(+1);
  scanner.next_scan(Scan_Utils::E_operator_type::not_equal);
  scanner.next_scan(Scan_Utils::E_operator_type::equal);

  tester.increment_setupped_val(+1);
  scanner.next_scan(Scan_Utils::E_operator_type::greater);

  tester.increment_setupped_val(-1);
  scanner.next_scan(Scan_Utils::E_operator_type::less);
  //
  scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND - 1);

  // assert
  std::vector<std::string> found_addresses = scanner.get_matches_addresses();
  REQUIRE(found_addresses.size() == 5);
  REQUIRE_THAT(tester.get_expected_found_addresses(),
               Catch::UnorderedEquals(found_addresses));
}

TEST_CASE("scan_stress_test", "[scanner]") {
  size_t arr_mem_length = 100000000;

  const long VAL_TO_FIND = LONG_MAX;

  mock_program_controller<long> tester =
      mock_program_controller<long>(arr_mem_length, VAL_TO_FIND);

  ACE_scanner<long> scanner =
      ACE_scanner<long>(tester.get_prog_pid(), on_progress);

  tester.setup_val_to_find(0);
  tester.setup_val_to_find(666);
  tester.setup_val_to_find(999);

  tester.setup_val_to_find(4234317);
  tester.setup_val_to_find(4234318);
  tester.setup_val_to_find(4234319);
  tester.setup_val_to_find(4234320);

  // set value at the end of the array
  tester.setup_val_to_find(arr_mem_length - 1);
  tester.setup_val_to_find(arr_mem_length - 2);
  tester.setup_val_to_find(arr_mem_length - 3);

  //
  scanner.new_scan_multiple(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);
  scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

  tester.increment_setupped_val(-1);
  scanner.next_scan(Scan_Utils::E_operator_type::less);

  tester.increment_setupped_val(-1);
  scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND - 2);
  // assert
  std::vector<std::string> found_addresses = scanner.get_matches_addresses();
  REQUIRE(found_addresses.size() == 10);
  REQUIRE_THAT(tester.get_expected_found_addresses(),
               Catch::UnorderedEquals(found_addresses));
}

TEST_CASE("scanner.write_val_to_current_scan_results", "[scanner]") {

  /*
   * scan and find value, write to it and check if it has been written
   * */

  const short VAL_TO_FIND = 0;

  mock_program_controller<short> tester =
      mock_program_controller<short>(1000, VAL_TO_FIND);

  ACE_scanner<short> scanner =
      ACE_scanner<short>(tester.get_prog_pid(), on_progress);

  tester.setup_val_to_find(666);

  scanner.new_scan_multiple(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

  tester.increment_setupped_val(1);
  scanner.next_scan(Scan_Utils::E_operator_type::greater);
  scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND + 1);

  tester.increment_setupped_val(1);
  scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND + 2);

  // write and check if it has been written
  // and we still got 1 match when we find "= 999"
  scanner.write_val_to_current_scan_results(999);
  scanner.next_scan(Scan_Utils::E_operator_type::equal, 999);
  // check if it has been written
  std::vector<struct Scan_Utils::addr_and_value<short>> current_scan_res =
      scanner.get_current_scan_result_as_vector();
  REQUIRE(1 == current_scan_res.size());
  REQUIRE(999 == current_scan_res[0].value);
}

TEST_CASE("reverse_endian_scan", "[scanner]") {
  /*
   * test the scanner for finding reversed endian value
   * by setting up a value whose endian has been swapped
   * */

  {

    const short VAL_TO_FIND = 123;

    mock_program_controller<short> tester =
        mock_program_controller<short>(1000, swap_endian<short>(VAL_TO_FIND));

    ACE_scanner<short> scanner =
        ACE_scanner<short>(tester.get_prog_pid(), on_progress);

    scanner.set_endian_scan_type(E_endian_scan_type::swapped);

    tester.setup_val_to_find(999);

    //
    scanner.new_scan_multiple(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);
    scanner.next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    tester.increment_setupped_val(swap_endian<short>(-1));
    scanner.next_scan(Scan_Utils::E_operator_type::not_equal);

    tester.increment_setupped_val(swap_endian<short>(-1));
    scanner.next_scan(Scan_Utils::E_operator_type::not_equal);
    scanner.next_scan(Scan_Utils::E_operator_type::equal);

    // assert
    std::vector<std::string> found_addresses = scanner.get_matches_addresses();
    REQUIRE(found_addresses.size() == 1);
    REQUIRE_THAT(tester.get_expected_found_addresses(),
                 Catch::UnorderedEquals(found_addresses));
  }
}
