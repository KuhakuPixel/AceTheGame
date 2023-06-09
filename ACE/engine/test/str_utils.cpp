#include "ACE/str_utils.hpp"
#include "ACE/ace_type.hpp"
#include "../third_party/catch.hpp"
#include <limits.h>
#include <string>
#include <vector>
TEST_CASE("str_split", "[str_utils]") {

  std::vector<std::string> splitted_str = {};
  // ================ test split by space ===================
  splitted_str = str_split("hello world", " ");
  REQUIRE(std::vector<std::string>({"hello", "world"}) == splitted_str);

  splitted_str = str_split("hello       world    ", " ");
  REQUIRE(std::vector<std::string>({"hello", "world"}) == splitted_str);

  splitted_str = str_split("       hello       world    ", " ");
  REQUIRE(std::vector<std::string>({"hello", "world"}) == splitted_str);
  // ==================== test splitting with 2 delimiter ===========
  splitted_str = str_split("scott>=tiger", ">=");
  REQUIRE(std::vector<std::string>({"scott", "tiger"}) == splitted_str);

  splitted_str = str_split("scott>=tiger>=mushroom", ">=");
  REQUIRE(std::vector<std::string>({"scott", "tiger", "mushroom"}) ==
          splitted_str);

  // notice the added space behind scott
  splitted_str = str_split(" scott>=tiger", ">=");
  REQUIRE(std::vector<std::string>({" scott", "tiger"}) == splitted_str);

  // delimter at the end
  splitted_str = str_split("scott>=tiger>=mushroom>=", ">=");
  REQUIRE(std::vector<std::string>({"scott", "tiger", "mushroom"}) ==
          splitted_str);

  // delimter at the start
  splitted_str = str_split(">=scott>=tiger>=mushroom>=", ">=");
  REQUIRE(std::vector<std::string>({"scott", "tiger", "mushroom"}) ==
          splitted_str);
  // ===============================================================
}

TEST_CASE("string_is_numeric", "[str_utils]") {

  REQUIRE(true == str_is_numeric("22212"));
  REQUIRE(true == str_is_numeric("0333109212"));

  REQUIRE(true == str_is_numeric("-222"));
  REQUIRE(true == str_is_numeric("-022"));
  REQUIRE(true == str_is_numeric("+222"));
  REQUIRE(true == str_is_numeric("-21"));
  REQUIRE(true == str_is_numeric("-2"));
  REQUIRE(true == str_is_numeric("+2"));

  REQUIRE(false == str_is_numeric("2+"));
  REQUIRE(false == str_is_numeric("2-"));

  REQUIRE(false == str_is_numeric("033310e212"));
  REQUIRE(false == str_is_numeric("xx010e212"));
  REQUIRE(false == str_is_numeric("2-2"));
  REQUIRE(false == str_is_numeric("-2------2"));
  REQUIRE(false == str_is_numeric("+2+++2--2"));

  REQUIRE(false == str_is_numeric("-"));
  REQUIRE(false == str_is_numeric("+"));
}

TEST_CASE("str_extract_between_chars", "[str_utils]") {
  size_t first_c_idx = -1;
  size_t second_c_idx = -1;
  bool pair_is_found = false;

  REQUIRE("" == str_extract_between_chars("()", '(', ')')

  );
  REQUIRE("hello" == str_extract_between_chars("hi(hello)", '(', ')')

  );

  REQUIRE("hello this" == str_extract_between_chars("hi(hello this)", '(', ')')

  );

  REQUIRE(" hello world)" ==
          str_extract_between_chars("hi( hello world))", '(', ')')

  );

  REQUIRE("" == str_extract_between_chars("hi()", '(', ')'));
  REQUIRE("" == str_extract_between_chars("()", '(', ')'));

  // ===================== test when inclusive =====================
  //

  REQUIRE("()" == str_extract_between_chars("()", '(', ')', &first_c_idx,
                                            &second_c_idx, true, &pair_is_found)

  );
  REQUIRE(true == pair_is_found);
  REQUIRE(0 == first_c_idx);
  REQUIRE(1 == second_c_idx);

  // ===============================
  REQUIRE(
      "(911)" == str_extract_between_chars("call (911)", '(', ')', &first_c_idx,
                                           &second_c_idx, true)

  );

  REQUIRE(true == pair_is_found);
  REQUIRE(5 == first_c_idx);
  REQUIRE(9 == second_c_idx);

  // ===============================
  REQUIRE(
      "'911'" == str_extract_between_chars("call '911'", '\'', '\'',
                                           &first_c_idx, &second_c_idx, true)

  );
  REQUIRE(true == pair_is_found);
  REQUIRE(5 == first_c_idx);
  REQUIRE(9 == second_c_idx);

  // ===============================
  REQUIRE("(hello world))" == str_extract_between_chars("hi(hello world))", '(',
                                                        ')', &first_c_idx,
                                                        &second_c_idx, true)

  );

  REQUIRE(true == pair_is_found);
  REQUIRE(2 == first_c_idx);
  REQUIRE(15 == second_c_idx);
  // =================== test when not found ======================
  REQUIRE("" == str_extract_between_chars("call 911)", '(', ')', &first_c_idx,
                                          &second_c_idx, true, &pair_is_found)

  );
  REQUIRE(false == pair_is_found);

  //
  REQUIRE("" == str_extract_between_chars("call 911", '(', ')', &first_c_idx,
                                          &second_c_idx, true)

  );
  REQUIRE(false == pair_is_found);

  //
  REQUIRE("" == str_extract_between_chars(")(", '(', ')', &first_c_idx,
                                          &second_c_idx, true)

  );
  REQUIRE(false == pair_is_found);
}

