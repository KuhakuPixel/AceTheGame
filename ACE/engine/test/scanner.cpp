#include "ACE/scanner.hpp"
#include "../third_party/catch.hpp"
#include "ACE/error.hpp"
#include "ACE/file_utils.hpp"
#include "ACE/str_utils.hpp"
#include "scanner_tester.hpp"
#include <limits.h>
#include <list>
#include <stdlib.h>
#include <unistd.h> // for getpid
                    //
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
    ACE_scanner<short> scanner = ACE_scanner<short>(current_pid, on_scan_progress);

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
    ACE_scanner<byte> scanner = ACE_scanner<byte>(current_pid, on_scan_progress);

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

  const char generated_int_data_path[] =
      "test_files/scan_init_files/INT_1000_data";

  const int INT_VAL_TO_FIND = 1234567;

  ScannerTester::ACE_scanner_tester<int> tester =
      ScannerTester::ACE_scanner_tester<int>(
          INT_VAL_TO_FIND, 1000, generated_int_data_path,
          ScannerTester::new_scan_Data_Type::with_generated_val);

  tester.setup_val_to_find(0);
  tester.setup_val_to_find(666);
  tester.setup_val_to_find(999);

  //
  tester.new_scan(Scan_Utils::E_operator_type::equal, INT_VAL_TO_FIND);
  tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                 INT_VAL_TO_FIND);

  std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
  REQUIRE(found_addresses.size() == 3);
  REQUIRE(tester.get_expected_found_addresses() == found_addresses);
}

TEST_CASE("int_scan_2", "[scanner]") {

  const char generated_int_data_path[] =
      "test_files/scan_init_files/INT_1000_data";

  const int INT_VAL_TO_FIND = 1234567;

  ScannerTester::ACE_scanner_tester<int> tester =
      ScannerTester::ACE_scanner_tester<int>(
          INT_VAL_TO_FIND, 1000, generated_int_data_path,
          ScannerTester::new_scan_Data_Type::with_generated_val);
  tester.setup_val_to_find(0);
  tester.setup_val_to_find(665);
  tester.setup_val_to_find(666);
  tester.setup_val_to_find(999);

  //
  tester.new_scan(Scan_Utils::E_operator_type::equal, INT_VAL_TO_FIND);
  tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                 INT_VAL_TO_FIND);

  std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
  REQUIRE(found_addresses.size() == 4);
  REQUIRE(tester.get_expected_found_addresses() == found_addresses);
}

TEST_CASE("int_scan_3", "[scanner]") {

  const char generated_int_data_path[] =
      "test_files/scan_init_files/INT_1000_data";

  const int INT_VAL_TO_FIND = 1234567;

  ScannerTester::ACE_scanner_tester<int> tester =
      ScannerTester::ACE_scanner_tester<int>(
          INT_VAL_TO_FIND, 10000, generated_int_data_path,
          ScannerTester::new_scan_Data_Type::with_generated_val);
  tester.setup_val_to_find(0);
  tester.setup_val_to_find(6666);
  tester.setup_val_to_find(9996);
  tester.setup_val_to_find(9997);
  tester.setup_val_to_find(9998);
  tester.setup_val_to_find(9999);
  tester.setup_val_to_find(999);

  //
  tester.new_scan(Scan_Utils::E_operator_type::equal, INT_VAL_TO_FIND);
  tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                 INT_VAL_TO_FIND);

  std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
  REQUIRE(found_addresses.size() == 7);

  REQUIRE_THAT(tester.get_expected_found_addresses(),
               Catch::UnorderedEquals(found_addresses));
}

TEST_CASE("short_scan_0", "[scanner]") {

  const char generated_int_data_path[] =
      "test_files/scan_init_files/INT_1000_data";

  const short VAL_TO_FIND = SHRT_MAX;

  ScannerTester::ACE_scanner_tester<short> tester =
      ScannerTester::ACE_scanner_tester<short>(
          VAL_TO_FIND, 10000, generated_int_data_path,
          ScannerTester::new_scan_Data_Type::with_generated_val);
  tester.setup_val_to_find(0);
  tester.setup_val_to_find(9999);

  //
  tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);
  tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                 VAL_TO_FIND);

  std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
  REQUIRE(found_addresses.size() == 2);

  REQUIRE_THAT(tester.get_expected_found_addresses(),
               Catch::UnorderedEquals(found_addresses));
}

