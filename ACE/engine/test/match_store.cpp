#include "ACE/match_store.hpp"
#include "ACE/ace_type.hpp"
#include "ACE/scan_utils.hpp"
#include "../third_party/catch.hpp"

TEST_CASE("is_match_in_a_row unaligned", "[match_chunk]") {
  match_storage<int> m_storage =
      match_storage<int>(Scan_Utils::E_scan_level::all);

  REQUIRE(true == m_storage.is_match_in_a_row(0x0));
  // need to add match before calling
  // is_match_in_a_row
  m_storage.add_match(0x0, 4);

  REQUIRE(true == m_storage.is_match_in_a_row(0x1));
  m_storage.add_match(0x1, 5);

  REQUIRE(true == m_storage.is_match_in_a_row(0x2));
  m_storage.add_match(0x2, 5);

  REQUIRE(true == m_storage.is_match_in_a_row(0x3));

  // not a match in a row because because
  // we haven't add a match at 0x3
  REQUIRE(false == m_storage.is_match_in_a_row(0x4));
  REQUIRE(false == m_storage.is_match_in_a_row(0x5));
  REQUIRE(false == m_storage.is_match_in_a_row(0x6));
  REQUIRE(false == m_storage.is_match_in_a_row(0x7));
  REQUIRE(false == m_storage.is_match_in_a_row(0x8));
}

TEST_CASE("is_match_in_a_row aligned", "[match_chunk]") {
  /*
   * an int according to c standard must be at least
   * 16 bits
   * https://stackoverflow.com/a/1738591/14073678
   * */
  {
    ADDR base_addr = 0x0;
    match_storage<int> m_storage =
        match_storage<int>(Scan_Utils::E_scan_level::aligned_only);

    //
    REQUIRE(true == m_storage.is_match_in_a_row(base_addr));
    m_storage.add_match(base_addr, 4);

    /*
     * false because address is unaligned
     * and function [is_match_in_a_row] only set to
     * allow addition for aligned only
     * */
    ADDR unaligned_addr = 0x0;
    unaligned_addr = base_addr + sizeof(int) - 1;
    REQUIRE(false == m_storage.is_match_in_a_row(unaligned_addr));

    unaligned_addr = base_addr + 2 * sizeof(int) - 1;
    REQUIRE(false == m_storage.is_match_in_a_row(unaligned_addr));
  }

  {
    /*
     * true because they are aligned
     * */

    ADDR base_addr = 0x0;
    match_storage<int> m_chunk =
        match_storage<int>(Scan_Utils::E_scan_level::aligned_only);

    //
    REQUIRE(true == m_chunk.is_match_in_a_row(base_addr));
    m_chunk.add_match(base_addr, 4);

    /*
     * true because address is unaligned
     * and function [is_match_in_a_row] only set to
     * allow addition for aligned only
     * */
    REQUIRE(true == m_chunk.is_match_in_a_row(base_addr + sizeof(int) * 1));
    m_chunk.add_match(base_addr + sizeof(int) * 1, 5);

    //
    REQUIRE(true == m_chunk.is_match_in_a_row(base_addr + sizeof(int) * 2));
    m_chunk.add_match(base_addr + sizeof(int) * 2, 5);

    //
    REQUIRE(true == m_chunk.is_match_in_a_row(base_addr + sizeof(int) * 3));

    //
    // not a match in a row anymore
    // because no value is added
    REQUIRE(false == m_chunk.is_match_in_a_row(base_addr + sizeof(int) * 4));

    // but this is a match in a row
    // after we add a value
    m_chunk.add_match(base_addr + sizeof(int) * 3, 5);
    REQUIRE(true == m_chunk.is_match_in_a_row(base_addr + sizeof(int) * 4));

    // not a match in a row anymore since
    // since the match address is too
    // far away from previous match's address
    REQUIRE(false == m_chunk.is_match_in_a_row(base_addr + sizeof(int) * 666));
  }
}

