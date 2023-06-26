/*
 * contains some typedef
 * only for the sake of shorter word :)
 * nothing else
 * */
#pragma once
#include "input.hpp"
#include <limits.h>
#include <string>
#include <unordered_map>

typedef unsigned long long int ULL;
typedef long long int LL;

/*
 * replacement for void pointer, since in cpp
 * you can't do pointer arithmetic with void
 *
 *
 * some SO post recommended to just use char*, but
 * in my opinion, it might get mistaken as a string (by most c programmer)
 *
 * https://stackoverflow.com/a/3377988/14073678
 * https://stackoverflow.com/a/3378181/14073678
 *
 * */
typedef int8_t byte;
/*
 * numerical value type for
 * memory addresses
 * to prevent accident dereferencing
 *
 * (memory address shouldn't be interpreted as signed number,
 *  well because it can't be negative :v)
 *
 *  https://stackoverflow.com/a/1689441/14073678
 *
 * */
typedef ULL ADDR;

struct addr_range {
  byte *addr_start;
  byte *addr_end;
  addr_range(byte *addr_start, byte *addr_end);
};

enum class E_num_type {

  SHORT,
  INT,
  LONG,
  BYTE,
  FLOAT,

};

static const std::unordered_map<std::string, E_num_type>
    num_type_str_to_E_num_type_map = {

        {"short", E_num_type::SHORT}, {"int", E_num_type::INT},
        {"long", E_num_type::LONG},   {"byte", E_num_type::BYTE},
        {"float", E_num_type::FLOAT},

};

static const std::unordered_map<E_num_type, std::string> E_num_type_to_str_map =
    {

        {E_num_type::SHORT, "short"}, {E_num_type::INT, "int"},
        {E_num_type::LONG, "long"},   {E_num_type::BYTE, "byte"},
        {E_num_type::FLOAT, "float"},

};

static const std::unordered_map<E_num_type, size_t> E_num_type_to_bit_size_map =
    {

        {E_num_type::SHORT, sizeof(short) * CHAR_BIT},
        {E_num_type::INT, sizeof(int) * CHAR_BIT},
        {E_num_type::LONG, sizeof(long) * CHAR_BIT},
        {E_num_type::BYTE, CHAR_BIT},
        {E_num_type::FLOAT, sizeof(float) * CHAR_BIT},

};

/*
 * for scan endian type
 * */
enum class E_endian_scan_type {
  // use processor's endian
  native,
  // use a swapped processor's endian
  swapped,

};
static const std::unordered_map<std::string, E_endian_scan_type>
    endian_scan_type_str_to_E_num_type_map = {
        {"native", E_endian_scan_type::native},
        {"swapped", E_endian_scan_type::swapped},

};

/*
 * return value for every cheater mode operation
 *
 * will be used to tell the outer loop like:
 * 1. when to exit cheater mode
 * 2. when and what to change scan type
 * */

// TODO: add test ?
struct cheat_cmd_ret {

private:
  //
  bool should_change_type = false;
  E_num_type num_type_to_change_to = E_num_type::INT;

public:
  E_loop_statement loop_statement = E_loop_statement::continue_;
  void set_next_num_type(E_num_type num_type);
  bool get_should_change_type();
  void set_should_change_type(bool val);
  E_num_type get_num_type_to_change_to();
};