TEST_CASE("short_scan_1", "[scanner]") {

  const short VAL_TO_FIND = SHRT_MAX;

  {
    ScannerTester::ACE_scanner_tester<short> tester =
        ScannerTester::ACE_scanner_tester<short>(
            VAL_TO_FIND, 241234, "",
            ScannerTester::new_scan_Data_Type::with_zeros);
    tester.setup_val_to_find(0);
    tester.setup_val_to_find(1);
    tester.setup_val_to_find(2);
    tester.setup_val_to_find(3);
    tester.setup_val_to_find(666);
    tester.setup_val_to_find(9999);

    //
    tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);
    tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                   VAL_TO_FIND);

    std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
    REQUIRE(found_addresses.size() == 6);
    REQUIRE_THAT(tester.get_expected_found_addresses(),
                 Catch::UnorderedEquals(found_addresses));
  }
}

TEST_CASE("new_scan_not_equal", "[scanner]") {

  const short VAL_TO_FIND = 123;

  {
    ScannerTester::ACE_scanner_tester<short> tester =
        ScannerTester::ACE_scanner_tester<short>(
            VAL_TO_FIND, 1000, "",
            ScannerTester::new_scan_Data_Type::with_zeros);

    tester.setup_val_to_find(0);
    tester.setup_val_to_find(1);
    tester.setup_val_to_find(2);
    tester.setup_val_to_find(3);
    tester.setup_val_to_find(666);
    tester.setup_val_to_find(999);

    //
    tester.new_scan(Scan_Utils::E_operator_type::not_equal, 0);

    std::vector<struct Scan_Utils::addr_and_value<short>> scan_results =
        tester.get_current_scan_results();

    REQUIRE(scan_results.size() > 0);
    REQUIRE(scan_results[0].value != 0);
  }
}

