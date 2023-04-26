/*
 * overview:
 * - parent creates an array and put the value to
 * be found at multiple locations using `setup_val_to_find`
 *
 * - after the array creation (the so called simulated memory)
 * it will create a child with fork syscall which will create
 * an identical memory to the parent
 *
 * (same addresses of setupped value since os uses virtual addresses
 *  instead of physical addresses)
 *
 * - the parent  will start scanning the child while being attached
 * from the base address to the end address of the created
 * array to find the setupped value's address
 *
 * - do an initial scan and other consecutive scan/filter as needed
 * afterward to find the exact
 * address of the value setupped value
 *
 * - test if the scanner found the exact matches count
 * to the count of value we expected it to find
 * that has been tracked by `setup_val_to_find`
 * */

#pragma once
#include "../src/error.hpp"
#include "../src/file_utils.hpp"
#include "../src/proc_create.hpp"
#include "../src/proc_rw.hpp"
#include "../src/ptrace.hpp"
#include "../src/scan_utils.hpp"
#include "../src/scanner.hpp"
#include "../src/simulated_memory.hpp"
#include "../src/str_utils.hpp"
#include "../third_party/catch.hpp"
#include <algorithm>
#include <stdexcept>
#include <string.h>
#include <sys/wait.h>
#include <unistd.h>
namespace ScannerTester {
enum class Initial_Scan_Data_Type {

