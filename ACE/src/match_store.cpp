#include "ACE/match_store.hpp"
#include "ACE/common.hpp"

template <typename T>
match_storage<T>::match_storage(Scan_Utils::E_scan_level scan_level) {
  //
  this->scan_level = scan_level;
}

template <typename T> void match_storage<T>::clear() {
  this->matches_value.clear();
  this->matches_records.clear();
}

template <typename T>
void match_storage<T>::set_scan_level(Scan_Utils::E_scan_level scan_level) {
  this->scan_level = scan_level;
}

template <typename T>
void match_storage<T>::_iterate(
    std::function<void(ADDR addr, T *val_ptr)> on_each_iteration_val_ptr,
    std::function<void(ADDR addr, T val)> on_each_iteration_val,
    size_t max_iter) {

  // iterate each matches addresses
  size_t current_match_val_idx = 0;
  for (size_t i = 0; i < this->get_chunk_count(); i++) {
    size_t match_chunk_matches_cnt = this->matches_records[i].match_count;
    size_t base_addr = this->matches_records[i].base_addr;

    for (size_t j = 0; j < match_chunk_matches_cnt;
         j++, current_match_val_idx++) {
      // iteration has reached max, exit from function
      if (current_match_val_idx >= max_iter)
        return;
      // calculate current_addr
      ADDR current_addr = Scan_Utils::get_address_of_match_index<T>(
          this->scan_level, base_addr, j);
      T *val_ptr = &(this->matches_value[current_match_val_idx]);
      if (on_each_iteration_val != NULL)
        on_each_iteration_val(current_addr, *val_ptr);
      if (on_each_iteration_val_ptr != NULL)
        on_each_iteration_val_ptr(current_addr, val_ptr);
    }
  }
}

// FIXME :using this function crash gives bug when attach mem scanner in apk
template <typename T>
void match_storage<T>::iterate(

    std::function<void(ADDR addr, T *val_ptr)> on_each_iteration,
    size_t max_iter

) {

  this->_iterate(on_each_iteration, NULL, max_iter);
}

template <typename T>
void match_storage<T>::iterate_val(
    std::function<void(ADDR addr, T val)> on_each_iteration,
    size_t max_iter) const {

  /*
   * reuse non const function in const, this looks ugly but
   * its better than code duplication
   * https://stackoverflow.com/a/5008580/14073678
   *
   * some SO answer said that calling this function on a const object
   * will yield undefined behavior
   *
   * https://stackoverflow.com/a/8325449/14073678
   *
   * but it is fine since [_iterate] call in below, won't modify anything
   */
  const_cast<match_storage<T> *>(this)->_iterate(NULL, on_each_iteration,
                                                 max_iter);
}

template <typename T>
void match_storage<T>::iterate_chunk(

    std::function<void(const match_chunk_prop<T> &chunk_prop)> on_each_iteration

) {

  // initialize a chunk property for this iteration
  match_chunk_prop<T> chunk_prop = match_chunk_prop<T>(&(this->matches_value));
  chunk_prop.current_val_index = 0;
  //
  for (size_t i = 0; i < this->matches_records.size(); i++) {
    // update matches count and base addresses in chunk prop
    chunk_prop.match_count = this->matches_records[i].match_count;
    chunk_prop.base_address = this->matches_records[i].base_addr;
    // call callback
    on_each_iteration(chunk_prop);
    // increment value index
    chunk_prop.current_val_index += chunk_prop.match_count;
  }
}

template <typename T> size_t match_storage<T>::get_matches_count() const {
  return this->matches_value.size();
}

template <typename T>
const std::vector<T> &match_storage<T>::get_matches_values() const {
  return this->matches_value;
}

template <typename T>
const std::vector<match_record> &match_storage<T>::get_matches_records() const {
  return this->matches_records;
}

#define EXPLICIT_INSTANTIATE(TYPE) template class match_storage<TYPE>;

TEMPLATE_NUMERIC_INSTANTIATE(EXPLICIT_INSTANTIATE);
#undef EXPLICIT_INSTANTIATE