TEST_CASE("str_get_substr_inclusive", "[str_utils]") {
  REQUIRE("world" == str_get_substr_inclusive("hello world now", 6, 10));
  REQUIRE("/some_path" == str_get_substr_inclusive("hello /some_path", 6, 15));
  REQUIRE("good" == str_get_substr_inclusive("goodbye world", 0, 3));
}
TEST_CASE("str_extract_first_c_to_end", "[str_utils]") {

  REQUIRE("/some_path/program" ==
          str_extract_first_c_to_end("test test /some_path/program", '/', NULL,
                                     true));

  REQUIRE("some_path/program" ==
          str_extract_first_c_to_end("test test /some_path/program", '/', NULL,
                                     false));

  REQUIRE("/some_path/programwith space" ==
          str_extract_first_c_to_end("test test /some_path/programwith space",
                                     '/', NULL, true));
}

TEST_CASE("str_vector_to_c_str_arr_new", "[str_utils]") {

  size_t c_str_arr_length = 0;

  {
    char **arr = str_vector_to_c_str_arr_new(

        std::vector<std::string>({}), &c_str_arr_length

    );
    REQUIRE(0 == c_str_arr_length);
    str_arr_free(arr, c_str_arr_length);
  }

  {
    char **arr = str_vector_to_c_str_arr_new(

        std::vector<std::string>({""}), &c_str_arr_length

    );
    REQUIRE(1 == c_str_arr_length);
    REQUIRE("" == std::string(arr[0]));

    str_arr_free(arr, c_str_arr_length);
  }
  {
    char **arr = str_vector_to_c_str_arr_new(

        std::vector<std::string>({"hello", "world"}), &c_str_arr_length

    );
    REQUIRE(2 == c_str_arr_length);
    REQUIRE("hello" == std::string(arr[0]));
    REQUIRE("world" == std::string(arr[1]));

    str_arr_free(arr, c_str_arr_length);
  }

  {
    char **arr = str_vector_to_c_str_arr_new(

        std::vector<std::string>({"goodbye", "dear", "world"}),
        &c_str_arr_length

    );
    REQUIRE(3 == c_str_arr_length);
    REQUIRE("goodbye" == std::string(arr[0]));
    REQUIRE("dear" == std::string(arr[1]));
    REQUIRE("world" == std::string(arr[2]));

    str_arr_free(arr, c_str_arr_length);
  }
}

TEST_CASE("str_vector_to_c_str_arr_nulled_new", "[str_utils]") {

  size_t arr_length = 0;

  {
    char **arr = str_vector_to_c_str_arr_nulled_new(

        std::vector<std::string>({}), &arr_length

    );
    REQUIRE(1 == arr_length);
    REQUIRE(NULL == arr[0]);

    str_arr_free(arr, arr_length);
  }

  {
    char **arr = str_vector_to_c_str_arr_nulled_new(

        std::vector<std::string>({"programming is good"}), &arr_length

    );
    REQUIRE(2 == arr_length);

    REQUIRE("programming is good" == std::string(arr[0]));
    REQUIRE(NULL == arr[1]);

    str_arr_free(arr, arr_length);
  }

  {
    char **arr = str_vector_to_c_str_arr_nulled_new(

        std::vector<std::string>({"goodbye", "dear", "world"}), &arr_length

    );
    REQUIRE(4 == arr_length);
    REQUIRE(4 == arr_length);
    REQUIRE("goodbye" == std::string(arr[0]));
    REQUIRE("dear" == std::string(arr[1]));
    REQUIRE("world" == std::string(arr[2]));
    REQUIRE(NULL == arr[3]);

    str_arr_free(arr, arr_length);
  }
}

