#include "../src/freeze.hpp"
#include "../src/proc_create.hpp" // for proc_fork_busy_child
#include "../src/proc_rw.hpp"
#include "../third_party/catch.hpp"
#include <signal.h> // for SIGKILL
#include <unistd.h>

TEST_CASE("freezer.freeze_addr_with_val", "[freezer]") {
  /*
   * check that writting to the process
   * won't work anymore using [proc_rw::write_val]
   * when freezer starts freezing the value at
   * that address
   * */
  {

    int ret_code = 0;
    // set value
    int arr[1000] = {0};
    arr[1] = 3;
    arr[2] = 4;
    arr[5] = 0;
    arr[666] = 0;
    arr[999] = 123;
    //
    ADDR write_address = (ADDR)&arr[666];

    int tracee_pid = proc_fork_busy_child();
    freezer<int> freeze = freezer<int>(tracee_pid);
    proc_rw<int> process_rw = proc_rw<int>(tracee_pid);
    //
    ret_code = freeze.freeze_addr_with_val(write_address, 12345);
    REQUIRE(0 == ret_code);
    //

    process_rw.write_val((byte *)write_address, 0);

    // sleep to avoid race condition
    sleep(1);
    // value after freeze, previous write won't effect it
    REQUIRE(12345 == process_rw.retrieve_val((byte *)write_address));
    // kill tracee
    kill(tracee_pid, SIGKILL);
  }
}

TEST_CASE("freezer.freeze_addr", "[freezer]") {
  /*
   * check that writting to the process
   * won't work anymore using [proc_rw::write_val]
   * when freezer starts freezing the value at
   * that address
   * */
  {

    int ret_code = 0;
    // set value
    int arr[1000] = {0};
    arr[1] = 3;
    arr[2] = 4;
    arr[5] = 0;
    arr[666] = 0;
    arr[999] = 123;
    //
    ADDR write_address = (ADDR)&arr[2];

    int tracee_pid = proc_fork_busy_child();
    freezer<int> freeze = freezer<int>(tracee_pid);
    proc_rw<int> process_rw = proc_rw<int>(tracee_pid);
    //
    ret_code = freeze.freeze_addr(write_address);
    REQUIRE(0 == ret_code);
    //
    process_rw.write_val((byte *)write_address, 0);

    // sleep to avoid race condition
    sleep(1);
    // value shouldn't change
    REQUIRE(4 == process_rw.retrieve_val((byte *)write_address));
    // kill tracee
    kill(tracee_pid, SIGKILL);
  }

  {

    int ret_code = 0;
    // set value
    short arr[1000] = {0};
    arr[1] = 3;
    arr[2] = 4;
    arr[5] = 0;
    arr[666] = 123;
    arr[999] = 123;
    //
    ADDR write_address = (ADDR)&arr[666];

    int tracee_pid = proc_fork_busy_child();
    freezer<short> freeze = freezer<short>(tracee_pid);
    proc_rw<short> process_rw = proc_rw<short>(tracee_pid);
    //
    ret_code = freeze.freeze_addr(write_address);
    REQUIRE(0 == ret_code);
    //
    process_rw.write_val((byte *)write_address, 5);
    // sleep to avoid race condition
    sleep(1);
    // value shouldn't change
    REQUIRE(123 == process_rw.retrieve_val((byte *)write_address));
    // kill tracee
    kill(tracee_pid, SIGKILL);
  }

  {

    /*
     * can't freeze the same address multiple time
     * */

    int ret_code = 0;
    // set value
    short arr[1000] = {0};
    arr[1] = 3;
    arr[2] = 4;
    arr[5] = 0;
    arr[666] = 123;
    arr[999] = 123;
    //
    ADDR write_address = (ADDR)&arr[666];

    int tracee_pid = proc_fork_busy_child();
    freezer<short> freeze = freezer<short>(tracee_pid);
    proc_rw<int> process_rw = proc_rw<int>(tracee_pid);
    //
    // first freeze
    ret_code = freeze.freeze_addr(write_address);
    REQUIRE(0 == ret_code);

    // consequent freeze on same address should fail
    ret_code = freeze.freeze_addr(write_address);
    REQUIRE(-1 == ret_code);

    ret_code = freeze.freeze_addr(write_address);
    REQUIRE(-1 == ret_code);
    //
    process_rw.write_val((byte *)write_address, 5);
    // sleep to avoid race condition
    sleep(1);
    // value shouldn't change
    REQUIRE(123 == process_rw.retrieve_val((byte *)write_address));
    // kill tracee
    kill(tracee_pid, SIGKILL);
  }
}

