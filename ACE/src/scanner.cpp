#include "ACE/scanner.hpp"
#include "ACE/common.hpp"
#include "ACE/endian.hpp"
#include "ACE/loaded_mem_info.hpp"
#include "ACE/scan_utils.hpp"
#include "ACE/to_frontend.hpp"
#include <errno.h>
#include <stdexcept>
#include <string.h>

// #include <valgrind/valgrind.h>

template <typename T>
ACE_scanner<T>::ACE_scanner(
    int pid, std::function<void(size_t current, size_t max)> on_scan_progress,
    std::function<void()> on_scan_done, size_t match_count_per_progress)
    : pid(pid), on_scan_progress(on_scan_progress), on_scan_done(on_scan_done)

{
  this->process_rw = new proc_rw<T>(pid);
  this->match_count_per_progress = match_count_per_progress;
};

template <typename T> ACE_scanner<T>::~ACE_scanner() {
  delete this->process_rw;
}

template <typename T>
void ACE_scanner<T>::set_endian_scan_type(E_endian_scan_type val) {
  this->endian_scan_type = val;
}

template <typename T> size_t ACE_scanner<T>::get_scan_step_size() {
  return this->scan_step_size;
}

template <typename T>
void ACE_scanner<T>::set_scan_level(Scan_Utils::E_scan_level scan_level) {
  this->scan_level = scan_level;

  /*
   * if a variable is aligned, its address
   * must be divisible by the sizeof the element
   * */

  if (scan_level == Scan_Utils::E_scan_level::aligned_only)
    this->scan_step_size = sizeof(T);
  /*
   * iterate address one by one for
   * exhaustive scan
   * */
  else if (scan_level == Scan_Utils::E_scan_level::all)
    this->scan_step_size = 1;
  // also set match storage's scan level
  this->current_scan_result.set_scan_level(scan_level);
}

template <typename T>
Scan_Utils::E_scan_level ACE_scanner<T>::get_scan_level() {
  return this->scan_level;
}

template <typename T>
void ACE_scanner<T>::set_region_level(Scan_Utils::E_region_level region_level) {
  this->region_level = region_level;
}

template <typename T>
Scan_Utils::E_region_level ACE_scanner<T>::get_region_level() {
  return this->region_level;
}

template <typename T>
E_endian_scan_type ACE_scanner<T>::get_endian_scan_type() const {
  return this->endian_scan_type;
}

template <typename T> bool ACE_scanner<T>::get_first_scan_done() const {
  return this->first_scan_done;
}

template <typename T>
const match_storage<T> &ACE_scanner<T>::get_current_scan_result() const {
  return this->current_scan_result;
}

template <typename T>
std::vector<Scan_Utils::addr_and_value<T>>
ACE_scanner<T>::get_current_scan_result_as_vector() const {

  std::vector<struct Scan_Utils::addr_and_value<T>> addr_and_values = {};
  this->current_scan_result.iterate_val(

      [&](ADDR addr, int val) {
        //
        addr_and_values.push_back(Scan_Utils::addr_and_value<T>(addr, val));
      }

  );

  return addr_and_values;
}

template <typename T> void ACE_scanner<T>::reset_scan() {
  this->current_scan_result.clear();
  this->first_scan_done = false;
}

template <typename T> void 

ACE_scanner<T>::update_current_scan_result() {

  this->current_scan_result.iterate(

      [&](ADDR addr, T *val_ptr) {
        // update value  in the iterator
        *val_ptr = this->process_rw->retrieve_val((byte *)(addr));
      }

  );
}