TEST_CASE("action", "[scanner]") {

  /*
   * test of on finding zero variables (which can be modified by us(inc or
   * decrement)) in an memory full of zeroes
   *
   * lets say that we simulate an hp starting from 0 on index 666
   *
   * finding 0 here at first time would just return all of the addresses
   * in the memory, so we need to use the filterer (example increment by doing
   * something to the program, then scan for value that is larger than previous
   * one)
   *
   * (big endian)
   *
   * initial health (index : 666, 2 bytes -> 16 bits)
   * |0 0 0 0 | 0 0 0 0 | 0 0 0 0 | 0 0 0 0 |
   * ^ health var
   *
   * when we increment the health by 1
   * |0 0 0 0 | 0 0 0 0 | 0 0 0 0 | 0 0 0 1 |
   * ^ health var
   *
   * now when the scanner scan through the memory
   *
   * |0 0 0 0 | 0 0 0 0 | 0 0 0 0 | 0 0 0 1 |
   *
   * ^-> when the scanner reaches here, it will read
   *     from there and 16 bits forward, which will results in
   *     reading (1)
   *
   * but then since the scanner moves by only 1 byte
   *
   *
   * 				  	  2 bytes dont belong to
   * 				  	  the health var
   * 					     -------------------
   * 				 	     ^ 		       ^
   *  |0 0 0 0 | 0 0 0 0 | 0 0 0 0 | 0 0 0 1 | 0 0 0 0| 0 0 0 0|
   *   			 ^-> next scanner positon
   *   	  it will read the next value starting from there
   *   	  (256) which is still bigger than the previous value
   *   	  (0)
   *
   * the only way to narrow down the value is to scan for value
   * for exactly `1`
   *
   * */

  const short VAL_TO_FIND = 0;

  {
    ScannerTester::ACE_scanner_tester<short> tester =
        ScannerTester::ACE_scanner_tester<short>(
            VAL_TO_FIND, 10000, "",
            ScannerTester::new_scan_Data_Type::with_zeros

        );

    tester.setup_val_to_find(666);

    //

    tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                   VAL_TO_FIND);

    tester.increment_setupped_val(1);

    tester.scanner_next_scan(Scan_Utils::E_operator_type::greater);

    std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
    std::vector<ADDR> expected_found_addresses =
        tester.get_expected_found_addresses();

    REQUIRE(expected_found_addresses == found_addresses);
  }

  {
    ScannerTester::ACE_scanner_tester<short> tester =
        ScannerTester::ACE_scanner_tester<short>(
            VAL_TO_FIND, 10000, "",
            ScannerTester::new_scan_Data_Type::with_zeros

        );

    tester.setup_val_to_find(666);

    tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    tester.increment_setupped_val(1);
    tester.scanner_next_scan(Scan_Utils::E_operator_type::greater);

    tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                   VAL_TO_FIND + 1);

    std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
    REQUIRE(found_addresses.size() == 1);
    REQUIRE(tester.get_expected_found_addresses() == found_addresses);
  }

  // 2 tests below prevent [next_scan]'s bug
  // when it doesn't update filter result with a new value
  //
  // When new value is not updated after a scan:
  //
  //     when we first increment and scan for value greater than 0, the scanner
  //     should find between 1 or 2 matches
  //
  //     but if we then decrement and scan for value less than 1 (after
  //     incremented)
  //     it will fail when the scanner forgot to update the value before
  //
  //     it passes the previous results  to the second scan so it will scan
  //     for value less than 0 (not updated) because there is no value in memory
  //     <0, the scanner won't find anything
  {
    ScannerTester::ACE_scanner_tester<short> tester =
        ScannerTester::ACE_scanner_tester<short>(
            VAL_TO_FIND, 10000, "",
            ScannerTester::new_scan_Data_Type::with_zeros

        );

    tester.setup_val_to_find(666);

    //
    tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    // do actions and filters
    tester.increment_setupped_val(1);
    tester.scanner_next_scan(Scan_Utils::E_operator_type::greater);

    tester.increment_setupped_val(-1);
    tester.scanner_next_scan(Scan_Utils::E_operator_type::less);

    std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
    REQUIRE(found_addresses.size() >= 1);

    tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                   VAL_TO_FIND);
    REQUIRE(found_addresses.size() == 1);
  }

  {
    ScannerTester::ACE_scanner_tester<short> tester =
        ScannerTester::ACE_scanner_tester<short>(
            VAL_TO_FIND, 10000, "",
            ScannerTester::new_scan_Data_Type::with_zeros

        );

    tester.setup_val_to_find(666);

    //
    tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    // do actions and filters
    tester.increment_setupped_val(-1);
    tester.scanner_next_scan(Scan_Utils::E_operator_type::less);

    tester.increment_setupped_val(1);
    tester.scanner_next_scan(Scan_Utils::E_operator_type::greater);

    std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
    REQUIRE(found_addresses.size() >= 1);

    tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                   VAL_TO_FIND);
    REQUIRE(found_addresses.size() == 1);
  }
}
TEST_CASE("action2", "[scanner]") {
  /*
   *  do multiple action (increment the value)
   * without immediately filtering on each action
   *
   * to check if the filterer uses the newest value
   * to compare against a [cmp_val]
   *
   * */

  int VAL_TO_FIND = 0;
  {
    short cmp_val = VAL_TO_FIND + 3;
    ScannerTester::ACE_scanner_tester<short> tester =
        ScannerTester::ACE_scanner_tester<short>(
            VAL_TO_FIND, 10000, "",
            ScannerTester::new_scan_Data_Type::with_zeros

        );

    tester.setup_val_to_find(666);

    tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    tester.increment_setupped_val(1);

    tester.increment_setupped_val(1);

    tester.increment_setupped_val(1);

    tester.scanner_next_scan(Scan_Utils::E_operator_type::equal, cmp_val);

    std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
    REQUIRE(found_addresses.size() == 1);

    REQUIRE(tester.get_expected_found_addresses() == found_addresses);
  }

  {

    short cmp_val = VAL_TO_FIND - 2;
    ScannerTester::ACE_scanner_tester<short> tester =
        ScannerTester::ACE_scanner_tester<short>(
            VAL_TO_FIND, 10000, "",
            ScannerTester::new_scan_Data_Type::with_zeros

        );

    tester.setup_val_to_find(9999);

    tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    tester.increment_setupped_val(-1);

    tester.increment_setupped_val(-1);

    tester.scanner_next_scan(Scan_Utils::E_operator_type::equal, cmp_val);

    std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();

    REQUIRE(found_addresses.size() == 1);
    REQUIRE(tester.get_expected_found_addresses() == found_addresses);
  }

  {
    short cmp_val = VAL_TO_FIND + 1;
    ScannerTester::ACE_scanner_tester<short> tester =
        ScannerTester::ACE_scanner_tester<short>(
            VAL_TO_FIND, 10000, "",
            ScannerTester::new_scan_Data_Type::with_zeros

        );

    tester.setup_val_to_find(9999);

    tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    tester.increment_setupped_val(-1);
    tester.increment_setupped_val(-1);
    tester.increment_setupped_val(1);
    tester.increment_setupped_val(1);
    tester.increment_setupped_val(1);

    // at first we found 2 results because we are not finding exact
    // value but greater_equal
    /*
     * (little endian)
     * -----------
     * |         |
     * 0 0000 0001 0000 0000
     * ^-> reads a byte will return (256)
     * which is > 0, but its still not the correct address
     *
     * then the scanner will move on to the next byte
     *
     *           -----------
     *           |         |
     * 0 0000 0001 0000 0000
     *           ^-> reads a byte will return (1)
     *
     * this should be the correct addres
     * so to return only 1 match, we need to scan for exact value of 1
     * */
    tester.scanner_next_scan(Scan_Utils::E_operator_type::greater_equal,
                                   cmp_val);

    std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
    REQUIRE(found_addresses.size() >= 1);

    tester.scanner_next_scan(Scan_Utils::E_operator_type::equal, cmp_val);
    found_addresses = tester.get_current_scan_addresses();

    REQUIRE(found_addresses.size() == 1);
    REQUIRE(tester.get_expected_found_addresses() == found_addresses);
  }
}

