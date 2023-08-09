#pragma once
#include <algorithm>
#include <vector>

template <typename T> class vector_util {
public:
  /**
   * return true if B is subset of [A]
   * */
  static bool is_subset(std::vector<T> a, std::vector<T> b) {

    std::sort(a.begin(), a.end());
    std::sort(b.begin(), b.end());
    return std::includes(a.begin(), a.end(), b.begin(), b.end());
  }
};