template <typename T>
void ACE_scanner<T>::read_chunk(
    chunk_scan_prop<T> scan_prop,
    std::function<void(ADDR addr, T new_val)> on_each_iteration,

    byte *mem_buff, size_t mem_buff_size) {

  // to store chunk of memory read
  loaded_mem_info<T> loaded_mem = loaded_mem_info<T>();
  //
  T *addr_itr_end =
      Scan_Utils::ACE_get_address_iterator_end<T>(scan_prop.addr_end);

  // initial scan_level
  // start loop scan
  byte *next_load_addr = scan_prop.addr_start;
  for (byte *i = scan_prop.addr_start; i <= (byte *)addr_itr_end;
       i += this->scan_step_size) {

    // =======================================================
    /*
     * load next chunk when:
     * - we have read them all
     * - just starting
     *
     * - loaded_mem_size is less than the element size
     *   that we want to read
     *   (which of course we cannot read further
     *
     *   or anything meaningful)
     *
     */
    if (i >= next_load_addr) {
      // get load size
      size_t left_off_size = (size_t)(scan_prop.addr_end - i);
      size_t expected_load_size =
          std::min(this->max_chunk_read_size, left_off_size);
      size_t actual_load_size = 0;

      /*
       * load memory and set in which address
       * this memory is retrieved from
       * */

      // reset errno
      errno = 0;
      actual_load_size = this->process_rw->read_mem_new(
          i, expected_load_size, mem_buff, scan_prop.read_mem_method);
      // something wrong with read, just move on to next address
      if (errno != 0) {
        continue;
      }
      // set next load address
      next_load_addr = i + actual_load_size;
      /*
       * prevent bad [read_mem_new] functions from returning
       * loaded_mem_size larger than requested
       * which doesn't suppose to happen ever!!!
       * */
      if (actual_load_size > expected_load_size) {
        char buff[1000];

        snprintf(
            buff, 999,
            "scanner's read_mem_new functions returns "
            "[loaded_mem_size] = %zu larger than requested [load_size] = %zu\n",
            actual_load_size, expected_load_size);

        throw std::logic_error(buff);
      }
      if (actual_load_size == 0)
        continue;
      loaded_mem.store_mem(mem_buff, actual_load_size, i);
    }

    // don't read value when loaded memory size is less than element size,
    // because we are gonna read bigger than we should and will cause segfault
    size_t loaded_mem_left_off_size = (size_t)(next_load_addr - i);
    if (loaded_mem_left_off_size < sizeof(T))
      continue;

    /*
     * read value in [loaded_mem] at address [i]
     * */

    // check matches
    T retrieved_val = loaded_mem.retrieve_val(i);
    on_each_iteration((ADDR)i, retrieved_val);
  }
}
template <typename T>
void ACE_scanner<T>::_next_scan(Scan_Utils::E_operator_type operator_type,
                                bool compare_with_new_value, T cmp_val) {

  if (this->endian_scan_type == E_endian_scan_type::swapped)
    cmp_val = swap_endian(cmp_val);

  match_storage<T> new_scan_result = match_storage<T>(this->scan_level);

  size_t mem_buff_size = this->max_chunk_read_size;
  byte *mem_buff = (byte *)malloc(mem_buff_size);

  size_t scan_progress_idx = 1;
  auto on_each_chunk = [&](const match_chunk_prop<T> &chunk_prop) {
    // ====================== scan param =======================
    chunk_scan_prop<T> scan_prop;
    scan_prop.addr_start = (byte *)chunk_prop.base_address;
    scan_prop.addr_end =
        (byte *)chunk_prop.get_exclusive_end_addr(this->scan_level);
    // for next scan, we want to use process_vm_readv just in case
    // the memory region first read and parsed by the engine to scan from
    // are now non existent. because process_vm_readv can provide
    // robust error handling when that happens and not just
    // crash (killed by the kernel) just because we happen to
    // try to read from "proc/[pid]/mem" wrongly (trying to read
    // non existent region)
    scan_prop.read_mem_method =
        Scan_Utils::E_read_mem_method::with_process_vm_readv;
    // ============================================
    this->read_chunk(

        scan_prop,

        [&](ADDR addr, T new_val) {
          // add result if match
          T prev_val = chunk_prop.get_val_at_addr(addr, this->scan_level);
          if (compare_with_new_value) {
            if (Scan_Utils::value_compare<T>(new_val, operator_type, prev_val))
              new_scan_result.add_match(addr, new_val);
          } else {
            if (Scan_Utils::value_compare<T>(new_val, operator_type, cmp_val))
              new_scan_result.add_match(addr, new_val);
          }

          // show progress
          if (scan_progress_idx % this->match_count_per_progress == 0) {
            this->on_scan_progress(
                scan_progress_idx / this->match_count_per_progress,

                this->current_scan_result.get_matches_count() /
                    this->match_count_per_progress);
          }
          scan_progress_idx++;
        },

        mem_buff, mem_buff_size

    );
  };

  this->current_scan_result.iterate_chunk(on_each_chunk);
  this->current_scan_result = new_scan_result;

  if (this->on_scan_done != nullptr) {
    this->on_scan_done();
  }
  // free allocated memory
  free(mem_buff);
}

