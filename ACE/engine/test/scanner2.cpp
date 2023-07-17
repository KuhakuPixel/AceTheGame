#include "ACE/ace_type.hpp"
#include "ACE/endian.hpp"
#include "scanner_tester.hpp"
#include <limits.h>
#include <stdlib.h>

TEST_CASE("chunk_int_scan_1", "[real_scan]") {

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
  tester.scanner_next_scan(Scan_Utils::E_operator_type::equal, INT_VAL_TO_FIND);

  std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
  REQUIRE(found_addresses.size() == 3);
  REQUIRE(tester.get_expected_found_addresses() == found_addresses);
}

TEST_CASE("chunk_int_scan_2", "[real_scan]") {

  const char generated_int_data_path[] =
      "test_files/scan_init_files/INT_1000_data";

  const int INT_VAL_TO_FIND = INT_MAX;

  ScannerTester::ACE_scanner_tester<int> tester =
      ScannerTester::ACE_scanner_tester<int>(
          INT_VAL_TO_FIND, 100000, generated_int_data_path,
          ScannerTester::new_scan_Data_Type::with_generated_val);

  tester.setup_val_to_find(0);
  tester.setup_val_to_find(666);
  tester.setup_val_to_find(999);
  tester.setup_val_to_find(1000);
  //  tester.setup_val_to_find(4999999);

  //
  tester.new_scan(Scan_Utils::E_operator_type::equal, INT_VAL_TO_FIND);
  tester.scanner_next_scan(Scan_Utils::E_operator_type::equal, INT_VAL_TO_FIND);

  std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
  REQUIRE(found_addresses.size() == 4);
  REQUIRE(tester.get_expected_found_addresses() == found_addresses);
}

