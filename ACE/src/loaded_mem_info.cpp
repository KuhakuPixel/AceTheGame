#include "ACE/loaded_mem_info.hpp"
#include "ACE/common.hpp"

template <typename T> loaded_mem_info<T>::loaded_mem_info() {}

template <typename T>
void loaded_mem_info<T>::store_mem(const byte *loaded_mem,
                                   size_t loaded_mem_size, byte *base_address) {
  // load new one
  this->loaded_mem = loaded_mem;
  this->loaded_mem_size = loaded_mem_size;
  // set base address
  this->original_base_addr = base_address;
}

template <typename T> loaded_mem_info<T>::~loaded_mem_info() {}

#define EXPLICIT_INSTANTIATE(TYPE) template class loaded_mem_info<TYPE>;
TEMPLATE_NUMERIC_INSTANTIATE(EXPLICIT_INSTANTIATE);
#undef EXPLICIT_INSTANTIATE
