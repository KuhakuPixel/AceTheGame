#include "error.hpp"
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
int error_exit(const char *fmt, ...) {
  char buffer[10000];
  // put args to bufer
  va_list args;
  va_start(args, fmt);
  vsnprintf(buffer, sizeof(buffer), fmt, args);
  va_end(args);
  // print message
  fprintf(stderr,
          "================== PROGRAM ERROR =========================\n");
  fprintf(stderr, "%s", buffer);
  fprintf(stderr,
          "==========================================================\n");
  /*
    should return EXIT_FAILURE because it is an unsucessful termination
    because of an error, this is a must when unit testing since, most
    frameworks relies on the return code of the program to indicate if the
    test is a success or a failure when exiting with EXIT_SUCCESS, most unit
    testing framework will not see it as a failure (some other tests not run
    or it will not run the failing test because exitted early)

   reference https://en.cppreference.com/w/c/program/exit
   */
  exit(EXIT_FAILURE);
  return EXIT_FAILURE;
}
