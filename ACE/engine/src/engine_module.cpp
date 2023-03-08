#include "engine_module.hpp"
#include "common.hpp"
template <typename T> engine_module<T>::engine_module(int pid) {

  // initialize module
  this->scanner_ptr = new ACE_scanner<T>(pid);
  this->freezer_ptr = new freezer<T>(pid);
  this->process_rw = new proc_rw<T>(pid);
}

template <typename T> engine_module<T>::~engine_module() {

  // free resources
  delete this->scanner_ptr;
  delete this->freezer_ptr;
  delete this->process_rw;
}

// explicit template instantiations
#define EXPLICIT_INSTANTIATE(TYPE) template class engine_module<TYPE>;
TEMPLATE_NUMERIC_INSTANTIATE(EXPLICIT_INSTANTIATE);
#undef EXPLICIT_INSTANTIATE
