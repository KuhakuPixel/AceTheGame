#include "../src/proc_stat.hpp"
#include "../src/error.hpp"
#include "../src/str_utils.hpp"
#include "../third_party/catch.hpp"
#include <spawn.h>
#include <string.h>
#include <string>
#include <sys/wait.h>
#include <unistd.h>
#include <vector>
TEST_CASE("parse_proc_stat_line", "[proc_stat]") {

  /*
   * testing when  the filename of executable has weird characters
   * that is legal such as space, bracket and ect
   * */
  struct proc_info ps_info = parse_proc_stat_line(
      "17226 (coin prog) S 10339 17226 10339 34823 17226 4194304 85 0 0 0 0 0 "
      "0 0 20 0 1 0 2326959 2838528 255 18446744073709551615 94117045854208 "
      "94117045854661 140735276856640 0 0 0 0 0 0 1 0 0 17 1 0 0 0 0 0 "
      "94117045865904 94117045866512 94117048700928 140735276859744 "
      "140735276859756 140735276859756 140735276863468 0");

  REQUIRE(17226 == ps_info.pid);
  REQUIRE("coin prog" == ps_info.proc_name);
  REQUIRE('S' == ps_info.state);
  REQUIRE(2326959 == ps_info.start_time);
  // ===================================================================

  ps_info = parse_proc_stat_line(
      "17226 ( coin prog ) S 10339 17226 10339 34823 17226 4194304 85 0 0 0 0 "
      "0 "
      "0 0 20 0 1 0 2326959 2838528 255 18446744073709551615 94117045854208 "
      "94117045854661 140735276856640 0 0 0 0 0 0 1 0 0 17 1 0 0 0 0 0 "
      "94117045865904 94117045866512 94117048700928 140735276859744 "
      "140735276859756 140735276859756 140735276863468 0");

  REQUIRE(17226 == ps_info.pid);
  REQUIRE(" coin prog " == ps_info.proc_name);
  REQUIRE('S' == ps_info.state);
  REQUIRE(2326959 == ps_info.start_time);

  // ===================================================================
  ps_info = parse_proc_stat_line(
      "17226 ( coin prog)) S 10339 17226 10339 34823 17226 4194304 85 0 0 0 0 "
      "0 "
      "0 0 20 0 1 0 2326959 2838528 255 18446744073709551615 94117045854208 "
      "94117045854661 140735276856640 0 0 0 0 0 0 1 0 0 17 1 0 0 0 0 0 "
      "94117045865904 94117045866512 94117048700928 140735276859744 "
      "140735276859756 140735276859756 140735276863468 0");

  REQUIRE(17226 == ps_info.pid);
  REQUIRE(" coin prog)" == ps_info.proc_name);
  REQUIRE('S' == ps_info.state);

  // ===================================================================
  ps_info = parse_proc_stat_line(
      "17226 ((1_prog)) S 10339 17226 10339 34823 17226 4194304 85 0 0 0 0 "
      "0 "
      "0 0 20 0 1 0 2326959 2838528 255 18446744073709551615 94117045854208 "
      "94117045854661 140735276856640 0 0 0 0 0 0 1 0 0 17 1 0 0 0 0 0 "
      "94117045865904 94117045866512 94117048700928 140735276859744 "
      "140735276859756 140735276859756 140735276863468 0");

  REQUIRE(17226 == ps_info.pid);
  REQUIRE("(1_prog)" == ps_info.proc_name);
  REQUIRE('S' == ps_info.state);
  // ===================================================================
  ps_info = parse_proc_stat_line(
      "17226 ((1_prog__)) S 10339 17226 10339 34823 17226 4194304 85 0 0 0 0 "
      "0 "
      "0 0 20 0 1 0 2326959 2838528 255 18446744073709551615 94117045854208 "
      "94117045854661 140735276856640 0 0 0 0 0 0 1 0 0 17 1 0 0 0 0 0 "
      "94117045865904 94117045866512 94117048700928 140735276859744 "
      "140735276859756 140735276859756 140735276863468 0");

  REQUIRE(17226 == ps_info.pid);
  REQUIRE("(1_prog__)" == ps_info.proc_name);
  REQUIRE('S' == ps_info.state);
}
TEST_CASE("parse_proc_stat_file", "[proc_stat]") {

  struct proc_info ps_info =
      parse_proc_stat_file("./test_files/proc_stats/stat");
  REQUIRE(17226 == ps_info.pid);
  REQUIRE("coin_prog" == ps_info.proc_name);
  REQUIRE('S' == ps_info.state);
  REQUIRE(10339 == ps_info.ppid);
  REQUIRE(17226 == ps_info.pgrp);
  REQUIRE(2326959 == ps_info.start_time);

  ps_info =
      parse_proc_stat_file("./test_files/proc_stats/stat_progname_with_space");
  REQUIRE(9585 == ps_info.pid);
  REQUIRE("coin prog" == ps_info.proc_name);
  REQUIRE('S' == ps_info.state);
  REQUIRE(7254 == ps_info.ppid);
  REQUIRE(9585 == ps_info.pgrp);
  REQUIRE(492875 == ps_info.start_time);
}

TEST_CASE("proc_is_running", "[proc_stat]") {
  /*
   * this test use fork and execv to execute
   * an example program
   *
   * in the parent process, check if the child
   * should be runnning, kill it and check if its not running anymore
   * using [proc_is_running]
   * */

  // makes c null terminated array for argv of [execv]
  // cannot make it directly since iso c++ won't allow
  // converting string constant to char* :(
  std::vector<std::string> argv = {"example", "arg"};
  size_t argc = -1;
  char **args = str_vector_to_c_str_arr_nulled_new(argv, &argc);
  // =====================================
  //
  int child_pid = fork();
  switch (child_pid) {

  case -1:
    error_exit("fork failed\n");
    break;

  case 0:
    // child execution after sucessfull fork
    execv("./example_program/coin_prog", args);
    break;
  default:
    // parent execution after sucessfull fork
    REQUIRE(true == proc_is_running(child_pid));
    /*
     * terminate and wait for the child to terminate
     * */
    kill(child_pid, SIGKILL);
    int termination_stat = -1;
    wait(&termination_stat);
    // ============
    // the process shouldn't be running now
    REQUIRE(false == proc_is_running(child_pid));
    printf("\nchild pid %d\n", child_pid);
    printf("current pid %d\n", getpid());
    break;
  }
  str_arr_free(args, argc);
}