TEST_CASE("action_decimal", "[scanner]") {

  {

    float VAL_TO_FIND = 0.12;

    ScannerTester::ACE_scanner_tester<float> tester =
        ScannerTester::ACE_scanner_tester<float>(
            VAL_TO_FIND, 10000, "",
            ScannerTester::new_scan_Data_Type::with_zeros

        );

    tester.setup_val_to_find(666);

    tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    tester.increment_setupped_val(1);

    tester.increment_setupped_val(1);

    tester.increment_setupped_val(1);

    tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                   VAL_TO_FIND + 3);

    std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
    REQUIRE(found_addresses.size() == 1);

    REQUIRE(tester.get_expected_found_addresses() == found_addresses);
  }

  {

    float VAL_TO_FIND = 0.12;

    ScannerTester::ACE_scanner_tester<float> tester =
        ScannerTester::ACE_scanner_tester<float>(
            VAL_TO_FIND, 10000, "",
            ScannerTester::new_scan_Data_Type::with_zeros

        );

    tester.setup_val_to_find(0);
    tester.setup_val_to_find(666);
    tester.setup_val_to_find(667);

    tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    tester.increment_setupped_val(1);

    tester.scanner_next_scan(Scan_Utils::E_operator_type::greater,
                                   VAL_TO_FIND);

    // setupped value should now be equal
    // to [VAL_TO_FIND]
    tester.increment_setupped_val(-1);

    tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                   VAL_TO_FIND);

    std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
    REQUIRE(found_addresses.size() == 3);

    REQUIRE(tester.get_expected_found_addresses() == found_addresses);

    // shouldn't find anything
    // since value has been incremented
    // but we still scan for 0.12, which by now should
    // be 1.12
    tester.increment_setupped_val(1);
    tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                   VAL_TO_FIND);

    REQUIRE(0 == tester.get_current_scan_addresses().size());
  }
}