TEST_CASE("freezer.unfreeze_addr", "[freezer]") {
  {
    /*
     * stopping, even when we haven't started freezing
     * */

    int ret_code = 0;
    // set value
    int arr[1000] = {0};
    arr[1] = 3;
    arr[2] = 4;
    arr[5] = 0;
    arr[666] = 0;
    arr[999] = 123;
    //
    ADDR write_address = (ADDR)&arr[2];

    int tracee_pid = proc_fork_busy_child();
    freezer<int> freeze = freezer<int>(tracee_pid);
    proc_rw<int> process_rw = proc_rw<int>(tracee_pid);
    //
    ret_code = freeze.unfreeze_addr(write_address);
    REQUIRE(-1 == ret_code);
    //
    process_rw.write_val((byte *)write_address, 0);

    // sleep to avoid race condition
    sleep(1);
    // should still be able to write,
    // haven't start freezing
    REQUIRE(0 == process_rw.retrieve_val((byte *)write_address));
    // kill tracee
    kill(tracee_pid, SIGKILL);
  }
}

TEST_CASE("freezer.freeze_and_unfreeze", "[freezer]") {
  /*
   * check that writting to the process
   * won't work anymore  when value is freezed
   * and when freezing is stopped, it will work again
   * */
  {

    int ret_code = 0;
    // set value
    int arr[1000] = {0};
    arr[1] = 3;
    arr[2] = 4;
    arr[5] = 0;
    arr[666] = 0;
    arr[999] = 123;
    //
    ADDR write_address = (ADDR)&arr[2];

    int tracee_pid = proc_fork_busy_child();
    freezer<int> freeze = freezer<int>(tracee_pid);
    proc_rw<int> process_rw = proc_rw<int>(tracee_pid);
    //
    ret_code = freeze.freeze_addr(write_address);
    REQUIRE(0 == ret_code);
    //
    process_rw.write_val((byte *)write_address, 0);

    // sleep to avoid race condition
    sleep(1);
    // value shouldn't change
    REQUIRE(4 == process_rw.retrieve_val((byte *)write_address));
    // stop freezing
    ret_code = freeze.unfreeze_addr((ADDR)&arr[2]);
    REQUIRE(0 == ret_code);
    sleep(1);
    // should be able to write now....
    process_rw.write_val((byte *)&arr[2], 0);
    REQUIRE(0 == process_rw.retrieve_val((byte *)write_address));
    // kill tracee
    kill(tracee_pid, SIGKILL);
  }
}

TEST_CASE("freezer.stop_all", "[freezer]") {
  {

    int ret_code = 0;
    // set value
    int arr[1000] = {0};
    arr[1] = 3;
    arr[2] = 4;
    arr[5] = 0;
    arr[666] = 0;
    arr[999] = 123;
    //

    int tracee_pid = proc_fork_busy_child();
    freezer<int> freeze = freezer<int>(tracee_pid);
    proc_rw<int> process_rw = proc_rw<int>(tracee_pid);
    // freeze some addresses
    freeze.freeze_addr((ADDR)&arr[1]);
    freeze.freeze_addr((ADDR)&arr[2]);
    freeze.freeze_addr((ADDR)&arr[5]);
    freeze.freeze_addr((ADDR)&arr[666]);
    freeze.freeze_addr((ADDR)&arr[999]);

    // try to write but won't work
    // because they are freezed
    process_rw.write_val((byte *)&arr[1], 0);
    process_rw.write_val((byte *)&arr[2], 0);
    process_rw.write_val((byte *)&arr[5], 0);
    process_rw.write_val((byte *)&arr[666], 0);
    process_rw.write_val((byte *)&arr[999], 0);
    //

    // sleep to avoid race condition
    sleep(1);
    // value shouldn't change
    REQUIRE(3 == process_rw.retrieve_val((byte *)&arr[1]));
    REQUIRE(4 == process_rw.retrieve_val((byte *)&arr[2]));
    REQUIRE(0 == process_rw.retrieve_val((byte *)&arr[5]));
    REQUIRE(0 == process_rw.retrieve_val((byte *)&arr[666]));
    REQUIRE(123 == process_rw.retrieve_val((byte *)&arr[999]));
    // stop all freezed values
    REQUIRE(freeze.get_freeze_maps().size() > 0);
    ret_code = freeze.stop_all();
    REQUIRE(0 == ret_code);
    REQUIRE(freeze.get_freeze_maps().size() == 0);
    //
    sleep(1);
    // try to write again
    process_rw.write_val((byte *)&arr[1], 0);
    process_rw.write_val((byte *)&arr[2], 0);
    process_rw.write_val((byte *)&arr[5], 0);
    process_rw.write_val((byte *)&arr[666], 0);
    process_rw.write_val((byte *)&arr[999], 0);
    // value should have been written
    REQUIRE(0 == process_rw.retrieve_val((byte *)&arr[1]));
    REQUIRE(0 == process_rw.retrieve_val((byte *)&arr[2]));
    REQUIRE(0 == process_rw.retrieve_val((byte *)&arr[5]));
    REQUIRE(0 == process_rw.retrieve_val((byte *)&arr[666]));
    REQUIRE(0 == process_rw.retrieve_val((byte *)&arr[999]));
    // kill tracee
    kill(tracee_pid, SIGKILL);
  }
}
