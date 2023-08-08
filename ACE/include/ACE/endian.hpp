#pragma once
#include <string>
#include <unordered_map>
enum class E_endian {
  little,
  big,
  unknown,
};

static const std::unordered_map<E_endian, std::string> E_endian_to_str_map = {

    {E_endian::little, "little"},
    {E_endian::big, "big"},
    {E_endian::unknown, "unknown"},

};

/*
 * get current platform's endianness
 * */
E_endian get_platform_endianness();

/*
 * get swapped endian value of [val]
 * */
template <typename T> T swap_endian(T val);
