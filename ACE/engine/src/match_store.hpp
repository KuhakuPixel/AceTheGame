
/*
 * data structure to store matches efficiently space wise
 * that tries to smartly store matches that occurs in a row
 * so it wouldn't have to store an address and value for each match
 *
 * instead of storing matches like:
 *
 * (examples assumed only scanning for aligned int (4 bytes))
 * FORMAT: {address, value}
 * {{0x0, 666}, {0x4, 666}, {0x8, 0}, {0xc, 5}, {0x10, 3}}
 *
 * which is bad since if a certain game memory is N
 * the engine will require 2N of memory to store the whole matches
 * when doing a scan for an unknown initial value (pick everything as match)
 *
 * instead this datastructure try to identify matches that occurs
 * in a row and only store the "base address" of that match in a row
 * called "match chunk", which can save spaces tremendously
 * when most of the time the match occurs in a row
 *
 * example:
 * FORMAT {address, matches_value}
 *
 * {0x0, {666, 666, 0, 5, 3}}, {0x5000, {123, 321, 0, 5, 3}}
 *
 * of course this datastructure can still calculate
 * the address of each value by using formula like (base_address+i)
 *
 * but the previous example is still bad in some cases
 * when there are not many matches in a row and will
 * be worse than just storing address and value for each match
 * since we need to store a vector (on 64 bit cpu ussually 64 byte)
 * and base address for each chunk
 *
 * a better way is to store the matches values for all match chunk
 * in only 1 vector and store the property of each chunk like
 * its base address and the match count in that chunk called "match record"
 * so we can traverse the data structure
 *
 * of course it is still worse when there are not many matches
 * in a row (like an exact value scan) because "match record"
 * still need to store base address and match count for each chunk
 * an overhead of 8 bytes compared to storing address and value for
 * each match. BUT!!! its still fine since an exact value scan
 * won't take much spaces anyway
 *
 * */

#pragma once
#include "ace_type.hpp"
#include "scan_utils.hpp"
#include <functional>
#include <stdexcept>
#include <stdint.h>
#include <stdio.h>
#include <vector>

struct match_record {
  ADDR base_addr;
  size_t match_count;
};

template <typename T> class match_chunk_prop {
public:
  const std::vector<T> *matches_values;
  ADDR base_address;
  size_t current_val_index;
  size_t match_count;
  match_chunk_prop(const std::vector<T> *matches_values)
      : matches_values(matches_values) {
    // empty
  }

  inline ADDR
  get_exclusive_end_addr(Scan_Utils::E_scan_level scan_level) const {

    if (scan_level == Scan_Utils::E_scan_level::aligned_only) {
      return this->base_address + this->match_count * sizeof(T);
    }

    else {
      if (this->match_count == 0)
        return this->base_address;
      else {
        /*
         * minus one when finding the end address given
         * the base address and the count of matches because
         * when scan level is all
         *
         * considers the following matches found
         * in addresses and each element are 4 bytes
         * (therefore  there are four of ones)
         *
         * and we have 4 matches
         * address: 0 1 2 3 4 5 6 7
         *          1 1 1 1 (match 1)
         *            1 1 1 1 (match 2)
         *              1 1 1 1 (match 3)
         *                1 1 1 1 (match 4)
         *
         * the intuition behind the formula is to count
         * from start to (finish -1) and add with the element size
         * address: 0 1 2 3 4 5 6 7
         *          1 1 1 1 (match 1)
         *          | 1 1 1 1 (match 2)
         *          |   1 1 1 1 (match 3)
         *          |   | 1 1 1 1 (match 4)
         *          |   | ^ ^ ^ ^ -> sizeof(T)
         *          |__ |----------> this->base_address + this->match_count - 1
         * */
        return (this->base_address + this->match_count - 1 + sizeof(T));
      }
    }
  }
  inline T get_val_at_addr(ADDR addr,
                           Scan_Utils::E_scan_level scan_level) const {
    if (scan_level == Scan_Utils::E_scan_level::aligned_only) {
      size_t i =
          this->current_val_index + (addr - this->base_address) / sizeof(T);
      return this->matches_values->at(i);
    } else {
      size_t i = this->current_val_index + (addr - this->base_address);
      return this->matches_values->at(i);
    }
  }
};