TEST_CASE("next_scan_not_equal", "[scanner]") {

  short VAL_TO_FIND = 0;
  {
    ScannerTester::ACE_scanner_tester<short> tester =
        ScannerTester::ACE_scanner_tester<short>(
            VAL_TO_FIND, 10000, "",
            ScannerTester::new_scan_Data_Type::with_zeros

        );

    tester.setup_val_to_find(0);
    tester.setup_val_to_find(666);
    tester.setup_val_to_find(1000);
    tester.setup_val_to_find(9999);
    tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    //
    tester.increment_setupped_val(1);
    tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                   VAL_TO_FIND + 1);
    REQUIRE(tester.get_current_scan_addresses().size() == 4);

    //
    tester.increment_setupped_val(-1);
    tester.scanner_next_scan(Scan_Utils::E_operator_type::not_equal);
    REQUIRE(tester.get_current_scan_addresses().size() == 4);

    //
    tester.increment_setupped_val(1);
    tester.scanner_next_scan(Scan_Utils::E_operator_type::not_equal);
    REQUIRE(tester.get_current_scan_addresses().size() == 4);
    //
    tester.increment_setupped_val(1);
    tester.scanner_next_scan(Scan_Utils::E_operator_type::not_equal, 0);
    REQUIRE(tester.get_current_scan_addresses().size() == 4);

    // compare actual address
    REQUIRE(tester.get_expected_found_addresses() ==
            tester.get_current_scan_addresses());
  }
}

