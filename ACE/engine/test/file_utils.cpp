#include "ACE/file_utils.hpp"
#include "../third_party/catch.hpp"
#include <string>
#include <vector>
TEST_CASE("read_file", "[file_utils]") {

  std::vector<std::string> file_content =
      read_file("test_files/read_file_test/Add.hack");

  REQUIRE(6 == file_content.size());
  // Test content
  REQUIRE("0000000000000010" == file_content[0]);
  REQUIRE("1110110000010000" == file_content[1]);
  REQUIRE("0000000000000011" == file_content[2]);
  REQUIRE("1110000010010000" == file_content[3]);
  REQUIRE("0000000000000000" == file_content[4]);
  REQUIRE("1110001100001000" == file_content[5]);

  // ====================================================
  file_content = read_file("test_files/read_file_test/Add.hack", 1000);

  REQUIRE(6 == file_content.size());
  // Test content
  REQUIRE("0000000000000010" == file_content[0]);
  REQUIRE("1110110000010000" == file_content[1]);
  REQUIRE("0000000000000011" == file_content[2]);
  REQUIRE("1110000010010000" == file_content[3]);
  REQUIRE("0000000000000000" == file_content[4]);
  REQUIRE("1110001100001000" == file_content[5]);

  // ====================================================
  // test when buffer size is less than the line
  // (only allow 8 char max per line) (1 extra for null terminator)
  file_content = read_file("test_files/read_file_test/Add.hack", 9);

  REQUIRE(12 == file_content.size());
  // Test content
  REQUIRE("00000000" == file_content[0]);
  REQUIRE("00000010" == file_content[1]);
  //
  REQUIRE("11101100" == file_content[2]);
  REQUIRE("00010000" == file_content[3]);

  REQUIRE("00000000" == file_content[4]);
  REQUIRE("00000011" == file_content[5]);

  REQUIRE("11100000" == file_content[6]);
  REQUIRE("10010000" == file_content[7]);

  REQUIRE("00000000" == file_content[8]);
  REQUIRE("00000000" == file_content[9]);

  REQUIRE("11100011" == file_content[10]);
  REQUIRE("00001000" == file_content[11]);
}

TEST_CASE("file_exist", "[file_exist]") {
  REQUIRE(true == file_exist("test_files/read_file_test/Add.hack"));
  REQUIRE(true == file_exist("test_files/read_file_test/Max.hack"));

  REQUIRE(false == file_exist("test_files/read_file_test/must_not_exist"));
  REQUIRE(false == file_exist("test_files/read_file_test/does_not_exist"));
}

TEST_CASE("write_file", "[file_utils]") {
  {
    std::vector<std::string> content = {"hello", "world"};
    write_file("file_for_test", content);

    // check if it has been written
    std::vector<std::string> read_content = read_file("file_for_test");
    REQUIRE(read_content.size() == 2);
    REQUIRE("hello" == read_content[0]);
    REQUIRE("world" == read_content[1]);
  }

  {
    std::vector<std::string> content = {"hello", "world", "goodbye"};
    write_file("file_for_test", content);

    std::vector<std::string> read_content = read_file("file_for_test");
    REQUIRE(read_content.size() == 3);
    REQUIRE("hello" == read_content[0]);
    REQUIRE("world" == read_content[1]);
    REQUIRE("goodbye" == read_content[2]);
  }

  {
    std::vector<std::string> content = {""};
    write_file("file_for_test", content);

    std::vector<std::string> read_content = read_file("file_for_test");
    REQUIRE(read_content.size() == 1);
    REQUIRE("" == read_content[0]);
  }

  {
    // test only write one line
    write_file("file_for_test", "this is one line");

    std::vector<std::string> read_content = read_file("file_for_test");
    REQUIRE(read_content.size() == 1);
    REQUIRE("this is one line" == read_content[0]);
  }
}

TEST_CASE("list_directories", "[file_utils]") {

  std::vector<std::string> directories;

  directories = list_directories("test_files/read_file_test/");
  REQUIRE(0 == directories.size());
  directories = list_directories("test_files/read_file_test");
  REQUIRE(0 == directories.size());

  directories = list_directories("test_files/list_only_dir");
  REQUIRE_THAT(std::vector<std::string>({"dir_2", "dir_1", "_some_dir"}),
               Catch::UnorderedEquals(directories));

  directories = list_directories("test_files/list_only_dir/");
  REQUIRE_THAT(std::vector<std::string>({"dir_2", "dir_1", "_some_dir"}),
               Catch::UnorderedEquals(directories));

  directories = list_directories("test_files/list_only_dir//");
  REQUIRE_THAT(std::vector<std::string>({"dir_2", "dir_1", "_some_dir"}),
               Catch::UnorderedEquals(directories));
}