template <typename T> class match_storage {
private:
  // config
  Scan_Utils::E_scan_level scan_level;
  // matches chunks records
  std::vector<T> matches_value;
  std::vector<match_record> matches_records;

public:
  match_storage(Scan_Utils::E_scan_level scan_level);

  inline bool is_match_in_a_row(ADDR addr) {

    if (this->matches_records.size() == 0)
      return true;
    //
    size_t last_idx = this->matches_records.size() - 1;

    // last base address
    ADDR last_base_addr = this->matches_records[last_idx].base_addr;
    size_t last_matches_chunk_count =
        this->matches_records[last_idx].match_count;

    switch (this->scan_level) {
    case Scan_Utils::E_scan_level::all: {
      return addr == (last_base_addr + last_matches_chunk_count);
    }

    case Scan_Utils::E_scan_level::aligned_only: {
      return addr == (last_base_addr + last_matches_chunk_count * sizeof(T));
    }

    default: {
      // case not handelled
      char buff[1000];
      std::string scan_level_val_str =
          Scan_Utils::E_scan_level_to_str.at(scan_level);

      snprintf(buff, sizeof(buff),
               "scan_level %s not handled in is_match_in_a_row\n",
               scan_level_val_str.c_str());
      throw std::logic_error(buff);
    }
    }
  }

  inline size_t get_chunk_count() const {
    //
    return this->matches_records.size();
  }

  /*
   * adding a match must be in a sorted
   * order
   * */
  inline void add_match(ADDR addr, T val) {

    // add a new match chunk when
    // we found the first match or the match isn't in a match in a row
    // anymore
    bool should_make_new_match_chunk =
        this->matches_value.size() == 0 || !(this->is_match_in_a_row(addr));

    if (should_make_new_match_chunk) {
      // add value
      this->matches_value.push_back(val);
      // create new chunk of matches
      match_record match_rec;
      match_rec.match_count = 1;
      match_rec.base_addr = addr;
      this->matches_records.push_back(match_rec);
    }
    // a match is found in a row from previous chunk
    else {
      this->matches_value.push_back(val);
      // increment count
      size_t last_idx = this->matches_records.size() - 1;
      this->matches_records[last_idx].match_count++;
    }
  }

  void set_scan_level(Scan_Utils::E_scan_level scan_level);

  /*
   * low level function to iterate through each matches
   * */
  void _iterate(

      std::function<void(ADDR addr, T *val_ptr)> on_each_iteration_val_ptr =
          NULL,
      std::function<void(ADDR addr, T val)> on_each_iteration_val = NULL,
      size_t max_iter = SIZE_MAX

  );

  /*
   * iterate the each matches and call
   *
   * [on_each_iteration]: called on each iteration
   * it takes 2 parameter which is the current match address
   * and a pointer to the  address's value, caller can get
   * the match value of the address or update its match
   * value
   * */
  void iterate(std::function<void(ADDR addr, T *val_ptr)> on_each_iteration,
               size_t max_iter = SIZE_MAX);

  void iterate_val(

      std::function<void(ADDR addr, T val)> on_each_iteration,
      size_t max_iter = SIZE_MAX) const;

  /*
   * iterate by match chunk
   * */

  void iterate_chunk(

      std::function<void(const match_chunk_prop<T> &chunk_prop)>
          on_each_iteration

  );

  /*
   * clear matches
   * */
  void clear();

  /*
   * get total match count stored in this
   * data structure
   * */
  size_t get_matches_count() const;

  const std::vector<T> &get_matches_values() const;
  const std::vector<match_record> &get_matches_records() const;
};
