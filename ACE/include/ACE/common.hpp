/*
 * macros defined here uses do{} while(0)
 * so that the macro will expand into regular statement
 * and not into compound statement
 * https://stackoverflow.com/questions/1067226/c-multi-line-macro-do-while0-vs-scope-block
 * */

#pragma once
#include "ace_type.hpp"
#include <stdio.h>
#include <time.h>

/*
 * time an execution [aAction]  and assgin time (seconds)
 * in double to
 * [PTR_TO_DOUBLE] if not NULL
 *
 * Example:
 *
 * TIME_ACTION(
 *  	{
 *  		// execute some code
 *
 *  	}
 *  	,
 *  	&time_as_double
 * );
 *
 * */
#define TIME_ACTION(aAction, PTR_TO_DOUBLE)                                    \
  do {                                                                         \
    clock_t begin = clock();                                                   \
    {aAction};                                                                 \
    clock_t end = clock();                                                     \
    /*                                                                         \
     * cast PTR_TO_DOUBLE to void* to supress                                  \
     * gcc warning                                                             \
     * "the address of[addr] will never be NULL"                               \
     * https://stackoverflow.com/a/3154835/14073678                            \
     *                                                                         \
     * */                                                                      \
    if ((void *)PTR_TO_DOUBLE != NULL)                                         \
      *PTR_TO_DOUBLE = ((double)(end - begin) / CLOCKS_PER_SEC);               \
  } while (0)

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