TEST_CASE("match_storage", "[match_storage]") {
  {
    //
    match_storage<int> m_store =
        match_storage<int>(Scan_Utils::E_scan_level::all);
    m_store.add_match(0x0, 3);
    m_store.add_match(0x1, 3);
    m_store.add_match(0x2, 3);
    m_store.add_match(0x3, 5);
    m_store.add_match(0x4, 5);
    m_store.add_match(0x5, 5);
    REQUIRE(1 == m_store.get_chunk_count());
  }

  {
    //
    match_storage<int> m_store =
        match_storage<int>(Scan_Utils::E_scan_level::all);
    m_store.add_match(0x0, 3);
    m_store.add_match(0x1, 3);
    m_store.add_match(0x2, 3);
    m_store.add_match(0x3, 5);
    m_store.add_match(0x4, 5);
    m_store.add_match(0x5, 5);
    // this should create a separate chunk
    m_store.add_match(0x7, 5);
    REQUIRE(2 == m_store.get_chunk_count());
  }

  {
    //
    match_storage<int> m_store =
        match_storage<int>(Scan_Utils::E_scan_level::all);
    m_store.add_match(0x0, 3);
    m_store.add_match(0x1, 3);
    m_store.add_match(0x2, 3);
    m_store.add_match(0x3, 5);
    m_store.add_match(0x4, 5);
    m_store.add_match(0x5, 5);
    m_store.add_match(0x6, 123);
    m_store.add_match(0x7, 5);

    REQUIRE(1 == m_store.get_chunk_count());
  }

  {
    //
    match_storage<int> m_store =
        match_storage<int>(Scan_Utils::E_scan_level::all);
    m_store.add_match(0x0, 3);
    m_store.add_match(0x1, 3);
    m_store.add_match(0x2, 3);
    m_store.add_match(0x3, 5);
    m_store.add_match(0x4, 5);
    m_store.add_match(0x5, 5);
    m_store.add_match(0x6, 123);
    m_store.add_match(0x7, 5);
    m_store.add_match(0x8, 5);
    m_store.add_match(0x9, 5);

    REQUIRE(1 == m_store.get_chunk_count());
  }

  {
    //
    match_storage<short> m_store =
        match_storage<short>(Scan_Utils::E_scan_level::all);
    // new chunk
    m_store.add_match(0x0, -3);
    m_store.add_match(0x1, -3);
    m_store.add_match(0x2, -3);
    m_store.add_match(0x3, -5);
    m_store.add_match(0x4, -5);
    m_store.add_match(0x5, -5);

    // new chunk
    m_store.add_match(0x7, -5);
    m_store.add_match(0x8, -5);
    m_store.add_match(0x9, -5);

    // new chunk
    m_store.add_match(0x11, 5);
    m_store.add_match(0x12, 5);
    m_store.add_match(0x13, 5);
    m_store.add_match(0x14, 5);

    REQUIRE(3 == m_store.get_chunk_count());
  }

  {
    //
    match_storage<ULL> m_store =
        match_storage<ULL>(Scan_Utils::E_scan_level::all);
    // new chunk
    m_store.add_match(0x0, 3);
    m_store.add_match(0x1, 3);
    m_store.add_match(0x2, 3);
    m_store.add_match(0x3, 5);
    m_store.add_match(0x4, 5);
    m_store.add_match(0x5, 5);

    // new chunk
    m_store.add_match(0x7, 5);
    m_store.add_match(0x8, 5);
    m_store.add_match(0x9, 5);

    // new chunk
    m_store.add_match(0x11, 5);
    m_store.add_match(0x12, 5);
    m_store.add_match(0x13, 5);
    m_store.add_match(0x14, 1234567);

    REQUIRE(3 == m_store.get_chunk_count());
  }

  {
    /*
     * this is worst case for the match_storage algorithm
     * since there is not a single matches in a row
     * and  worse than storing (naive way) using a vector
     * of address and value
     * */

    match_storage<ULL> m_store =
        match_storage<ULL>(Scan_Utils::E_scan_level::all);
    // new chunk
    m_store.add_match(0x0, 3);

    // new chunk
    m_store.add_match(0x2, 5);

    // new chunk
    m_store.add_match(0x4, 1234567);

    // new chunk
    m_store.add_match(0x6, 1234567);

    // new chunk
    m_store.add_match(0x8, 1234567);

    REQUIRE(5 == m_store.get_chunk_count());
    //    printf("size %zu\n", sizeof(m_store));
    //    printf("size2 %zu\n", sizeof(m_store.match_chunks[0]));
  }
}

