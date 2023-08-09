#include "ACE/freeze.hpp"
#include "ACE/common.hpp"
#include "ACE/proc_rw.hpp"

template <typename T> freezer<T>::freezer(int program_pid) {
  this->program_pid = program_pid;
  this->process_rw = new proc_rw<T>(this->program_pid);
}

template <typename T> freezer<T>::~freezer() {

  // free resources
  delete this->process_rw;
}

template <typename T> int freezer<T>::freeze_addr_with_val(ADDR addr, T val) {

  if (this->freeze_maps.count(addr) == 0) {

    // thread to write continuously
    thread_continuous freezing_thread = thread_continuous(

        [this, addr, val]() {
          // write
          this->process_rw->write_val((byte *)addr, val);
        }

    );
    // store to map
    this->freeze_maps.insert({addr, freezing_thread});
    // start freezing thread
    this->freeze_maps.at(addr).start();
    return 0;
  }

  // can't freeze anymore, it has been freezed
  return -1;
}
template <typename T> int freezer<T>::freeze_addr(ADDR addr) {

  // reset errno
  errno = 0;
  T current_val = this->process_rw->retrieve_val((byte *)addr);
  // fails
  if (errno != 0)
    return -1;
  //
  return this->freeze_addr_with_val(addr, current_val);
}

template <typename T> int freezer<T>::unfreeze_addr(ADDR addr) {

  if (this->freeze_maps.count(addr) > 0) {
    this->freeze_maps.at(addr).stop();
    this->freeze_maps.erase(addr);
    return 0;
  }
  return -1;
}

template <typename T> int freezer<T>::stop_all() {

  // stop previously freezed value
  for (auto it = this->freeze_maps.begin(); it != this->freeze_maps.end();
       it++) {
    it->second.stop();
  }
  // clear map
  this->freeze_maps.clear();

  return 0;
}

template <typename T>
const std::map<ADDR, thread_continuous> &freezer<T>::get_freeze_maps() const {
  return this->freeze_maps;
}

// explicit template instantiations
#define EXPLICIT_INSTANTIATE(TYPE) template class freezer<TYPE>;
TEMPLATE_NUMERIC_INSTANTIATE(EXPLICIT_INSTANTIATE);
#undef EXPLICIT_INSTANTIATE
