#include "../src/thread_continuous.hpp"
#include "../third_party/catch.hpp"

TEST_CASE("get_thread_running", "[thread_continuous]") {
  {
    thread_continuous th = thread_continuous(

        []() -> void {}

    );
    REQUIRE(false == th.get_thread_running());
    REQUIRE(0 == th.start());
    REQUIRE(true == th.get_thread_running());
    REQUIRE(0 == th.stop());
    REQUIRE(false == th.get_thread_running());
  }
}

TEST_CASE("thread_continuous_start_stop", "[thread_continuous]") {
  /*
   * assertions must happen
   * after stopping the running thread
   * to avoid race conditions
   * */

  {
    int i = 0;
    thread_continuous th = thread_continuous(

        [&i]() -> void { i++; }

    );
    assert(i == 0);
    th.start();
    th.stop();
    // it is guaranteed that function will be called
    // at least once when start is called
    REQUIRE(i > 0);
  }

  {
    int i = 0;
    thread_continuous th = thread_continuous(

        [&i]() -> void { i--; }

    );
    assert(i == 0);
    th.start();
    th.stop();
    // it is guaranteed that function will be called
    // at least once when start is called
    REQUIRE(i < 0);
  }
}

TEST_CASE("thread_continuous_only_start", "[thread_continuous]") {
  /*
   * no thread_continuous.stop?
   * it shouldn't be a problem
   * and shouldn't leak memory
   * */
  thread_continuous th = thread_continuous(

      []() -> void {}

  );
  REQUIRE(false == th.get_thread_running());
  REQUIRE(0 == th.start());
  REQUIRE(true == th.get_thread_running());
}

TEST_CASE("thread_continuous_start_stop_fail", "[thread_continuous]") {
  {
    thread_continuous th = thread_continuous(

        []() -> void {}

    );
    // cannot start thread twice
    // without stopping first
    REQUIRE(0 == th.start());
    REQUIRE(true == th.get_thread_running());
    REQUIRE(-1 == th.start());
    REQUIRE(true == th.get_thread_running());
    // stop previous one first
    REQUIRE(0 == th.stop());
    REQUIRE(false == th.get_thread_running());
    // then it can be started
    REQUIRE(0 == th.start());
    REQUIRE(true == th.get_thread_running());
    REQUIRE(0 == th.stop());
    REQUIRE(false == th.get_thread_running());
  }
  {
    thread_continuous th = thread_continuous(

        []() -> void {}

    );
    // stopping thread that
    // never started
    REQUIRE(-1 == th.stop());
    REQUIRE(false == th.get_thread_running());
    // should be fine afterward
    REQUIRE(0 == th.start());
    REQUIRE(true == th.get_thread_running());
    REQUIRE(0 == th.stop());
    REQUIRE(false == th.get_thread_running());
  }

  {
    thread_continuous th = thread_continuous(

        []() -> void {}

    );
    REQUIRE(0 == th.start());
    REQUIRE(true == th.get_thread_running());
    REQUIRE(0 == th.stop());
    REQUIRE(false == th.get_thread_running());
    // stopping multiple of times
    // without starting a new one
    // shouldn't work
    REQUIRE(-1 == th.stop());
    REQUIRE(false == th.get_thread_running());
  }
}

TEST_CASE("thread_continuous_copy_constructor", "[thread_continuous]") {
  /*
   * test the custom copy constructor
   * */

  {
    thread_continuous th = thread_continuous(

        []() -> void {}

    );
    REQUIRE(false == th.get_thread_running());
    REQUIRE(0 == th.start());
    REQUIRE(true == th.get_thread_running());
    REQUIRE(0 == th.stop());
    REQUIRE(false == th.get_thread_running());

    // copy previous one
    thread_continuous th_2 = thread_continuous(th);
    REQUIRE(false == th_2.get_thread_running());
    REQUIRE(0 == th_2.start());
    REQUIRE(true == th_2.get_thread_running());
    REQUIRE(0 == th_2.stop());
    REQUIRE(false == th_2.get_thread_running());
  }

  {
    int i = 0;
    thread_continuous th = thread_continuous(

        [&i]() -> void { i++; }

    );
    assert(i == 0);
    th.start();
    th.stop();
    REQUIRE(i > 0);
    // test copy constructor
    // nothing bad should happen .......
    // and it will still use the same function as previous
    // one
    i = 0;
    REQUIRE(i == 0);

    thread_continuous th_2 = thread_continuous(th);
    th_2.start();
    th_2.stop();
    REQUIRE(i > 0);
  }
}
