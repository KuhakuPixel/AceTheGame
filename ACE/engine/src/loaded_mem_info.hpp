#pragma once
#include "ace_type.hpp" // for byte
#include <stdlib.h>     // for size_t

/*
 * for storing loaded memory
 * and retrieving value from it
 * at an address
 * */
template <typename T> class loaded_mem_info {

private:
  // pointer to access the loaded memory
  const byte *loaded_mem = NULL;
  size_t loaded_mem_size = 0;
  /*
   * where we load/copy [mem] from,
   * can be from the other process, or
   * in current one
   * */
  byte *original_base_addr = NULL;

public:
  loaded_mem_info();

  void store_mem(const byte *loaded_mem, size_t loaded_mem_size,
                 byte *base_address);
  /*
   * retrieve value at [address] in
   * the loaded memory
   * */
  inline T retrieve_val(byte *address) {

    // calculate access offset in bytes from [original_base_addr]
    size_t access_offset_in_bytes =
        (size_t)(address - this->original_base_addr);

    // use offset to get the value at [address]
    T *val_ptr = (T *)(this->loaded_mem + access_offset_in_bytes);
    return *val_ptr;
  }
  ~loaded_mem_info();
};
