#include "ACE/proc_rw.hpp"
#include "ACE/proc_create.hpp" // for proc_fork_busy_child
#include "../third_party/catch.hpp"
#include <limits.h>     // for INT_MAX
#include <sys/signal.h> // for SIGKILL
#include <unistd.h>     // for kill

/*
 * reading mem method used for testing process_rw.read_mem_new
 * it varies depending on different platform
 * */
Scan_Utils::E_read_mem_method read_mem_method =
#ifdef __ANDROID__
    Scan_Utils::E_read_mem_method::with_process_vm_readv;
#else
    Scan_Utils::E_read_mem_method::with_proc_pid_mem_file;
#endif

TEST_CASE("proc_read", "[proc_rw]") {

  // set value
  int arr[1000] = {0};
  arr[1] = 3;
  arr[2] = 4;
  arr[5] = 0;
  arr[666] = 0;
  arr[999] = 123;
  //

  int tracee_pid = proc_fork_busy_child();
  proc_rw<int> process_rw = proc_rw<int>(tracee_pid);

  // get value from tracee and asserts
  REQUIRE(3 == process_rw.retrieve_val((byte *)&arr[1]));
  REQUIRE(4 == process_rw.retrieve_val((byte *)&arr[2]));
  REQUIRE(0 == process_rw.retrieve_val((byte *)&arr[5]));

  REQUIRE(0 == process_rw.retrieve_val((byte *)&arr[666]));

  REQUIRE(123 == process_rw.retrieve_val((byte *)&arr[999]));
  // kill tracee
  kill(tracee_pid, SIGKILL);
}

TEST_CASE("proc_write", "[proc_rw]") {

  // set value
  int arr[1000] = {0};
  //

  int tracee_pid = proc_fork_busy_child();

  proc_rw<int> process_rw = proc_rw<int>(tracee_pid);
  // write value
  process_rw.write_val((byte *)&arr[0], 100);
  process_rw.write_val((byte *)&arr[1], 123);
  process_rw.write_val((byte *)&arr[2], 666);
  process_rw.write_val((byte *)&arr[666], 667);
  process_rw.write_val((byte *)&arr[999], 999);

  // get value from tracee and asserts
  REQUIRE(100 == process_rw.retrieve_val((byte *)&arr[0]));

  REQUIRE(123 == process_rw.retrieve_val((byte *)&arr[1]));

  REQUIRE(666 == process_rw.retrieve_val((byte *)&arr[2]));

  REQUIRE(667 == process_rw.retrieve_val((byte *)&arr[666]));

  REQUIRE(999 == process_rw.retrieve_val((byte *)&arr[999]));
  // kill tracee
  kill(tracee_pid, SIGKILL);
}

TEST_CASE("read_mem_new", "[proc_rw]") {

  // set value
  int arr[1000] = {0};
  arr[1] = 3;
  arr[2] = 4;
  arr[5] = 0;
  arr[6] = -123;
  arr[666] = 0;
  arr[999] = INT_MAX;
  //

  int tracee_pid = proc_fork_busy_child();
  proc_rw<int> process_rw = proc_rw<int>(tracee_pid);

  // get value from tracee and asserts
  int read_buff[1000];
  ssize_t read_length = process_rw.read_mem_new(
      (byte *)&arr[0], sizeof(arr), (byte *)read_buff, read_mem_method);

  // assertions
  REQUIRE(sizeof(arr) == read_length);
  REQUIRE(3 == read_buff[1]);
  REQUIRE(4 == read_buff[2]);
  REQUIRE(0 == read_buff[5]);
  REQUIRE(-123 == read_buff[6]);
  REQUIRE(0 == read_buff[666]);
  REQUIRE(INT_MAX == read_buff[999]);
  // kill tracee
  kill(tracee_pid, SIGKILL);
}

TEST_CASE("read_mem_new_short", "[proc_rw]") {

  // set value
  short arr[1000] = {0};
  arr[1] = 3;
  arr[2] = 4;
  arr[5] = 0;
  arr[6] = -123;
  arr[666] = SHRT_MAX;
  arr[999] = SHRT_MIN;
  //

  int tracee_pid = proc_fork_busy_child();

  proc_rw<short> process_rw = proc_rw<short>(tracee_pid);
  // get value from tracee and asserts
  short read_buff[1000];

  ssize_t read_length = process_rw.read_mem_new(
      (byte *)&arr[0], sizeof(arr), (byte *)read_buff, read_mem_method);

  // assertions
  REQUIRE(sizeof(arr) == read_length);
  REQUIRE(3 == read_buff[1]);
  REQUIRE(4 == read_buff[2]);
  REQUIRE(0 == read_buff[5]);
  REQUIRE(-123 == read_buff[6]);
  REQUIRE(SHRT_MAX == read_buff[666]);
  REQUIRE(SHRT_MIN == read_buff[999]);
  // kill tracee
  kill(tracee_pid, SIGKILL);
}
