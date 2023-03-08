#pragma once
#include "freeze.hpp"
#include "proc_rw.hpp"
#include "scanner.hpp"

/*
 * the core module for memory scanner and editor
 *
 * includes a scanner, a memory reader and writter
 * and a value freezer
 *
 * */
template <typename T> class engine_module {
public:
  ACE_scanner<T> *scanner_ptr = NULL;
  freezer<T> *freezer_ptr = NULL;
  proc_rw<T> *process_rw = NULL;

  engine_module(int pid);
  ~engine_module();
};
