#include "ACE/engine_module.hpp"
#include "ACE/common.hpp"

template <typename T>
engine_module<T>::engine_module(
    int pid, std::function<void(size_t current, size_t max)> on_scan_progress,
    std::function<void()> on_scan_done) {

  // initialize module
  this->scanner_ptr = new ACE_scanner<T>(pid, on_scan_progress, on_scan_done);
  this->freezer_ptr = new freezer<T>(pid);
  this->process_rw = new proc_rw<T>(pid);
  // TODO: add constructor for cheat_mode_config
  // that accepts pid
  this->_cheat_mode_config.pid = pid;
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