template <typename T>
void ACE_scanner<T>::_first_scan(
    byte *addr_start, byte *addr_end, Scan_Utils::E_operator_type operator_type,
    T value_to_find, std::function<void(ADDR addr, T new_val)> on_match_found) {
  if (this->endian_scan_type == E_endian_scan_type::swapped)
    value_to_find = swap_endian(value_to_find);

  /*
   * when scan level is Scan_Utils::E_scan_level::aligned_only
   * starting address must also be aligned
   * since the step size will be sizeof(T)
   * */

  if (this->scan_level == Scan_Utils::E_scan_level::aligned_only) {
    addr_start = (byte *)Scan_Utils::get_nearest_aligned_addr((ADDR)addr_start,
                                                              sizeof(T));
  }
  // ====================== scan param =======================
  chunk_scan_prop<T> scan_prop;
  scan_prop.addr_start = addr_start;
  scan_prop.addr_end = addr_end;
#ifdef __ANDROID__
  // For Android, process_vm_readv
  scan_prop.read_mem_method =
      Scan_Utils::E_read_mem_method::with_process_vm_readv;
#else
  // for first scan only, we have to read from proc pid mem
  // because process_vm_readv is too slow for large read
  // but process_vm_readv provide much better error handling
  // than proc pid mem (TODO: find out why)
  scan_prop.read_mem_method =
      Scan_Utils::E_read_mem_method::with_proc_pid_mem_file;
#endif
  // cannot compare against self
  // because this is an initial scan and
  // we haven't got a match result yet
  // =========================================================

  size_t mem_buff_size = this->max_chunk_read_size;
  byte *mem_buff = (byte *)malloc(mem_buff_size);
  this->read_chunk(

      scan_prop,

      [on_match_found, operator_type, value_to_find](ADDR addr, T new_val) {
        if (Scan_Utils::value_compare<T>(new_val, operator_type,
                                         value_to_find)) {
          on_match_found(addr, new_val);
        }
      },

      mem_buff, mem_buff_size

  );

  // free allocated memory
  free(mem_buff);
}

template <typename T>
void ACE_scanner<T>::first_scan(
    const std::vector<struct mem_region> &segments_to_scan,
    Scan_Utils::E_operator_type operator_type, T value_to_find) {

  // reset current scan
  this->current_scan_result.clear();
  this->first_scan_done = true;
  for (size_t i = 0; i < segments_to_scan.size(); i++) {
    // show progress
    this->on_scan_progress(i + 1, segments_to_scan.size());
    // do scan
    this->_first_scan(

        (byte *)segments_to_scan[i].address_start,
        (byte *)segments_to_scan[i].address_end, operator_type, value_to_find,
        // on match found
        [this](ADDR addr, T new_val) {
          this->current_scan_result.add_match(addr, new_val);
        }

    );
  }

  if (this->on_scan_done != nullptr) {
    this->on_scan_done();
  }
}

template <typename T>
void ACE_scanner<T>::first_scan(
    Scan_Utils::E_operator_type operator_type, T value_to_find,
    std::function<void(const std::vector<struct mem_region> &segments_to_scan)>
        on_mem_regions_found) {

  std::vector<struct mem_region> segments_to_scan =
      mem_region_get_regions_for_scan(this->pid, this->get_region_level());
  // =================================================================

  if (on_mem_regions_found != nullptr) {
    on_mem_regions_found(segments_to_scan);
  }

  this->first_scan(segments_to_scan, operator_type, value_to_find);
}

template <typename T>
void ACE_scanner<T>::next_scan(Scan_Utils::E_operator_type operator_type,
                               T cmp_val) {
  this->_next_scan(operator_type, false, cmp_val);
}
template <typename T>
void ACE_scanner<T>::next_scan(Scan_Utils::E_operator_type operator_type) {
  this->_next_scan(operator_type, true, 0);
}
template <typename T>
void ACE_scanner<T>::write_val_to_current_scan_results(T val) {
  if (this->endian_scan_type == E_endian_scan_type::swapped)
    val = swap_endian<T>(val);

  this->current_scan_result.iterate_val(

      [&](ADDR addr, T old_val) {
        // reset errno
        errno = 0;
        ssize_t ret_val = this->process_rw->write_val((byte *)(addr), val);

        // error on write
        if (errno != 0 && ret_val == -1) {
          frontend::print("Error while writting matches at %p: %s\n",
                          (byte *)addr, strerror(errno));
        }
      }

  );
}

template <typename T>
std::vector<std::string> ACE_scanner<T>::get_matches_addresses() {
  std::vector<std::string> matches_addresses = {};
  this->get_current_scan_result().iterate_val(

      [&matches_addresses](ADDR addr, int val) {
        //
        matches_addresses.push_back(std::to_string(addr));
      }

  );
  return matches_addresses;
}

// explicit template instantiations
#define EXPLICIT_INSTANTIATE(TYPE) template class ACE_scanner<TYPE>;

TEMPLATE_NUMERIC_INSTANTIATE(EXPLICIT_INSTANTIATE);
#undef EXPLICIT_INSTANTIATE
