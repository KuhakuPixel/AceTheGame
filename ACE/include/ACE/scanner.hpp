#pragma once
#include "ace_type.hpp"
#include "maps.hpp"
#include "match_store.hpp"
#include "math_util.hpp"
#include "proc_rw.hpp"
#include "scan_utils.hpp"
#include <functional>
#include <list>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <sys/types.h> //For ssize_t
#include <unordered_map>
#include <vector>

template <typename T> struct chunk_scan_prop {
  /* scan's starting address */
  byte *addr_start;
  /* scan's ending address */
  byte *addr_end;
  Scan_Utils::E_read_mem_method read_mem_method;
};

/*
 * used for scanner_find_val to be used safely
 * to search for type <T>,
 *
 * this is used to indicate the maximum amount  that
 * [func_retrieve_at_addr] can dereference (cannot be greater than sizeof(<T>)
 * to prevent  segfault
 *
 * [func_retrieve_at_addr] can be used for :
 * 1. dereferencing it directly( ussualy for unit testing ) and belong in the
 * same process
 *
 * 2. retreiving value belonging to another process
 *
 *  (POSIX system only)
 *  ```
 *  long ptrace(PTRACE_PEEKDATA, pid_t pid,
 *                  void *addr, void *data);
 *  ```
 *  when [address] belongs to another process
 * https://man7.org/linux/man-pages/man2/ptrace.2.html
 * ==========================================================================
 * NOTES: please don't lie if [func_retrieve_at_addr] actually dereference
 * more than specified or else the segfault monster will get ya:)
 *
 * */
