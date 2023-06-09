#pragma once
#include "ace_type.hpp"
#include "scanner.hpp"
#include <stdexcept>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
/*
 * class to simulate another processes memory,
 *
 * the only thing the scanner should get is
 * the starting and ending addresses
 * without knowing what types, sizes are in there
 *
 * */

enum class E_mem_action {
  increment,
  decrement,
};

// =============================================================
template <typename T> class Simulated_Memory {

private:
  byte *simulated_mem = NULL;
  byte *addr_start = NULL;
  byte *addr_end = NULL;
  size_t simulated_mem_length = 0;
  size_t element_size = 0;

public:
  Simulated_Memory() {}
  Simulated_Memory(size_t simulated_mem_length, size_t element_size) {

    if (sizeof(T) > (element_size)) {
      char err_buff[300];
      snprintf(err_buff, 299,
               "sizeof template element (%zu) cannot be greater element_size "
               "(%zu)\n",
               sizeof(T), element_size);
      throw std::invalid_argument(std::string(err_buff));
    }

    // incase it is called twice
    free(this->simulated_mem);
    this->simulated_mem = NULL;
    //
    this->simulated_mem_length = simulated_mem_length;
    this->element_size = element_size;
    // we use calloc to assure  that all of the memory
    // allocated is initialized
    // because we don't want random data creeping in to the allocated
    // memory
    this->simulated_mem = (byte *)calloc(simulated_mem_length, element_size);
    byte *addr_start = this->simulated_mem;
    // remember that when increasing pointer
    // the value added will be adjusted accordingly, according to their type
    byte *arr_end_ptr = addr_start + simulated_mem_length * element_size;

    this->addr_start = addr_start;
    this->addr_end = arr_end_ptr;
  }

  bool is_index_overbound(size_t i) { return i >= this->simulated_mem_length; }

  byte *get_addr_start() { return (byte *)this->addr_start; };
  byte *get_addr_end() { return (byte *)this->addr_end; };
  T *get_ptr_of_value_at_i(size_t i) {
    T *ptr_to_element_at_i =
        (T *)(this->simulated_mem + i * this->element_size);
    return ptr_to_element_at_i;
  };
  ADDR get_addr_of_value_at_i(size_t i) {
    return (ADDR)(this->get_ptr_of_value_at_i(i));
  }

  void set_value_at_idx(T value, size_t i) {

    T *ptr_to_element_at_i = this->get_ptr_of_value_at_i(i);

    *ptr_to_element_at_i = value;
  }

  T get_value_at_idx(size_t i) {

    T *ptr_to_element_at_i = this->get_ptr_of_value_at_i(i);

    return *ptr_to_element_at_i;
  }

  /*
   * filter depending on the action done
   *
   */
  void do_action_at_idx(size_t i, E_mem_action action) {
    // if we increment the value
    // then we want to find the value in memory
    // that have incremented previously
    // and the same goes for decrement

    switch (action) {
    case E_mem_action::increment: {
      T value_at_i = this->get_value_at_idx(i);
      this->set_value_at_idx(value_at_i + 1, i);

      break;
    }

    case E_mem_action::decrement: {
      T value_at_i = this->get_value_at_idx(i);
      this->set_value_at_idx(value_at_i - 1, i);
      break;
    }
    }
  }
  void do_actions_at_indexes(const std::vector<size_t> &indexes,
                             E_mem_action action) {

    for (size_t j = 0; j < indexes.size(); j++) {
      size_t action_at_idx = indexes[j];
      this->do_action_at_idx(action_at_idx, action);
    }
  }

  size_t get_simulated_mem_length() { return this->simulated_mem_length; };

  ~Simulated_Memory() { free(this->simulated_mem); }
};
