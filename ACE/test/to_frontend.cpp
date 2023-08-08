#include "ACE/to_frontend.hpp"
#include "../third_party/catch.hpp"

TEST_CASE("frontend::print", "[to_frontend]") {

  frontend::pop_buff();

  // it should be copied to the output buffer
  frontend::print("hello world");
  REQUIRE("hello world" == frontend::get_buff());

  // messages should be appended to the frontend::get_buff()
  frontend::print(" mars");
  REQUIRE("hello world mars" == frontend::get_buff());

  frontend::print(" jupiter");
  REQUIRE("hello world mars jupiter" == frontend::get_buff());
}

TEST_CASE("frontend::pop_buff", "[to_frontend]") {
  {

    frontend::pop_buff();

    // it should be copied to the output buffer
    frontend::print("hello world");
    REQUIRE("hello world" == frontend::get_buff());
    REQUIRE("hello world" == frontend::pop_buff());
    // after frontend::pop_buff, buffer should be emptied out
    REQUIRE("" == frontend::get_buff());
  }

  {

    frontend::pop_buff();
    //
    frontend::print("hello");
    frontend::print(" world");
    frontend::print(" great");
    REQUIRE("hello world great" == frontend::get_buff());
    REQUIRE("hello world great" == frontend::pop_buff());
    REQUIRE("" == frontend::get_buff());

    //
    frontend::print("Mars");
    REQUIRE("Mars" == frontend::pop_buff());
    REQUIRE("" == frontend::get_buff());
  }
}

TEST_CASE("frontend::get_buff", "[to_frontend]") {

  {
    frontend::pop_buff();
    frontend::print("hello");
    REQUIRE("hello" == frontend::get_buff());
    frontend::print(" world");
    REQUIRE("hello world" == frontend::get_buff());
    frontend::print(" great");
    REQUIRE("hello world great" == frontend::get_buff());
  }
}

TEST_CASE("frontend::log", "[to_frontend]") {
  {

    frontend::pop_buff();
    frontend::log("GoodBye");
    // shouldn't store anything to buffer
    REQUIRE("" == frontend::get_buff());
    // it should be copied to the output buffer
    frontend::print("hello world");
    REQUIRE("hello world" == frontend::get_buff());
  }
}
