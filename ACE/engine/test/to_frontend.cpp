#include "ACE/to_frontend.hpp"
#include "../third_party/catch.hpp"

TEST_CASE("frontend::print", "[to_frontend]") {

  frontend::pop_output();

  // it should be copied to the output buffer
  frontend::print("hello world");
  REQUIRE("hello world" == frontend::peek_output());

  // messages should be appended to the frontend::peek_output()
  frontend::print(" mars");
  REQUIRE("hello world mars" == frontend::peek_output());

  frontend::print(" jupiter");
  REQUIRE("hello world mars jupiter" == frontend::peek_output());
}

TEST_CASE("frontend::pop_output", "[to_frontend]") {
  {

    frontend::pop_output();

    // it should be copied to the output buffer
    frontend::print("hello world");
    REQUIRE("hello world" == frontend::peek_output());
    REQUIRE("hello world" == frontend::pop_output());
    // after frontend::pop_output, buffer should be emptied out
    REQUIRE("" == frontend::peek_output());
  }

  {

    frontend::pop_output();
    //
    frontend::print("hello");
    frontend::print(" world");
    frontend::print(" great");
    REQUIRE("hello world great" == frontend::peek_output());
    REQUIRE("hello world great" == frontend::pop_output());
    REQUIRE("" == frontend::peek_output());

    //
    frontend::print("Mars");
    REQUIRE("Mars" == frontend::pop_output());
    REQUIRE("" == frontend::peek_output());
  }
}

TEST_CASE("frontend::peek_output", "[to_frontend]") {

  {
    frontend::pop_output();
    frontend::print("hello");
    REQUIRE("hello" == frontend::peek_output());
    frontend::print(" world");
    REQUIRE("hello world" == frontend::peek_output());
    frontend::print(" great");
    REQUIRE("hello world great" == frontend::peek_output());
  }
}

TEST_CASE("frontend::log", "[to_frontend]") {
  {

    frontend::pop_output();
    frontend::log("GoodBye");
    // shouldn't store anything to buffer
    REQUIRE("" == frontend::peek_output());
    // it should be copied to the output buffer
    frontend::print("hello world");
    REQUIRE("hello world" == frontend::peek_output());
  }
}