TEST_CASE("update_current_scan_result", "[scanner]") {

  short VAL_TO_FIND = 0;
  {
    ScannerTester::ACE_scanner_tester<short> tester =
        ScannerTester::ACE_scanner_tester<short>(
            VAL_TO_FIND, 10000, "",
            ScannerTester::new_scan_Data_Type::with_zeros

        );

    /*
     * filter to narrow down values
     * */
    tester.setup_val_to_find(666);

    tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    tester.increment_setupped_val(1);
    tester.scanner_next_scan(Scan_Utils::E_operator_type::greater);

    tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                   VAL_TO_FIND + 1);

    std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
    REQUIRE(found_addresses.size() == 1);

    // update current scan value
    tester.increment_setupped_val(1);
    tester.increment_setupped_val(1);
    tester.scanner_update_current_scan_result();
    //
    std::vector<struct Scan_Utils::addr_and_value<short>> current_scan_res =
        tester.get_current_scan_results();
    REQUIRE(current_scan_res.size() == 1);
    REQUIRE(current_scan_res[0].value == VAL_TO_FIND + 3);
  }

  {
    ScannerTester::ACE_scanner_tester<short> tester =
        ScannerTester::ACE_scanner_tester<short>(
            VAL_TO_FIND, 10000, "",
            ScannerTester::new_scan_Data_Type::with_zeros

        );

    /*
     * filter to narrow down values
     * */
    tester.setup_val_to_find(666);

    tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    tester.increment_setupped_val(1);
    tester.scanner_next_scan(Scan_Utils::E_operator_type::greater);

    tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                   VAL_TO_FIND + 1);

    std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
    REQUIRE(found_addresses.size() == 1);

    // update current scan value
    tester.increment_setupped_val(-1);
    tester.increment_setupped_val(-1);
    tester.scanner_update_current_scan_result();
    //
    std::vector<struct Scan_Utils::addr_and_value<short>> current_scan_res =
        tester.get_current_scan_results();
    REQUIRE(current_scan_res.size() == 1);
    REQUIRE(current_scan_res[0].value == VAL_TO_FIND - 1);
  }

  {
    ScannerTester::ACE_scanner_tester<short> tester =
        ScannerTester::ACE_scanner_tester<short>(
            VAL_TO_FIND, 10000, "",
            ScannerTester::new_scan_Data_Type::with_zeros

        );

    /*
     * filter to narrow down values
     * */
    tester.setup_val_to_find(666);

    tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    tester.increment_setupped_val(1);
    tester.scanner_next_scan(Scan_Utils::E_operator_type::greater);

    tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                   VAL_TO_FIND + 1);

    std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
    REQUIRE(found_addresses.size() == 1);

    // update current scan value
    tester.increment_setupped_val(-1);
    tester.increment_setupped_val(-1);
    tester.increment_setupped_val(1);
    tester.scanner_update_current_scan_result();
    //
    std::vector<struct Scan_Utils::addr_and_value<short>> current_scan_res =
        tester.get_current_scan_results();
    REQUIRE(current_scan_res.size() == 1);

    /*
     * value should equal the initial value
     * since we increment 2 times and
     * decrement 2 times as well
     * */
    REQUIRE(current_scan_res[0].value == VAL_TO_FIND);
  }
}
TEST_CASE("short_scan_2", "[scanner]") {

  /*
   * because `1` is likely to be pregenerated
   * since it is commonnumber, we must use the filterer
   * and action features to narrow down the searches
   * */

  const char generated_int_data_path[] =
      "test_files/scan_init_files/SHORT_10000_DATA";

  {
    const short VAL_TO_FIND = 1;

    {
      ScannerTester::ACE_scanner_tester<short> tester =
          ScannerTester::ACE_scanner_tester<short>(
              VAL_TO_FIND, 10000, generated_int_data_path,
              ScannerTester::new_scan_Data_Type::with_generated_val);
      tester.setup_val_to_find(0);
      tester.setup_val_to_find(666);
      tester.setup_val_to_find(9999);

      //
      tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);
      tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                     VAL_TO_FIND);
      // do actions and filters
      tester.increment_setupped_val(-1);
      tester.scanner_next_scan(Scan_Utils::E_operator_type::less);

      tester.increment_setupped_val(-1);
      tester.scanner_next_scan(Scan_Utils::E_operator_type::less);

      std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
      REQUIRE(found_addresses.size() == 3);

      REQUIRE_THAT(tester.get_expected_found_addresses(),
                   Catch::UnorderedEquals(found_addresses));
    }
  }

  {
    const short VAL_TO_FIND = 1;

    {
      ScannerTester::ACE_scanner_tester<short> tester =
          ScannerTester::ACE_scanner_tester<short>(
              VAL_TO_FIND, 10000, generated_int_data_path,
              ScannerTester::new_scan_Data_Type::with_generated_val);
      tester.setup_val_to_find(0);
      tester.setup_val_to_find(666);
      tester.setup_val_to_find(9999);

      tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);
      tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                     VAL_TO_FIND);
      // do actions and filters
      tester.increment_setupped_val(1);
      tester.scanner_next_scan(Scan_Utils::E_operator_type::greater);

      std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
      REQUIRE(found_addresses.size() == 3);

      REQUIRE_THAT(tester.get_expected_found_addresses(),
                   Catch::UnorderedEquals(found_addresses));
    }

    {
      ScannerTester::ACE_scanner_tester<short> tester =
          ScannerTester::ACE_scanner_tester<short>(
              VAL_TO_FIND, 10000, generated_int_data_path,
              ScannerTester::new_scan_Data_Type::with_generated_val);

      tester.setup_val_to_find(0);
      tester.setup_val_to_find(666);
      tester.setup_val_to_find(9999);

      tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);
      tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                     VAL_TO_FIND);
      // do actions and filters
      tester.increment_setupped_val(1);
      tester.scanner_next_scan(Scan_Utils::E_operator_type::greater);

      tester.increment_setupped_val(1);
      tester.scanner_next_scan(Scan_Utils::E_operator_type::greater);

      std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
      REQUIRE(found_addresses.size() == 3);

      REQUIRE_THAT(tester.get_expected_found_addresses(),
                   Catch::UnorderedEquals(found_addresses));
    }

    {
      ScannerTester::ACE_scanner_tester<short> tester =
          ScannerTester::ACE_scanner_tester<short>(
              VAL_TO_FIND, 10000, generated_int_data_path,
              ScannerTester::new_scan_Data_Type::with_generated_val);

      tester.setup_val_to_find(0);
      tester.setup_val_to_find(666);
      tester.setup_val_to_find(9999);

      tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);
      tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                     VAL_TO_FIND);
      // do actions and filters
      tester.increment_setupped_val(-1);
      tester.scanner_next_scan(Scan_Utils::E_operator_type::less);

      std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
      REQUIRE(found_addresses.size() == 3);

      REQUIRE_THAT(tester.get_expected_found_addresses(),
                   Catch::UnorderedEquals(found_addresses));
    }
  }
}
TEST_CASE("new_short_scan_3", "[new_scanner]") {

  const char generated_int_data_path[] =
      "test_files/scan_init_files/SHORT_10000_DATA";
  short VAL_TO_FIND = 6666;
  ScannerTester::ACE_scanner_tester<short> tester =
      ScannerTester::ACE_scanner_tester<short>(
          VAL_TO_FIND, 1000, generated_int_data_path,

          ScannerTester::new_scan_Data_Type::with_generated_val

      );

  tester.setup_val_to_find(0);
  tester.setup_val_to_find(666);
  tester.setup_val_to_find(999);

  tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);
  tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                 VAL_TO_FIND);

  std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
  REQUIRE(found_addresses.size() == 3);

  REQUIRE_THAT(tester.get_expected_found_addresses(),
               Catch::UnorderedEquals(found_addresses));
}