TEST_CASE("match_storage.get_matches_count", "[match_storage]") {
  {
    //
    match_storage<int> m_store =
        match_storage<int>(Scan_Utils::E_scan_level::all);
    m_store.add_match(0x0, 3);
    m_store.add_match(0x1, 3);
    m_store.add_match(0x2, 3);
    REQUIRE(3 == m_store.get_matches_count());
  }

  {
    //
    match_storage<int> m_store =
        match_storage<int>(Scan_Utils::E_scan_level::all);
    m_store.add_match(0x0, 3);
    m_store.add_match(0x1, 3);
    m_store.add_match(0x3, 3);
    m_store.add_match(0x9, 3);
    REQUIRE(4 == m_store.get_matches_count());
  }

  {
    ADDR base_addr = sizeof(short) * 3;
    //
    match_storage<short> m_store =
        match_storage<short>(Scan_Utils::E_scan_level::aligned_only);

    m_store.add_match(base_addr + sizeof(short) * 1, -100);
    m_store.add_match(base_addr + sizeof(short) * 3, 0);
    m_store.add_match(base_addr + sizeof(short) * 9, 123);
    m_store.add_match(base_addr + sizeof(short) * 666, 321);
    m_store.add_match(base_addr + sizeof(short) * 1000, 321);
    m_store.add_match(base_addr + sizeof(short) * 1001, 321);
    REQUIRE(6 == m_store.get_matches_count());
  }
}

TEST_CASE("match_storage.clear", "[match_storage]") {
  {
    //
    match_storage<int> m_store =
        match_storage<int>(Scan_Utils::E_scan_level::all);
    m_store.add_match(0x0, 3);
    m_store.add_match(0x1, 3);
    m_store.add_match(0x2, 3);
    REQUIRE(3 == m_store.get_matches_count());
    REQUIRE(3 == m_store.get_matches_values().size());
    m_store.clear();

    REQUIRE(0 == m_store.get_matches_count());
    REQUIRE(0 == m_store.get_matches_values().size());
  }

  {
    //
    match_storage<short> m_store =
        match_storage<short>(Scan_Utils::E_scan_level::all);
    m_store.add_match(0x0, 3);
    m_store.add_match(0x1, 3);
    m_store.add_match(0x2, 3);
    m_store.add_match(0x5, 3);
    m_store.add_match(0x567, 3);

    REQUIRE(5 == m_store.get_matches_count());
    REQUIRE(5 == m_store.get_matches_values().size());
    m_store.clear();

    REQUIRE(0 == m_store.get_matches_count());
    REQUIRE(0 == m_store.get_matches_values().size());
  }
}

