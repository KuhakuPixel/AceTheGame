#include "scan_utils.hpp"
#include "common.hpp"

namespace Scan_Utils {

template <typename T> addr_and_value<T>::addr_and_value(ADDR address, T value) {

  this->address = address;
  this->value = value;
}

ADDR get_nearest_aligned_addr(ADDR addr, size_t bytes_aligned) {
  /*
   * increment [addr] until [addr] is the multiple of [bytes_aligned]
   * which will make it [bytes_aligned] aligned
   *
   * ref:  https://en.wikipedia.org/wiki/Data_structure_alignment
   * */
  while (addr % bytes_aligned != 0)
    addr++;
  return addr;
}
template <typename T> T *ACE_get_address_iterator_end(byte *read_addr_end) {
  //  we need to decremeant the pointer by one since
  //  func_retrieve_at_addr will derefrence <T> at i
  //  so we cannot go further than (addr_end - (sizeof T))
  //
  //  examples on int (4 bytes) array represented as hex
  //   16383   7164    4666    21277
  // [|3 F F F|1 B F C|1 2 3 A|5 3 1 D|]
  //          		      ↑ -> we need to stop the iterator here
  //          		           since this->func_retrieve_at_addr is
  //          expected 			   to dereference 4 bytes
  //
  //   16383   7164    4666    21277
  // [|3 F F F|1 B F C|1 2 3 A|5 3 1 D|]
  //   			       	      ↑ -> if the iterator is here
  // this->func_retrieve_at_addr will dereference bytes that are not a
  // part of the array and might cause undefined behavior or segfault
  //

  return ((T *)read_addr_end) - 1;
}

}; // namespace Scan_Utils

#define EXPLICIT_INSTANTIATE(TYPE)                                             \
  template TYPE *Scan_Utils::ACE_get_address_iterator_end(                     \
      byte *read_addr_end);                                                    \
                                                                               \
  template struct Scan_Utils::addr_and_value<TYPE>;

TEMPLATE_NUMERIC_INSTANTIATE(EXPLICIT_INSTANTIATE);
#undef EXPLICIT_INSTANTIATE