TEST_CASE("LL_scan_1", "[new_scanner]") {

  const char generated_int_data_path[] =
      "test_files/scan_init_files/INT_1000_data";

  LL VAL_TO_FIND = LLONG_MIN;
  ScannerTester::ACE_scanner_tester<LL> tester =
      ScannerTester::ACE_scanner_tester<LL>(
          VAL_TO_FIND, 1000, generated_int_data_path,

          ScannerTester::new_scan_Data_Type::with_generated_val

      );

  tester.setup_val_to_find(0);
  tester.setup_val_to_find(666);
  tester.setup_val_to_find(999);

  //
  tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);
  tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                 VAL_TO_FIND);

  tester.increment_setupped_val(1);
  tester.scanner_next_scan(Scan_Utils::E_operator_type::greater);

  std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
  REQUIRE(found_addresses.size() == 3);

  REQUIRE_THAT(tester.get_expected_found_addresses(),
               Catch::UnorderedEquals(found_addresses));
}

TEST_CASE("LL_scan_2", "[new_scanner]") {

  const char generated_int_data_path[] =
      "test_files/scan_init_files/INT_1000_data";

  LL VAL_TO_FIND = LLONG_MAX;
  ScannerTester::ACE_scanner_tester<LL> tester =
      ScannerTester::ACE_scanner_tester<LL>(
          VAL_TO_FIND, 1000, generated_int_data_path,

          ScannerTester::new_scan_Data_Type::with_generated_val

      );

  tester.setup_val_to_find(0);
  tester.setup_val_to_find(666);
  tester.setup_val_to_find(999);

  //
  tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);
  tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                 VAL_TO_FIND);

  std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
  REQUIRE(found_addresses.size() == 3);

  REQUIRE_THAT(tester.get_expected_found_addresses(),
               Catch::UnorderedEquals(found_addresses));
}

TEST_CASE("LL_scan_3", "[new_scanner]") {

  const char generated_int_data_path[] =
      "test_files/scan_init_files/INT_1000_data";

  LL VAL_TO_FIND = LLONG_MAX;
  ScannerTester::ACE_scanner_tester<LL> tester =
      ScannerTester::ACE_scanner_tester<LL>(
          VAL_TO_FIND, 10000, generated_int_data_path,

          ScannerTester::new_scan_Data_Type::with_generated_val

      );

  tester.setup_val_to_find(0);
  tester.setup_val_to_find(6666);
  tester.setup_val_to_find(9999);

  //
  tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);
  tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                 VAL_TO_FIND);

  std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
  REQUIRE(found_addresses.size() == 3);

  REQUIRE_THAT(tester.get_expected_found_addresses(),
               Catch::UnorderedEquals(found_addresses));
}

TEST_CASE("writter", "[writter]") {
  const short VAL_TO_FIND = 0;

  /*
   * scan and find value, write to it and check if it has been written
   * */
  ScannerTester::ACE_scanner_tester<short> tester =
      ScannerTester::ACE_scanner_tester<short>(
          VAL_TO_FIND, 10000, "",
          ScannerTester::new_scan_Data_Type::with_zeros

      );

  tester.setup_val_to_find(666);

  tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

  tester.increment_setupped_val(1);
  tester.scanner_next_scan(Scan_Utils::E_operator_type::greater);

  tester.scanner_next_scan(Scan_Utils::E_operator_type::equal,
                                 VAL_TO_FIND + 1);

  // write and check if it has been written
  // and we still got 1 match when we find "= 999"
  tester.scanner_write_val_to_current_scan_results(999);
  tester.scanner_next_scan(Scan_Utils::E_operator_type::equal, 999);
  // check if it has been written
  std::vector<struct Scan_Utils::addr_and_value<short>> current_scan_res =
      tester.get_current_scan_results();
  REQUIRE(1 == current_scan_res.size());
  REQUIRE(999 == current_scan_res[0].value);
}