TEST_CASE("match_storage._iterate", "[match_storage]") {

  {
    match_storage<int> m_store =
        match_storage<int>(Scan_Utils::E_scan_level::all);
    m_store.add_match(0x0, 3);
    m_store.add_match(0x1, 3);
    m_store.add_match(0x2, 3);
    m_store.add_match(0x3, 5);
    m_store.add_match(0x4, 5);
    m_store.add_match(0x5, 5);

    // nothing bad should happen here ...
    // just because the function pointer is NULL
    m_store._iterate(

        NULL, NULL, 3

    );
    REQUIRE(6 == m_store.get_matches_count());
  }

  {
    /*
     * iteration with limit
     * */
    match_storage<int> m_store =
        match_storage<int>(Scan_Utils::E_scan_level::all);
    m_store.add_match(0x0, 3);
    m_store.add_match(0x1, 3);
    m_store.add_match(0x2, 3);
    m_store.add_match(0x3, 5);
    m_store.add_match(0x4, 5);
    m_store.add_match(0x5, 5);

    size_t i;
    //=======================
    i = 0;
    m_store._iterate(

        [&i](ADDR addr, int *val_ptr) {
          //
          i++;
        },

        NULL,

        3

    );
    REQUIRE(3 == i);
    //=======================
    i = 0;
    m_store._iterate(

        NULL,

        [&i](ADDR addr, int val) {
          //
          i++;
        },

        2

    );
    REQUIRE(2 == i);
    //=======================
    i = 0;
    m_store._iterate(

        [&i](ADDR addr, int *val_ptr) {
          //
          i++;
        },

        NULL,

        0

    );
    REQUIRE(0 == i);
    //=======================
    // if max iteration is set to be bigger than
    // the number of elements, it shouldn't
    // be a problem and i should still be equal to
    // element count at the end
    i = 0;
    m_store._iterate(

        [&i](ADDR addr, int *val_ptr) {
          //
          i++;
        },

        NULL,

        9999

    );
    REQUIRE(m_store.get_matches_count() == i);
    //=======================
  }
}
TEST_CASE("match_storage.iterate", "[match_storage]") {

  {
    //
    match_storage<int> m_store =
        match_storage<int>(Scan_Utils::E_scan_level::all);
    m_store.add_match(0x0, 3);
    m_store.add_match(0x1, 3);
    m_store.add_match(0x2, 3);
    m_store.add_match(0x3, 5);
    m_store.add_match(0x4, 5);
    m_store.add_match(0x5, 5);

    int matches_value_sum = 0;
    m_store.iterate(

        [&matches_value_sum](ADDR addr, int *val_ptr) {
          //
          matches_value_sum += *val_ptr;
        }

    );
    REQUIRE(24 == matches_value_sum);
  }

  {
    //
    match_storage<int> m_store =
        match_storage<int>(Scan_Utils::E_scan_level::all);
    m_store.add_match(0x6, 3);
    m_store.add_match(0x7, 3);
    m_store.add_match(0x8, 3);

    int matches_addr_sum = 0;
    m_store.iterate(

        [&matches_addr_sum](ADDR addr, int *val_ptr) {
          //
          matches_addr_sum += addr;
        }

    );
    REQUIRE(0x6 + 0x7 + 0x8 == matches_addr_sum);
  }

  {
    /*
     * test if we can change the matches value
     * through iterate's callback
     * */
    //
    match_storage<int> m_store =
        match_storage<int>(Scan_Utils::E_scan_level::all);
    m_store.add_match(0x0, 1);
    m_store.add_match(0x1, 1);
    m_store.add_match(0x2, 1);
    m_store.add_match(0x3, 1);
    m_store.add_match(0x4, 1);
    m_store.add_match(0x5, 1);
    m_store.add_match(0x9, 1);

    /*
     * ======= original of sum all matches's value ==========
     * */
    int matches_value_sum = 0;

    m_store.iterate(

        [&matches_value_sum](ADDR addr, int *val_ptr) {
          //
          matches_value_sum += *val_ptr;
        }

    );
    REQUIRE(7 == matches_value_sum);

    /*
     *====== set all matches's value to 2 ==========
     * */
    m_store.iterate(

        [](ADDR addr, int *val_ptr) {
          // set value to 2
          *val_ptr = 2;
        }

    );

    /*
     * ======= new sum of all matches's value ==========
     * */
    matches_value_sum = 0;

    // loop to sum the new  match value
    m_store.iterate(

        [&matches_value_sum](ADDR addr, int *val_ptr) {
          matches_value_sum += *val_ptr;
        }

    );
    // it should change now to 14
    REQUIRE(14 == matches_value_sum);
  }

  {
    /*
     * test if we can change the matches value
     * through iterate's callback
     * */

    match_storage<int> m_store =
        match_storage<int>(Scan_Utils::E_scan_level::all);
    m_store.add_match(0x2, 5);
    m_store.add_match(0x3, 9);
    m_store.add_match(0x4, 100);
    m_store.add_match(0x5, 12);
    // new chunk
    m_store.add_match(0x9, 1);
    m_store.add_match(0xa, 1);

    /*
     * ======= original of sum all matches's value ==========
     * */
    std::vector<Scan_Utils::addr_and_value<int>> scan_res = {};

    m_store.iterate(

        [&scan_res](ADDR addr, int *val_ptr) {
          //
          auto addr_and_val = Scan_Utils::addr_and_value<int>(addr, *val_ptr);
          scan_res.push_back(addr_and_val);
        }

    );
    REQUIRE(6 == scan_res.size());

    REQUIRE(0x2 == scan_res[0].address);
    REQUIRE(5 == scan_res[0].value);

    REQUIRE(0x3 == scan_res[1].address);
    REQUIRE(9 == scan_res[1].value);

    REQUIRE(0x4 == scan_res[2].address);
    REQUIRE(100 == scan_res[2].value);

    REQUIRE(0x5 == scan_res[3].address);
    REQUIRE(12 == scan_res[3].value);

    REQUIRE(0x9 == scan_res[4].address);
    REQUIRE(1 == scan_res[4].value);

    REQUIRE(0xa == scan_res[5].address);
    REQUIRE(1 == scan_res[5].value);
  }
}

