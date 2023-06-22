#include "ACE/to_frontend.hpp"
#include "../third_party/catch.hpp"

TEST_CASE("frontend::print", "[to_frontend]") {
  // reset output buffer just in case
  frontend::output_buff = "";

  // it should be copied to the output buffer
  frontend::print("hello world");
  REQUIRE("hello world" == frontend::output_buff);

  // messages should be appended to the frontend::output_buff
  frontend::print(" mars");
  REQUIRE("hello world mars" == frontend::output_buff);

  frontend::print(" jupiter");
  REQUIRE("hello world mars jupiter" == frontend::output_buff);
}

TEST_CASE("frontend::pop_output", "[to_frontend]") {
  {
    // reset output buffer just in case
    frontend::output_buff = "";

    // it should be copied to the output buffer
    frontend::print("hello world");
    REQUIRE("hello world" == frontend::output_buff);
    REQUIRE("hello world" == frontend::pop_output());
    // after frontend::pop_output, buffer should be emptied out
    REQUIRE("" == frontend::output_buff);
  }

  {

    // reset output buffer just in case
    frontend::output_buff = "";
    //
    frontend::print("hello");
    frontend::print(" world");
    frontend::print(" great");
    REQUIRE("hello world great" == frontend::output_buff);
    REQUIRE("hello world great" == frontend::pop_output());
    REQUIRE("" == frontend::output_buff);

    //
    frontend::print("Mars");
    REQUIRE("Mars" == frontend::pop_output());
    REQUIRE("" == frontend::output_buff);
  }
}

TEST_CASE("frontend::peek_output", "[to_frontend]") {
  {
    // reset output buffer just in case
    frontend::output_buff = "";

    // it should be copied to the output buffer
    frontend::print("hello world");
    REQUIRE("hello world" == frontend::output_buff);
    REQUIRE("hello world" == frontend::peek_output());
    // after frontend::peek_output, buffer still exist
    REQUIRE("hello world" == frontend::output_buff);
  }

  {

    // reset output buffer just in case
    frontend::output_buff = "";
    //
    frontend::print("hello");
    frontend::print(" world");
    frontend::print(" great");
    REQUIRE("hello world great" == frontend::output_buff);
    REQUIRE("hello world great" == frontend::peek_output());

    REQUIRE("hello world great" == frontend::output_buff);

    //
    frontend::print(" Mars");
    // should still contain the output from previous
    // frontend::print since it hasn't been cleared out
    REQUIRE("hello world great Mars" == frontend::peek_output());
    REQUIRE("hello world great Mars" == frontend::output_buff);
  }
}

TEST_CASE("frontend::log", "[to_frontend]") {
  {
    // reset output buffer just in case
    frontend::output_buff = "";
    frontend::log("GoodBye");
    // shouldn't store anything to buffer
    REQUIRE("" == frontend::output_buff);
    // it should be copied to the output buffer
    frontend::print("hello world");
    REQUIRE("hello world" == frontend::peek_output());
  }
}