TEST_CASE("chunk_not_equal", "[real_scanner]") {

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

TEST_CASE("chunk_int_scan_3", "[real_scan]") {

  const char generated_int_data_path[] =
      "test_files/scan_init_files/INT_1000_data";

  const int INT_VAL_TO_FIND = INT_MIN;

  ScannerTester::ACE_scanner_tester<int> tester =
      ScannerTester::ACE_scanner_tester<int>(
          INT_VAL_TO_FIND, 4234321, generated_int_data_path,
          ScannerTester::new_scan_Data_Type::with_generated_val);

  tester.setup_val_to_find(0);
  tester.setup_val_to_find(666);
  tester.setup_val_to_find(999);

  tester.setup_val_to_find(4234317);
  tester.setup_val_to_find(4234318);
  tester.setup_val_to_find(4234319);
  tester.setup_val_to_find(4234320);

  //
  tester.new_scan(Scan_Utils::E_operator_type::equal, INT_VAL_TO_FIND);
  tester.scanner_next_scan(Scan_Utils::E_operator_type::equal, INT_VAL_TO_FIND);

  std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
  REQUIRE(found_addresses.size() == 7);
  REQUIRE(tester.get_expected_found_addresses() == found_addresses);
}

TEST_CASE("chunk_LL_scan_1", "[real_scan]") {

  const char generated_int_data_path[] =
      "test_files/scan_init_files/INT_1000_data";

  const long LL_VAL_TO_FIND = LONG_MAX;

  ScannerTester::ACE_scanner_tester<LL> tester =
      ScannerTester::ACE_scanner_tester<LL>(
          LL_VAL_TO_FIND, 4234321, generated_int_data_path,
          ScannerTester::new_scan_Data_Type::with_generated_val);

  tester.setup_val_to_find(0);
  tester.setup_val_to_find(666);
  tester.setup_val_to_find(999);

  tester.setup_val_to_find(4234317);
  tester.setup_val_to_find(4234318);
  tester.setup_val_to_find(4234319);
  tester.setup_val_to_find(4234320);

  //
  tester.new_scan(Scan_Utils::E_operator_type::equal, LL_VAL_TO_FIND);
  tester.scanner_next_scan(Scan_Utils::E_operator_type::equal, LL_VAL_TO_FIND);

  std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
  REQUIRE(found_addresses.size() == 7);
  REQUIRE(tester.get_expected_found_addresses() == found_addresses);
}

TEST_CASE("chunk_int_scan_and_next_scan", "[real_scan]") {

  const short VAL_TO_FIND = 0;

  {

    ScannerTester::ACE_scanner_tester<short> tester =
        ScannerTester::ACE_scanner_tester<short>(
            VAL_TO_FIND, 4134112, "",
            ScannerTester::new_scan_Data_Type::with_zeros);

    tester.setup_val_to_find(999);

    //
    tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
    REQUIRE(found_addresses.size() > 1);

    tester.increment_setupped_val(1);
    tester.scanner_next_scan(Scan_Utils::E_operator_type::equal, 1);

    found_addresses = tester.get_current_scan_addresses();
    REQUIRE(found_addresses.size() == 1);
    REQUIRE(tester.get_expected_found_addresses() == found_addresses);
  }
}

TEST_CASE("reverse_endian_scan", "[real_scan]") {
  /*
   * test the scanner for finding reversed endian value
   * by setting up a value whose endian has been swapped
   * */

  {

    const short VAL_TO_FIND = 123;
    ScannerTester::ACE_scanner_tester<short> tester =
        ScannerTester::ACE_scanner_tester<short>(
            swap_endian<short>(VAL_TO_FIND), 1000, "",
            ScannerTester::new_scan_Data_Type::with_zeros);

    tester.scanner_set_endian_scan_type(E_endian_scan_type::swapped);

    tester.setup_val_to_find(999);

    //
    tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);
    tester.scanner_next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
    REQUIRE(found_addresses.size() == 1);
  }

  {

    const long VAL_TO_FIND = LONG_MAX;
    ScannerTester::ACE_scanner_tester<long> tester =
        ScannerTester::ACE_scanner_tester<long>(
            swap_endian<long>(VAL_TO_FIND), 5000, "",
            ScannerTester::new_scan_Data_Type::with_zeros);

    tester.scanner_set_endian_scan_type(E_endian_scan_type::swapped);

    tester.setup_val_to_find(0);
    tester.setup_val_to_find(1);
    tester.setup_val_to_find(3000);
    tester.setup_val_to_find(4998);
    tester.setup_val_to_find(4999);

    //
    tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);
    tester.scanner_next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
    REQUIRE(found_addresses.size() == 5);
  }

  {

    const int VAL_TO_FIND = 1234567;
    ScannerTester::ACE_scanner_tester<int> tester =
        ScannerTester::ACE_scanner_tester<int>(
            swap_endian<int>(VAL_TO_FIND), 5000, "",
            ScannerTester::new_scan_Data_Type::with_zeros);

    tester.scanner_set_endian_scan_type(E_endian_scan_type::swapped);

    tester.setup_val_to_find(0);
    tester.setup_val_to_find(1);
    tester.setup_val_to_find(3000);
    tester.setup_val_to_find(4998);
    tester.setup_val_to_find(4999);

    //
    tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

    // other filter
    tester.scanner_next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);
    tester.scanner_next_scan(Scan_Utils::E_operator_type::greater,
                             VAL_TO_FIND - 1);
    tester.scanner_next_scan(Scan_Utils::E_operator_type::less,
                             VAL_TO_FIND + 1);

    //
    std::vector<ADDR> found_addresses = tester.get_current_scan_addresses();
    REQUIRE(found_addresses.size() == 5);
  }
}

TEST_CASE("reverse_endian_scan_write", "[writter]") {

  const int VAL_TO_FIND = 1234567;
  ScannerTester::ACE_scanner_tester<int> tester =
      ScannerTester::ACE_scanner_tester<int>(
          swap_endian<int>(VAL_TO_FIND), 5000, "",
          ScannerTester::new_scan_Data_Type::with_zeros);

  tester.scanner_set_endian_scan_type(E_endian_scan_type::swapped);

  tester.setup_val_to_find(4999);

  //
  tester.new_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);

  // other filter
  tester.scanner_next_scan(Scan_Utils::E_operator_type::equal, VAL_TO_FIND);
  tester.scanner_next_scan(Scan_Utils::E_operator_type::greater,
                           VAL_TO_FIND - 1);
  tester.scanner_next_scan(Scan_Utils::E_operator_type::less, VAL_TO_FIND + 1);

  // write and check if it has been written
  // with the endian reversed
  // and we still got 1 match
  // write
  tester.scanner_write_val_to_current_scan_results(666);
  // check if it has been written
  // when we scan for = 666 it should still
  // have 1 match
  tester.scanner_next_scan(Scan_Utils::E_operator_type::equal, 666);

  std::vector<struct Scan_Utils::addr_and_value<int>> current_scan_res =
      tester.get_current_scan_results();
  // check the content
  REQUIRE(current_scan_res.size() == 1);
  REQUIRE(swap_endian<int>(666) == current_scan_res[0].value);
}