TEST_CASE("match_storage.iterate_val", "[match_storage]") {

  {
    /*
     * test if we can change the matches value
     * through iterate's callback
     * */

    const ADDR base_addr = sizeof(int) * 8;
    match_storage<int> m_store =
        match_storage<int>(Scan_Utils::E_scan_level::aligned_only);
    // new chunk
    m_store.add_match(base_addr + sizeof(int) * 1, 5);
    m_store.add_match(base_addr + sizeof(int) * 2, 9);
    m_store.add_match(base_addr + sizeof(int) * 3, 12);
    // new chunk
    m_store.add_match(base_addr + sizeof(int) * 5, 1);
    m_store.add_match(base_addr + sizeof(int) * 6, 1);

    /*
     * ======= original of sum all matches's value ==========
     * */
    std::vector<Scan_Utils::addr_and_value<int>> scan_res = {};

    m_store.iterate_val(

        [&scan_res](ADDR addr, int val) {
          //
          auto addr_and_val = Scan_Utils::addr_and_value<int>(addr, val);
          scan_res.push_back(addr_and_val);
        }

    );
    REQUIRE(2 == m_store.get_chunk_count());
    REQUIRE(5 == scan_res.size());

    REQUIRE(base_addr + sizeof(int) * 1 == scan_res[0].address);
    REQUIRE(5 == scan_res[0].value);

    REQUIRE(base_addr + sizeof(int) * 2 == scan_res[1].address);
    REQUIRE(9 == scan_res[1].value);

    REQUIRE(base_addr + sizeof(int) * 3 == scan_res[2].address);
    REQUIRE(12 == scan_res[2].value);

    REQUIRE(base_addr + sizeof(int) * 5 == scan_res[3].address);
    REQUIRE(1 == scan_res[3].value);

    REQUIRE(base_addr + sizeof(int) * 6 == scan_res[4].address);
    REQUIRE(1 == scan_res[4].value);
  }
}

