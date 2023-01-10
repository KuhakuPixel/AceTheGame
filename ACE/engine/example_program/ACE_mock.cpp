/*
 * mock program for testing
 * TODO: add program parameter
 * to support for different type of testing
 * */
#include "../src/to_frontend.hpp"
#include <string>

int main(int argc, char **argv) {

  // prevent value from being optimized away
  // compiler for build release
  //
  // this can break a couple of Ace Engine's unit test
  // when it is optimized in a weird way 
  volatile int val = 0;

  while (true) {
    char enter = 0;

    // until enter is pressed
    // https://stackoverflow.com/a/1406432/14073678
    while (enter != '\r' && enter != '\n') {
      enter = getchar();
    }
    val++;
    frontend_mark_task_begin();
    printf("%s\n", std::to_string(val).c_str());
    frontend_mark_task_done();
  }
  return 0;
}