  // initialize generated array with pregenerated value at a file
  with_generated_val,
  // initialize generated array with zeroes
  with_zeros,

};

/*
 * class to simulate another processes memory,
 *
 * the only thing the scanner should get is
 * the starting and ending addresses
 * without knowing what types, sizes are in there
 *
 * */

template <typename T> class ACE_scanner_tester {

private:
  ACE_scanner<T> *scanner = NULL;
  proc_rw<T> *process_rw = NULL;
  // the pid of process the
  // scanner will scan for
  int tracee_pid = -1;
  Simulated_Memory<T> *simulated_memory = NULL;
  // path to a generated random number to fill [simulated_memory]
  const char *pregenerated_num_path = NULL;
  // value to be found
  T initial_value_to_scan;

  // indexes of where [initial_value_to_scan] is
  // in [simulated_memory]
  std::vector<size_t> setupped_val_at_indexes = {};
  //
  //

  ULL get_size_of_simulated_mem_element() { return sizeof(ULL); }

  std::vector<int> load_mock_scan_data(const char *path_to_data) {

    std::vector<std::string> loaded_str_datas = read_file(path_to_data);
    char err_msg_buff[1000];

    // bad file
    if (loaded_str_datas.size() != 1) {

      snprintf(err_msg_buff, 999,
               "file %s expected to have 1 line, but has %zu line\n",
               path_to_data, loaded_str_datas.size());
      throw std::runtime_error(std::string(err_msg_buff));
    }
    std::vector<std::string> datas = str_split(loaded_str_datas[0], ",");
    // bad content
    if (datas.size() == 0) {

      snprintf(
          err_msg_buff, 999,
          "file %s expected to have number separated with comma, but its empty",
          path_to_data);
      throw std::runtime_error(std::string(err_msg_buff));
    }
    // TODO change to <T> ?
    std::vector<int> int_datas = {};
    /*
     * convert all datas to int
     * */

    for (size_t i = 0; i < datas.size(); i++) {
      if (!str_is_numeric(datas[i].c_str())) {
        snprintf(err_msg_buff, 999, "found non-numeric data at file %s : %s\n",
                 path_to_data, datas[i].c_str());
        throw std::runtime_error(std::string(err_msg_buff));
      }
      int_datas.push_back(std::stoi(datas[i]));
    }
    return int_datas;
  }

public:
  ACE_scanner_tester(T initial_value_to_scan, size_t simulated_mem_length,
                     const char *pregenerated_num_path,
                     Initial_Scan_Data_Type init_simulated_memory_type

  ) {

    // ================================================================

    // ================================================================
    // init some const
    this->pregenerated_num_path = pregenerated_num_path;
    this->initial_value_to_scan = initial_value_to_scan;
    // init simulated mem
    this->simulated_memory =
        new Simulated_Memory<T>(simulated_mem_length, sizeof(T));

    // load generated data from file to simulated memory
    if (init_simulated_memory_type ==
        Initial_Scan_Data_Type::with_generated_val) {
      std::vector<int> loaded_num_datas =
          this->load_mock_scan_data(pregenerated_num_path);

      for (size_t i = 0; i < this->simulated_memory->get_simulated_mem_length();
           i++) {

        // we need to use modulo operator
        // so we don't index overbound
        int val = loaded_num_datas[i % loaded_num_datas.size()];
        this->simulated_memory->set_value_at_idx((T)val, i);
      }
    }

    /*
     * Note: only fork after we have initialized the [simulated_memory]
     * otherwise fork will copy an uninitialized [simulated_memory]
     * */
    // create child process to be traced
    this->tracee_pid = proc_fork_busy_child();
    // init
    this->scanner = new ACE_scanner<T>(tracee_pid);
    this->process_rw = new proc_rw<T>(tracee_pid);
  }

  std::vector<ADDR> get_expected_found_addresses() {
    std::vector<ADDR> expected_found_addresses = {};

    /*
     * get the address of the value to be scanned for
     * */
    for (size_t i = 0; i < this->setupped_val_at_indexes.size(); i++) {
      size_t index_at = setupped_val_at_indexes[i];
      ADDR expected_addr =
          this->simulated_memory->get_addr_of_value_at_i(index_at);
      expected_found_addresses.push_back(expected_addr);
    }
    return expected_found_addresses;
  }

  void scanner_set_endian_scan_type(E_endian_scan_type val) {
    this->scanner->set_endian_scan_type(val);
  }
  /*
  this setup the value to find at all certain index
  this is used to simulate where the value is in the mmeory
  so when an `action` is done to them, they will all
  change as well
  */
  void setup_val_to_find(size_t idx) {
    char err_msg_buff[1000];
    // check for any overbound
    if (this->simulated_memory->is_index_overbound(idx)) {
      char err_msg_buff[200];
      snprintf(err_msg_buff, 199, "index: %lld is overbound\n", (LL)idx);
      throw std::invalid_argument(std::string(err_msg_buff));
    }

    if (std::find(setupped_val_at_indexes.begin(),
                  setupped_val_at_indexes.end(), idx

                  ) != setupped_val_at_indexes.end()) {
      snprintf(err_msg_buff, 999, "index %zu is already registered\n", idx);
      throw ::std::invalid_argument(err_msg_buff);
    }

    setupped_val_at_indexes.push_back(idx);

    // write value to tracee
    int ptrace_attach_ret = 0;
    int ptrace_deattach_ret = 0;
    CALL_WHILE_PTRACE_ATTACHED(
        this->tracee_pid,

        {
          // setup the value
          // of simulated_mem
          ADDR address_of_i =
              this->simulated_memory->get_addr_of_value_at_i(idx);

          // write
          this->process_rw->write_val((byte *)address_of_i,
                                      this->initial_value_to_scan);
        },

        &ptrace_attach_ret, &ptrace_deattach_ret, true

    );
  }

  /*
   * increment every setupped value (setupped by setup_val_to_find
   * function)
   * */
  void increment_setupped_val(T val) {

    for (size_t i = 0; i < setupped_val_at_indexes.size(); i++) {
      // get index where to increment value
      size_t at_index = this->setupped_val_at_indexes[i];

      // address of value at index [at_index]
      ADDR addr = this->simulated_memory->get_addr_of_value_at_i(at_index);
      // write to [addr]
      this->process_rw->increment_val((byte *)addr, val);
    }
  }

  // ==============================================================
  /*
   * contains wrapper function for scanner's initial scan
   *
   * since this tester uses a Simulated_Memory
   * it is impossible for the caller of this tester to pass the starting
   * and ending address of the Simulated_Memory (since it is private to
   * tester's caller) required by scanner's initial_scan or initial_scan
   * function
   *
   * */

  void initial_scan(Scan_Utils::E_operator_type operator_type, T val_scan) {

    int ptrace_attach_ret = 0;
    int ptrace_deattach_ret = 0;

    CALL_WHILE_PTRACE_ATTACHED(
        this->tracee_pid,

        {
          this->scanner->initial_scan(
              (byte *)this->simulated_memory->get_addr_start(),
              (byte *)this->simulated_memory->get_addr_end(), operator_type,
              val_scan);
        },

        &ptrace_attach_ret,

        &ptrace_deattach_ret,

        true

    );
  }

  // ==============================================================

  void scanner_filter(Scan_Utils::E_operator_type operator_type) {

    this->scanner->filter_val(operator_type);
  }

  void scanner_filter_on_value(Scan_Utils::E_operator_type operator_type,
                               T value) {
    this->scanner->filter_from_cmp_val(operator_type, value);
  }

  void scanner_update_current_scan_result() {
    this->scanner->update_current_scan_result();
  }
  void scanner_write_val_to_current_scan_results(T val) {
    this->scanner->write_val_to_current_scan_results(val);
  }

  std::vector<ADDR> get_current_scan_addresses() {

    // ==============================================================
    match_storage<T> current_scan_res = scanner->get_current_scan_result();
    std::vector<ADDR> actual_found_addresses = {};

    // insert
    // TODO: this is a temporary solutions for maintaining backward
    // compatability because of a change in data structure to store
    // matches
    current_scan_res.iterate_val(

        [&actual_found_addresses](ADDR addr, int val) {
          //
          actual_found_addresses.push_back(addr);
        }

    );
    return actual_found_addresses;
  }

  std::vector<struct Scan_Utils::addr_and_value<T>> get_current_scan_results() {
    std::vector<struct Scan_Utils::addr_and_value<T>> addr_and_values = {};
    match_storage<T> current_scan_res = scanner->get_current_scan_result();

    // insert
    // TODO: this is a temporary solutions for maintaining backward
    // compatability because of a change in data structure to store
    // matches
    current_scan_res.iterate_val(

        [&](ADDR addr, int val) {
          //
          addr_and_values.push_back(Scan_Utils::addr_and_value<T>(addr, val));
        }

    );

    return addr_and_values;
  }

  ~ACE_scanner_tester() {

    /*
     * free memory
     * */
    delete (this->simulated_memory);
    delete (this->scanner);
    delete (this->process_rw);

    /*
     * kill spawned child (tracee)
     * and wait for it to die
     * so that it won't become a zombie state
     * */
    kill(this->tracee_pid, SIGKILL);
  };
};

} // namespace ScannerTester