TEST_CASE("match_storage.iterate_chunk", "[match_storage]") {

  {
    //
    match_storage<int> m_store =
        match_storage<int>(Scan_Utils::E_scan_level::all);
    // new chunk
    m_store.add_match(0x0, 3);
    m_store.add_match(0x1, 3);
    m_store.add_match(0x2, 3);
    m_store.add_match(0x3, 5);
    m_store.add_match(0x4, 5);
    m_store.add_match(0x5, 5);
    // new chunk
    m_store.add_match(0x7, 5);

    std::vector<match_chunk_prop<int>> chunk_props = {};
    m_store.iterate_chunk(

        [&chunk_props](const match_chunk_prop<int> &chunk_prop) {
          chunk_props.push_back(chunk_prop);
        }

    );
    REQUIRE(2 == chunk_props.size());
    // chunk 0
    REQUIRE(6 == chunk_props[0].match_count);
    REQUIRE(0 == chunk_props[0].current_val_index);
    REQUIRE(0x0 == chunk_props[0].base_address);
    REQUIRE(7 == chunk_props[0].matches_values->size());
    // chunk 1
    REQUIRE(1 == chunk_props[1].match_count);
    REQUIRE(6 == chunk_props[1].current_val_index);
    REQUIRE(0x7 == chunk_props[1].base_address);
    REQUIRE(7 == chunk_props[1].matches_values->size());
  }

  {
    //
    match_storage<int> m_store =
        match_storage<int>(Scan_Utils::E_scan_level::all);
    // new chunk
    m_store.add_match(0x0, 3);
    m_store.add_match(0x1, 3);
    m_store.add_match(0x2, 3);
    m_store.add_match(0x3, 5);
    m_store.add_match(0x4, 5);
    m_store.add_match(0x5, 5);
    m_store.add_match(0x6, 5);
    m_store.add_match(0x7, 5);

    std::vector<match_chunk_prop<int>> chunk_props = {};
    m_store.iterate_chunk(

        [&chunk_props](const match_chunk_prop<int> &chunk_prop) {
          chunk_props.push_back(chunk_prop);
        }

    );
    REQUIRE(1 == chunk_props.size());
    // chunk 0
    REQUIRE(8 == chunk_props[0].match_count);
    REQUIRE(0 == chunk_props[0].current_val_index);
    REQUIRE(0x0 == chunk_props[0].base_address);
    REQUIRE(8 == chunk_props[0].matches_values->size());
  }

  {
    //
    match_storage<int> m_store =
        match_storage<int>(Scan_Utils::E_scan_level::all);
    // new chunk
    m_store.add_match(0x0, 3);
    m_store.add_match(0x1, 3);
    m_store.add_match(0x2, 3);
    // new chunk
    m_store.add_match(0x4, 5);
    m_store.add_match(0x5, 5);
    // new chunk
    m_store.add_match(0x1007, 5);
    m_store.add_match(0x1008, 5);
    m_store.add_match(0x1009, 5);

    std::vector<match_chunk_prop<int>> chunk_props = {};
    m_store.iterate_chunk(

        [&chunk_props](const match_chunk_prop<int> &chunk_prop) {
          chunk_props.push_back(chunk_prop);
        }

    );
    REQUIRE(3 == chunk_props.size());
    // chunk 0
    REQUIRE(3 == chunk_props[0].match_count);
    REQUIRE(0 == chunk_props[0].current_val_index);
    REQUIRE(0x0 == chunk_props[0].base_address);
    REQUIRE(8 == chunk_props[0].matches_values->size());
    // chunk 1
    REQUIRE(2 == chunk_props[1].match_count);
    REQUIRE(3 == chunk_props[1].current_val_index);
    REQUIRE(0x4 == chunk_props[1].base_address);
    REQUIRE(8 == chunk_props[1].matches_values->size());
    // chunk 2
    REQUIRE(3 == chunk_props[2].match_count);
    REQUIRE(5 == chunk_props[2].current_val_index);
    REQUIRE(0x1007 == chunk_props[2].base_address);
    REQUIRE(8 == chunk_props[2].matches_values->size());
  }

  // ================================== aligned only ================
  {
    ADDR base_addr = sizeof(int) * 2;
    //
    match_storage<int> m_store =
        match_storage<int>(Scan_Utils::E_scan_level::aligned_only);
    // new chunk
    m_store.add_match(base_addr, 3);
    m_store.add_match(base_addr + sizeof(int) * 1, 3);
    m_store.add_match(base_addr + sizeof(int) * 2, 3);
    m_store.add_match(base_addr + sizeof(int) * 3, 5);
    m_store.add_match(base_addr + sizeof(int) * 4, 5);
    m_store.add_match(base_addr + sizeof(int) * 5, 5);
    // new chunk
    m_store.add_match(base_addr + sizeof(int) * 9, 5);
    m_store.add_match(base_addr + sizeof(int) * 10, 11);
    m_store.add_match(base_addr + sizeof(int) * 11, 9);

    std::vector<match_chunk_prop<int>> chunk_props = {};
    m_store.iterate_chunk(

        [&chunk_props](const match_chunk_prop<int> &chunk_prop) {
          chunk_props.push_back(chunk_prop);
        }

    );
    REQUIRE(2 == chunk_props.size());
    // chunk 0
    REQUIRE(6 == chunk_props[0].match_count);
    REQUIRE(0 == chunk_props[0].current_val_index);
    REQUIRE(base_addr == chunk_props[0].base_address);
    REQUIRE(9 == chunk_props[0].matches_values->size());
    // chunk 1
    REQUIRE(3 == chunk_props[1].match_count);
    REQUIRE(6 == chunk_props[1].current_val_index);
    REQUIRE(base_addr + sizeof(int) * 9 == chunk_props[1].base_address);
    REQUIRE(9 == chunk_props[1].matches_values->size());
  }
}

