/*
 * macros defined here uses do{} while(0)
 * so that the macro will expand into regular statement
 * and not into compound statement
 * https://stackoverflow.com/questions/1067226/c-multi-line-macro-do-while0-vs-scope-block
 * */

#pragma once
#include "ace_type.hpp"
#include <functional>
#include <stdio.h>
#include <time.h>

/*
 * time an execution [action]  and assign time (seconds)
 * to [time]
 *
 *
 * */
void time_action(std::function<void()> action, double *time);
/*
 * instantiate a template for all numeric types
 * this is useful when template functions/classes implementation
 * are separated from header files, which mean that
 * they need to be "explicitly instantiated" by the compiler
 * on each type  before use
 * https://stackoverflow.com/a/495056/14073678
 *
 * INSTANTIATE_MACRO_1_ARG: macro to instantiate template that
 * 			    has one argument [TYPE], the type
 * 			    to instantiate
 * example usage:
 *
 *  // macro to instantiate templated class called [proc_rw]
 *  #define EXPLICIT_INSTANTIATE(TYPE) template class proc_rw<TYPE>;
 *
 *  // pass the macro to instantiate all numeric types
 *  // of class [proc_rw]
 *  TEMPLATE_NUMERIC_INSTANTIATE(EXPLICIT_INSTANTIATE);
 *
 *  // undef for safety
 *  #undef EXPLICIT_INSTANTIATE
 * */
#define TEMPLATE_NUMERIC_INSTANTIATE(INSTANTIATE_MACRO_1_ARG)                  \
  INSTANTIATE_MACRO_1_ARG(byte);                                               \
  INSTANTIATE_MACRO_1_ARG(short);                                              \
  INSTANTIATE_MACRO_1_ARG(int);                                                \
  INSTANTIATE_MACRO_1_ARG(unsigned int);                                       \
  INSTANTIATE_MACRO_1_ARG(long);                                               \
  INSTANTIATE_MACRO_1_ARG(unsigned long);                                      \
  INSTANTIATE_MACRO_1_ARG(LL);                                                 \
  INSTANTIATE_MACRO_1_ARG(ULL);                                                \
  INSTANTIATE_MACRO_1_ARG(float);