template <typename T> class ACE_scanner {

private:
  const int pid;
  const size_t one_mega_byte = pow_integral(2, 20);
  const size_t max_chunk_read_size = one_mega_byte;
  size_t match_count_per_progress;
  proc_rw<T> *process_rw = NULL;
  const std::function<void(size_t current, size_t max)> on_scan_progress;
  const std::function<void()> on_scan_done;

  bool first_scan_done = false;
  // TODO: handle different scan level in consequent scan
  // 	   this current options only effect initial scan
  /*
   * by default only scan for addresses that
   * are aligned to their byte size
   * because most of the time
   * compiler won't allocate variable which will be
   * unalligned and cause performance hit
   * https://stackoverflow.com/a/45853318/14073678
   *
   **/
  Scan_Utils::E_scan_level scan_level = Scan_Utils::E_scan_level::aligned_only;
  //
  Scan_Utils::E_region_level region_level =
      Scan_Utils::E_region_level::heap_stack_executable_bss;
  // step size of the loop
  // during each iteration  of a scan
  size_t scan_step_size = sizeof(T);
  // scan for reverse endian
  E_endian_scan_type endian_scan_type = E_endian_scan_type::native;

  match_storage<T> current_scan_result =
      match_storage<T>(Scan_Utils::E_scan_level::aligned_only);

  void read_chunk(chunk_scan_prop<T> scan_prop,
                  std::function<void(ADDR addr, T new_val)> on_each_iteration,
                  byte *mem_buff, size_t mem_buff_size);

  /*
   * if [compare_with_new_value] is false: compare old value with [cmp_val]
   * else: compare old value with new value in that address
   *
   * */
  void _next_scan(Scan_Utils::E_operator_type operator_type,
                  bool compare_with_new_value, T cmp_val);

public:
  /**
   * [match_count_per_progress]: show progress by calling [on_progress] on
   * every [match_count_per_progress] matches for next scan
   * */
  ACE_scanner(int pid,
              std::function<void(size_t current, size_t max)> on_scan_progress,
              std::function<void()> on_scan_done = nullptr,
              size_t match_count_per_progress = 1000000

  );
  ~ACE_scanner();

  /*
   * scan for value whoose endianness is swapped
   * */
  void set_endian_scan_type(E_endian_scan_type val);

  size_t get_scan_step_size();

  void set_scan_level(Scan_Utils::E_scan_level scan_level);
  Scan_Utils::E_scan_level get_scan_level();

  void set_region_level(Scan_Utils::E_region_level region_level);
  Scan_Utils::E_region_level get_region_level();

  E_endian_scan_type get_endian_scan_type() const;

  bool get_first_scan_done() const;

  const match_storage<T> &get_current_scan_result() const;

  /*
   * get matches as vector of address and value
   * (takes a long time, for performance, use [get_current_scan_result])
   * because this func copies the result from [get_current_scan_result]
   * */
  std::vector<Scan_Utils::addr_and_value<T>>
  get_current_scan_result_as_vector() const;

  void reset_scan();
  /*
   * update the value of all addresses with newer value
   * in this->current_scan_result
   * */
  void update_current_scan_result();

  /*
   * do a scan on multiple range of addresses
   * */
  void first_scan(const std::vector<struct mem_region> &segments_to_scan,
                  Scan_Utils::E_operator_type operator_type, T value_to_find);

  /**
   * [on_mem_regions_found]: called when all suitable memory segments
   * 			      are found
   * */
  void first_scan(Scan_Utils::E_operator_type operator_type, T value_to_find,
                  std::function<void(
                      const std::vector<struct mem_region> &segments_to_scan)>
                      on_mem_regions_found = nullptr

  );

  /*
   * find value [value_to_find] from [addr_start] to [addr_end]
   * using proc_rw<T>::read_mem_new to retrieve the values
   *
   * this functions read a chunk (large numbers of bytes)
   * and put the results in an array, this functions is preferred
   * when calling function to retrieve value at an address
   * individually are expensives
   *
   * for example: ptrace call
   * ```
   * long val = ptrace(PTRACE_PEEKDATA, pid, (void *)address, NULL);
   * ```
   * according to https://man7.org/linux/man-pages/man2/ptrace.2.html
   * ptrace will read  a word (long in c type)
   *
   * consider the following scheme and a long as 8 byte
   * each number here represents a byte in memory
   *
   * and the value as their order
   * |1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|
   *
   * 	if we iterate each address one by one to find [value_to_find] with
   * 	operator_type as [operator_type] and on each address we use ptrace
   * 	call, the performance will go to a sink hole since
   * 	ptrace call is expensive
   *
   * 	|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|
   * 	|---------------|
   * 	^ ptrace call to retrieve 8 bytes -> and check match
   *
   * 	|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|
   * 	  |---------------|
   * 	  ^ ptrace call to retrieve 8 bytes -> and check match
   *
   * 	|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|
   * 	    |---------------|
   * 	    ^ ptrace call to retrieve 8 bytes -> and check match
   * 	from the examples , each time we iterate by one byte
   * 	we need to call ptrace
   *
   * 	so if we only iterate till the 3nd byte, we need to have 3 ptrace calls!
   *
   * a better solution is to use ptrace to read a "chunk" and put it
   * in an array then use them when we iterate through the bytes
   * if we have read them all in the array, then we load the next one
   *
   * since ptrace read 8 bytes, from the above memory (16 bytes), we
   * only need 2 ptrace call to retrieve all value in memory
   * which will be much faster
   *
   * even better to just read from  `/proc/<pid>/mem`
   * if the system has them
   *
   * */
  void _first_scan(byte *addr_start, byte *addr_end,
                   Scan_Utils::E_operator_type operator_type, T value_to_find,
                   std::function<void(ADDR addr, T new_val)> on_match_found);

  /*
   * if [compare_with_new_value] is false: compare old value with [cmp_val]
   * else: compare old value with new value in that address
   *
   * */
  void next_scan(Scan_Utils::E_operator_type operator_type, T cmp_val);

  /*
   * should be called after `scanner_find_val`
   * */
  void next_scan(Scan_Utils::E_operator_type operator_type);

  void write_val_to_current_scan_results(T val);

  /*
   * get matches address in string format
   * the address will be in base 10
   * */
  std::vector<std::string> get_matches_addresses();
};