TEST_CASE("match_chunk_prop.get_exclusive_end_addr", "[match_chunk_prop]") {

  {
    Scan_Utils::E_scan_level scan_level = Scan_Utils::E_scan_level::all;
    //
    match_storage<int> m_store = match_storage<int>(scan_level);
    // new chunk
    m_store.add_match(0x0, 3);
    m_store.add_match(0x1, 1);
    m_store.add_match(0x2, 123);
    m_store.add_match(0x3, 341);
    m_store.add_match(0x4, 777);
    m_store.add_match(0x5, 666);
    // new chunk
    m_store.add_match(0x7, 5);

    std::vector<match_chunk_prop<int>> chunk_props = {};
    m_store.iterate_chunk(

        [&chunk_props](const match_chunk_prop<int> &chunk_prop) {
          chunk_props.push_back(chunk_prop);
        }

    );
    REQUIRE(2 == chunk_props.size());
    // chunk 0
    REQUIRE(0x5 + sizeof(int) ==
            chunk_props[0].get_exclusive_end_addr(scan_level));
    // chunk 1
    REQUIRE(0x7 + sizeof(int) ==
            chunk_props[1].get_exclusive_end_addr(scan_level));
  }

  {

    Scan_Utils::E_scan_level scan_level =
        Scan_Utils::E_scan_level::aligned_only;

    ADDR base_addr = sizeof(int) * 2;
    //
    match_storage<int> m_store = match_storage<int>(scan_level);
    // new chunk
    m_store.add_match(base_addr, 3);
    m_store.add_match(base_addr + sizeof(int) * 1, 3);
    m_store.add_match(base_addr + sizeof(int) * 2, 3);
    m_store.add_match(base_addr + sizeof(int) * 3, 5);
    m_store.add_match(base_addr + sizeof(int) * 4, 5);
    m_store.add_match(base_addr + sizeof(int) * 5, 5);
    // new chunk
    m_store.add_match(base_addr + sizeof(int) * 9, 5);
    m_store.add_match(base_addr + sizeof(int) * 10, 11);
    m_store.add_match(base_addr + sizeof(int) * 11, 9);

    std::vector<match_chunk_prop<int>> chunk_props = {};
    m_store.iterate_chunk(

        [&chunk_props](const match_chunk_prop<int> &chunk_prop) {
          chunk_props.push_back(chunk_prop);
        }

    );
    REQUIRE(2 == chunk_props.size());
    // chunk 0
    REQUIRE(base_addr + sizeof(int) * 6 ==
            chunk_props[0].get_exclusive_end_addr(scan_level));
    // chunk 1
    REQUIRE(base_addr + sizeof(int) * 12 ==
            chunk_props[1].get_exclusive_end_addr(scan_level));
  }

  {
    std::vector<char> dummy_matches_value = {12, 5, 6, 1, 22, 5, 7, 10};
    match_chunk_prop<char> chunk_prop =
        match_chunk_prop<char>(&dummy_matches_value);
    chunk_prop.base_address = 0x10;
    chunk_prop.match_count = 4;

    REQUIRE(0x14 == chunk_prop.get_exclusive_end_addr(
                        Scan_Utils::E_scan_level::aligned_only));

    REQUIRE(0x14 ==
            chunk_prop.get_exclusive_end_addr(Scan_Utils::E_scan_level::all));
  }

  /* =========================================================
   * if no matches, end address should be
   * base address it self
   * */
  {
    std::vector<int> dummy_matches_value = {12, 5, 6, 1, 22, 5, 7, 10};
    match_chunk_prop<int> chunk_prop =
        match_chunk_prop<int>(&dummy_matches_value);
    chunk_prop.base_address = 0x0;
    chunk_prop.match_count = 0;

    REQUIRE(chunk_prop.base_address ==
            chunk_prop.get_exclusive_end_addr(
                Scan_Utils::E_scan_level::aligned_only));

    REQUIRE(chunk_prop.base_address ==
            chunk_prop.get_exclusive_end_addr(Scan_Utils::E_scan_level::all));
  }

  {

    std::vector<char> dummy_matches_value = {12, 5, 6, 1, 22, 5, 7, 10};
    match_chunk_prop<char> chunk_prop =
        match_chunk_prop<char>(&dummy_matches_value);
    chunk_prop.base_address = 0x10;
    chunk_prop.match_count = 0;

    REQUIRE(chunk_prop.base_address ==
            chunk_prop.get_exclusive_end_addr(
                Scan_Utils::E_scan_level::aligned_only));

    REQUIRE(chunk_prop.base_address ==
            chunk_prop.get_exclusive_end_addr(Scan_Utils::E_scan_level::all));
  }

  // =========================================================
}

