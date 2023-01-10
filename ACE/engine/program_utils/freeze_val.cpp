/*
 * freeze value at an address of other process
 * by continuosly writting into it
 *
 * TODO: integrate this with the main program
 * */

#include "../src/proc_rw.hpp"
#include "../src/proc_stat.hpp"
#include "../third_party/CLI11.hpp"
#include <stdio.h>

int main(int argc, char **argv) {

  CLI::App app{"freeze value at an address of other process"};

  int pid;
  ADDR address;
  app.add_option("<PID>", pid, "pid of target process")->required();
  app.add_option("<ADDRESS>", address, "address of variable")->required();

  CLI11_PARSE(app, argc, argv);

  if (!proc_is_running(pid)) {
    printf("no such process with pid %d\n", pid);
    return 0;
  }

  proc_rw<int> process_rw = proc_rw<int>(pid);
  int address_value = process_rw.retrieve_val((byte *)address);
  printf("Freezing process %d at  %llx (current val: %d)\n", pid, address,
         address_value);
  printf("Ctrl+C to cancel\n");
  while (true) {
    process_rw.write_val((byte *)address, address_value);
  }

  return 0;
}
