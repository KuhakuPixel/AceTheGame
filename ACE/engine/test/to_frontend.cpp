#include "ACE/to_frontend.hpp"
#include "../third_party/catch.hpp"

TEST_CASE("frontend_print", "[to_frontend]") {
  // reset output buffer just in case
  frontend_output_buff = "";

  // it should be copied to the output buffer
  frontend_print("hello world");
  REQUIRE("hello world" == frontend_output_buff);

  // messages should be appended to the frontend_output_buff
  frontend_print(" mars");
  REQUIRE("hello world mars" == frontend_output_buff);

  frontend_print(" jupiter");
  REQUIRE("hello world mars jupiter" == frontend_output_buff);
}

TEST_CASE("frontend_pop_output", "[to_frontend]") {
  {
    // reset output buffer just in case
    frontend_output_buff = "";

    // it should be copied to the output buffer
    frontend_print("hello world");
    REQUIRE("hello world" == frontend_output_buff);
    REQUIRE("hello world" == frontend_pop_output());
    // after frontend_pop_output, buffer should be emptied out
    REQUIRE("" == frontend_output_buff);
  }

  {

    // reset output buffer just in case
    frontend_output_buff = "";
    //
    frontend_print("hello");
    frontend_print(" world");
    frontend_print(" great");
    REQUIRE("hello world great" == frontend_output_buff);
    REQUIRE("hello world great" == frontend_pop_output());
    REQUIRE("" == frontend_output_buff);

    //
    frontend_print("Mars");
    REQUIRE("Mars" == frontend_pop_output());
    REQUIRE("" == frontend_output_buff);
  }
}

TEST_CASE("frontend_peek_output", "[to_frontend]") {
  {
    // reset output buffer just in case
    frontend_output_buff = "";

    // it should be copied to the output buffer
    frontend_print("hello world");
    REQUIRE("hello world" == frontend_output_buff);
    REQUIRE("hello world" == frontend_peek_output());
    // after frontend_peek_output, buffer still exist
    REQUIRE("hello world" == frontend_output_buff);
  }

  {

    // reset output buffer just in case
    frontend_output_buff = "";
    //
    frontend_print("hello");
    frontend_print(" world");
    frontend_print(" great");
    REQUIRE("hello world great" == frontend_output_buff);
    REQUIRE("hello world great" == frontend_peek_output());

    REQUIRE("hello world great" == frontend_output_buff);

    //
    frontend_print(" Mars");
    // should still contain the output from previous
    // frontend_print since it hasn't been cleared out
    REQUIRE("hello world great Mars" == frontend_peek_output());
    REQUIRE("hello world great Mars" == frontend_output_buff);
  }
}
