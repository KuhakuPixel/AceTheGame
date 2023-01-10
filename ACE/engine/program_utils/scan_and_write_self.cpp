
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
#include <unistd.h>

int main(int argc, char **argv) {

  int arr[200];
  int pid = getpid();
  arr[0] = 3;
  arr[1] = 9;
  arr[2] = 5;
  proc_rw<int> process_rw = proc_rw<int>(pid);
  int val = process_rw.retrieve_val((byte *)&arr[0]);
  printf("val before write:  %d\n", val);
  process_rw.write_val((byte *)&arr[0], 5);
  printf("val after write:  %d\n", arr[0]);

  return 0;
}
