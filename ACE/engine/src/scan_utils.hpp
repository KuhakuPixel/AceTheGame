/*
 * mathematical algorithm for calculating scanning operations
 * */

#pragma once
#include "ace_type.hpp"
#include <limits>
#include <math.h>
#include <stdexcept>
#include <vector>

namespace Scan_Utils {

enum class E_operator_type {
  greater,
  less,
  equal,
  greater_equal,
  less_equal,
  not_equal,
  unknown,
};

enum class E_read_mem_method {
  with_proc_pid_mem_file,
  with_process_vm_readv,
};

static const std::unordered_map<std::string, Scan_Utils::E_operator_type>
    filter_str_to_E_operator_type_map = {
        {">", Scan_Utils::E_operator_type::greater},
        {"<", Scan_Utils::E_operator_type::less},
        {"=", Scan_Utils::E_operator_type::equal},
        {">=", Scan_Utils::E_operator_type::greater_equal},
        {"<=", Scan_Utils::E_operator_type::less_equal},
        {"!=", Scan_Utils::E_operator_type::not_equal},
        // For unknown, all comparasion must be true
        {"?", Scan_Utils::E_operator_type::unknown},

};

enum class E_scan_level {
  // scan for address of a variable
  // that are aligned to their byte size
  aligned_only,
  // scan for all addresses (step size is 1 byte)
  all
};

static const std::unordered_map<std::string, Scan_Utils::E_scan_level>
    str_to_E_scan_level_map = {
        {"all", E_scan_level::all},
        {"aligned_only", E_scan_level::aligned_only},

};

static const std::unordered_map<Scan_Utils::E_scan_level, std::string>
    E_scan_level_to_str = {
        {E_scan_level::all, "all"},
        {E_scan_level::aligned_only, "aligned_only"},

};

/*
 * return the next address that is
 * [bytes_aligned] bytes aligned  from [addr]
 *
 * return [addr] it self if it is already aligned
 * */
ADDR get_nearest_aligned_addr(ADDR addr, size_t bytes_aligned);

/*
 * compare [compare_from] with [operator_type] against  [compare_to]
 *
 * example:
 * returns true if
 *
 * 	value_compare(4,Scan_Utils::E_operator_type::greater,3);
 *
 * returns false if
 * 	value_compare(4,Scan_Utils::E_operator_type::greater,3);

 * */
template <typename T>
inline bool value_compare(T compare_from, Scan_Utils::E_operator_type operator_type,
                          T compare_to) {

  switch (operator_type) {
  case Scan_Utils::E_operator_type::equal:
    if (compare_from == compare_to)
      return true;
    break;

  case Scan_Utils::E_operator_type::greater:

    if (compare_from > compare_to)
      return true;
    break;

  case Scan_Utils::E_operator_type::greater_equal:
    if (compare_from >= compare_to)
      return true;

    break;

  case Scan_Utils::E_operator_type::less:
    if (compare_from < compare_to)
      return true;

    break;

  case Scan_Utils::E_operator_type::less_equal:
    if (compare_from <= compare_to)
      return true;

    break;

  case Scan_Utils::E_operator_type::not_equal:
    if (compare_from != compare_to)
      return true;

    break;

  case Scan_Utils::E_operator_type::unknown:
    return true;

    break;
  }
  return false;
}

template <typename T>
inline ADDR get_address_of_match_index(

    Scan_Utils::E_scan_level scan_level,

    ADDR base_address, size_t i) {

  // need to take account the scan level
  // scan all or aligned_only
  switch (scan_level) {
  case Scan_Utils::E_scan_level::all: {
    return base_address + i;
  }

  case Scan_Utils::E_scan_level::aligned_only: {
    return base_address + i * sizeof(T);
  }
  default:
    throw std::logic_error(
        "get_address_of_match_index some scan level not yet implemented\n");
  }
}

// TODO: need to add specialization for double as well

template <>
inline bool value_compare(float compare_from,
                          Scan_Utils::E_operator_type operator_type,
                          float compare_to) {

  float epsilon = std::numeric_limits<float>::epsilon();
  switch (operator_type) {
  case Scan_Utils::E_operator_type::equal:
    return fabs(compare_from - compare_to) < epsilon;
    break;

  case Scan_Utils::E_operator_type::greater:
    return compare_from - compare_to > epsilon;

    break;

  case Scan_Utils::E_operator_type::greater_equal:

    return
        // is equal
        fabs(compare_from - compare_to) < epsilon ||
        // is greater than
        compare_from - compare_to > epsilon;

    break;

  case Scan_Utils::E_operator_type::less:

    return compare_to - compare_from > epsilon;

    break;

  case Scan_Utils::E_operator_type::less_equal:

    return

        // is less than
        compare_to - compare_from > epsilon ||
        // is equal
        fabs(compare_from - compare_to) < epsilon;

    break;

  case Scan_Utils::E_operator_type::unknown:
    return true;

    break;

  case Scan_Utils::E_operator_type::not_equal:
    return fabs(compare_from - compare_to) >= epsilon;
  }
  return false;
}

template <typename T> T *ACE_get_address_iterator_end(byte *read_addr_end);
/*
 * used for storing scan results, with their previous value
 * */
template <typename T> struct addr_and_value {
  ADDR address;
  T value;
  addr_and_value(ADDR address, T value);
};

}; // namespace Scan_Utils
