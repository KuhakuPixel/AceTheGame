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

template <typename T>
ssize_t _get_last_chunk_read_idx(

    const std::vector<struct addr_and_value<T>> &array,
    const size_t array_from_idx,

    size_t low_idx, size_t high_idx

) {

  /*
   * overview:
   *
   * find most effective last read address in [array]
   * sorted by its address
   * for reading as a chunk using binary search
   *
   * on each call, it will calculate whether it is more efficient to
   * read as whole chunk
   * 	example of int (4 bytes) in memory :
   * 		{0x001,6},{0x002,4},{0x003,5},{0x004,10},{0x005,11}
   * 	if we were to read each address individually,
   * 	from 0x001 -to 0x005
   * 	we are going to read = 8 bytes * 5 = 40 bytes!
   * 	because are multiple bytes that overlap
   *
   * 	and the actual size of that int array in memory should only
   * 	be 8 bytes
   * 	(read from 0x001 to 0x008 (since we need to read 3 more bytes
   * 	 after 0x005 to get int at 0x005))
   *
   * or when reading as a chunk is less efficient
   *
   * 	example of interger (4 byte) in memory :
   * 		{0xaaa3,4},{0xffffff7,8}
   *
   * 	the address differences are too large to read
   * 	them as a chunk, so its better to retrieve them
   * 	individually
   *
   * this function will start finding the last address
   * at [array[to_idx].address] and check if it is efficient
   * to read as chunk until this address, if not
   *
   * it will move the last address to the center from [from_idx] to [to_idx]
   * and repeat the check,
   *
   * if it is efficient to read as chunk
   * then try to move forward from the center of [to_idx] to the last index
   * of the array, this is done to make sure we are not missing
   * any last address that may be more efficient to read as chunk
   * then the current one we have
   *
   * and repeat the process until the most efficient last address
   * to read as chunk is found
   *
   * */

  // bound check
  if (array.size() == 0 || low_idx >= array.size() || high_idx >= array.size())
    return -1;

  // base conditions
  if (low_idx >= high_idx)
    return (ssize_t)high_idx;

  // bytes count a function have to retrieve
  // if it were to read them individually without
  // considering if some of the bytes overlaps
  // and hence duplicate and inefficient reads
  size_t total_bytes_individually_read = array.size() * sizeof(T);

  // formula for  counting bytes to be read
  // when an address range  is known
  // (provided that the array is sorted of course)
  size_t total_bytes_chunk_read =
      sizeof(T) + (array[high_idx].address - array[array_from_idx].address);

  // not worth it to read as chunk
  // move backward to see if there is address
  // worth reading chunk on
  if (total_bytes_chunk_read > total_bytes_individually_read) {
    return _get_last_chunk_read_idx<T>(array, array_from_idx, low_idx,
                                       low_idx + (high_idx - low_idx) / 2);
  }
  // find  other possible address
  // if its worth  to chunk read
  else {
    // how much we want to move right
    size_t move_right_offset = (array.size() - 1 - high_idx) / 2;
    // new candidate's address's index
    size_t target_idx = high_idx + move_right_offset;
    // find better candidate to use as last address
    // of a chunk read
    return _get_last_chunk_read_idx<T>(array, array_from_idx, high_idx,
                                       target_idx);
  }
}

template <typename T>
ssize_t get_last_chunk_read_idx(

    const std::vector<struct addr_and_value<T>> &array,

    size_t from_idx

) {
  return _get_last_chunk_read_idx<T>(array, from_idx, from_idx,
                                     array.size() - 1);
}

}; // namespace Scan_Utils

#define EXPLICIT_INSTANTIATE(TYPE)                                             \
  template TYPE *Scan_Utils::ACE_get_address_iterator_end(                     \
      byte *read_addr_end);                                                    \
                                                                               \
  template struct Scan_Utils::addr_and_value<TYPE>;                            \
                                                                               \
  template ssize_t Scan_Utils::get_last_chunk_read_idx(                        \
      const std::vector<struct Scan_Utils::addr_and_value<TYPE>> &array,       \
      size_t low_idx);

TEMPLATE_NUMERIC_INSTANTIATE(EXPLICIT_INSTANTIATE);
#undef EXPLICIT_INSTANTIATE