TEST_CASE("str_check_strtol", "[str_utils]") {
  {
    /*
     * testing possible conversion
     * */
    long val = -1;
    REQUIRE(E_strtol_convert_res::possible ==
            str_check_strtol("1212", E_num_type::INT, 10, &val));
    REQUIRE(1212 == val);

    REQUIRE(E_strtol_convert_res::possible ==
            str_check_strtol("12120", E_num_type::SHORT, 10, &val));
    REQUIRE(12120 == val);

    REQUIRE(E_strtol_convert_res::possible ==
            str_check_strtol("6666", E_num_type::SHORT, 10, &val));
    REQUIRE(6666 == val);

    REQUIRE(E_strtol_convert_res::possible ==
            str_check_strtol("66666", E_num_type::LONG, 10, &val));
    REQUIRE(66666 == val);

    REQUIRE(E_strtol_convert_res::possible ==
            str_check_strtol("00111011101", E_num_type::LONG, 2, &val));
    REQUIRE(477 == val);

    // should'nt segfault
    REQUIRE(E_strtol_convert_res::possible ==
            str_check_strtol("00111011101", E_num_type::LONG, 2, NULL));

    REQUIRE(E_strtol_convert_res::possible ==
            str_check_strtol("123321", E_num_type::LONG, 10, NULL));
  }
  /*
   * converting null with strtol
   * */
  REQUIRE(E_strtol_convert_res::str_is_NULL ==
          str_check_strtol(NULL, E_num_type::INT, 10));
  REQUIRE(E_strtol_convert_res::str_is_NULL ==
          str_check_strtol(NULL, E_num_type::LONG, 8));
  REQUIRE(E_strtol_convert_res::str_is_NULL ==
          str_check_strtol(NULL, E_num_type::SHORT, 2));
  /*
   * overflow
   * */

  REQUIRE(E_strtol_convert_res::underflow ==
          str_check_strtol("-999999999999999999", E_num_type::SHORT, 10));
  REQUIRE(E_strtol_convert_res::overflow ==
          str_check_strtol("9999999999999909999", E_num_type::SHORT, 10));

  REQUIRE(
      E_strtol_convert_res::underflow ==
      str_check_strtol("-99999999999999999999999999999", E_num_type::LONG, 10));
  REQUIRE(
      E_strtol_convert_res::overflow ==
      str_check_strtol("99999999999999999999999999999", E_num_type::LONG, 10));

  REQUIRE(
      E_strtol_convert_res::underflow ==
      str_check_strtol("-99999999999999999999999999999", E_num_type::INT, 10));
  REQUIRE(
      E_strtol_convert_res::overflow ==
      str_check_strtol("99999999999999999999999999999", E_num_type::INT, 10));
  /*
   *
   * */

  REQUIRE(E_strtol_convert_res::non_numeric ==
          str_check_strtol("12j3", E_num_type::INT, 10));
  REQUIRE(E_strtol_convert_res::non_numeric ==
          str_check_strtol("j123", E_num_type::INT, 10));
  REQUIRE(E_strtol_convert_res::non_numeric ==
          str_check_strtol("123pp", E_num_type::INT, 10));
}

TEST_CASE("str_check_strtol_byte", "[str_utils]") {

  /*
   * testing possible conversion
   * */
  long val = -1;
  REQUIRE(E_strtol_convert_res::possible ==
          str_check_strtol("12", E_num_type::BYTE, 10, &val));
  REQUIRE(12 == val);

  REQUIRE(E_strtol_convert_res::possible ==
          str_check_strtol("-12", E_num_type::BYTE, 10, &val));
  REQUIRE(-12 == val);
  // overflow
  REQUIRE(E_strtol_convert_res::overflow ==
          str_check_strtol(

              std::to_string(SCHAR_MAX + 1), E_num_type::BYTE, 10, &val));

  REQUIRE(E_strtol_convert_res::overflow ==
          str_check_strtol(

              std::to_string(SCHAR_MAX + 3), E_num_type::BYTE, 10, &val));
  // underflow
  //
  REQUIRE(E_strtol_convert_res::underflow ==
          str_check_strtol(

              std::to_string(SCHAR_MIN - 1), E_num_type::BYTE, 10, &val));

  REQUIRE(E_strtol_convert_res::underflow ==
          str_check_strtol(

              std::to_string(SCHAR_MIN - 3), E_num_type::BYTE, 10, &val));
}