TEST_CASE("match_chunk_prop.get_val_at_addr", "[match_chunk_prop]") {

  {
    Scan_Utils::E_scan_level scan_level = Scan_Utils::E_scan_level::all;
    //
    match_storage<int> m_store = match_storage<int>(scan_level);
    // new chunk
    m_store.add_match(0x0, 3);
    m_store.add_match(0x1, 1);
    m_store.add_match(0x2, 123);
    m_store.add_match(0x3, 341);
    m_store.add_match(0x4, 777);
    m_store.add_match(0x5, 666);
    // new chunk
    m_store.add_match(0x7, 5);

    std::vector<match_chunk_prop<int>> chunk_props = {};
    m_store.iterate_chunk(

        [&chunk_props](const match_chunk_prop<int> &chunk_prop) {
          chunk_props.push_back(chunk_prop);
        }

    );
    REQUIRE(2 == chunk_props.size());
    // chunk 0
    REQUIRE(3 == chunk_props[0].get_val_at_addr(0x0, scan_level));
    REQUIRE(1 == chunk_props[0].get_val_at_addr(0x1, scan_level));
    REQUIRE(123 == chunk_props[0].get_val_at_addr(0x2, scan_level));
    REQUIRE(341 == chunk_props[0].get_val_at_addr(0x3, scan_level));
    REQUIRE(777 == chunk_props[0].get_val_at_addr(0x4, scan_level));
    REQUIRE(666 == chunk_props[0].get_val_at_addr(0x5, scan_level));
    // chunk 1
    REQUIRE(5 == chunk_props[1].get_val_at_addr(0x7, scan_level));
  }

  {

    Scan_Utils::E_scan_level scan_level =
        Scan_Utils::E_scan_level::aligned_only;
    ADDR base_addr = sizeof(int) * 2;
    //
    match_storage<int> m_store = match_storage<int>(scan_level);
    // new chunk
    m_store.add_match(base_addr, 3);
    m_store.add_match(base_addr + sizeof(int) * 1, 3);
    m_store.add_match(base_addr + sizeof(int) * 2, 3);
    m_store.add_match(base_addr + sizeof(int) * 3, 5);
    m_store.add_match(base_addr + sizeof(int) * 4, 9);
    m_store.add_match(base_addr + sizeof(int) * 5, 5);
    // new chunk
    m_store.add_match(base_addr + sizeof(int) * 9, 5);
    m_store.add_match(base_addr + sizeof(int) * 10, 11);
    m_store.add_match(base_addr + sizeof(int) * 11, 9);

    std::vector<match_chunk_prop<int>> chunk_props = {};
    m_store.iterate_chunk(

        [&chunk_props](const match_chunk_prop<int> &chunk_prop) {
          chunk_props.push_back(chunk_prop);
        }

    );
    REQUIRE(2 == chunk_props.size());
    // chunk 0
    REQUIRE(3 == chunk_props[0].get_val_at_addr(base_addr, scan_level));
    REQUIRE(3 == chunk_props[0].get_val_at_addr(base_addr + sizeof(int) * 2,
                                                scan_level));

    REQUIRE(5 == chunk_props[0].get_val_at_addr(base_addr + sizeof(int) * 3,
                                                scan_level));
    REQUIRE(9 == chunk_props[0].get_val_at_addr(base_addr + sizeof(int) * 4,
                                                scan_level));
    REQUIRE(5 == chunk_props[0].get_val_at_addr(base_addr + sizeof(int) * 5,
                                                scan_level));
    // chunk 1
    REQUIRE(5 == chunk_props[1].get_val_at_addr(base_addr + sizeof(int) * 9,
                                                scan_level));
    REQUIRE(11 == chunk_props[1].get_val_at_addr(base_addr + sizeof(int) * 10,
                                                 scan_level));
    REQUIRE(9 == chunk_props[1].get_val_at_addr(base_addr + sizeof(int) * 11,
                                                scan_level));
  }
}
