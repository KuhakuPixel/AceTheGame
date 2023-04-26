#pragma once
#include "ACE_global.hpp"
#include "ace_type.hpp"
#include "error.hpp"
#include "freeze.hpp"
#include "maps.hpp"
#include "str_utils.hpp"
#include <algorithm>
#include <iostream>
#include <string.h>
#include <unistd.h>

// - use const pointer if a command handler doesn't modify the scanner in
//

struct cheat_mode_config {
  bool initial_scan_done = false;
  int pid = -1;
  bool scan_all_region = false;
  bool pause_while_scan = false;
};

template <typename T> struct cheat_mode_args {
  Scan_Utils::E_operator_type operator_type;
  T num_val;
  ADDR addr_to_read;
  ADDR addr_to_write;
  ADDR addr_to_freeze_or_unfreeze;
  E_endian_scan_type endian_scan_type;
  Scan_Utils::E_scan_level scan_level_type;
  E_num_type num_scan_type;

  size_t list_max_count;
  size_t read_arr_read_length;

  cheat_mode_args();
};

template <typename T>
void list_cmd_handler(const ACE_scanner<T> *scanner, size_t list_max_count);

template <typename T>
void matchcount_cmd_handler(const ACE_scanner<T> *scanner);

void pid_cmd_handler(int pid);

template <typename T>
void filter_cmd_handler(ACE_scanner<T> *scanner,
                        Scan_Utils::E_operator_type operator_type,
                        const cheat_mode_config *cheat_config);

template <typename T>
void scan_cmd_handler(ACE_scanner<T> *scanner,

                      Scan_Utils::E_operator_type operator_type,

                      cheat_mode_config *cheat_config,

                      T num_to_find);

template <typename T>
void write_cmd_handler(ACE_scanner<T> *scanner, T val_to_write);
template <typename T>
void update_cmd_handler(ACE_scanner<T> *scanner,
                        const cheat_mode_config *cheat_config

);

template <typename T>
void readat_cmd_handler(proc_rw<T> *process_rw, ADDR address);

template <typename T>
void read_arr_cmd_handler(proc_rw<T> *process_rw, ADDR address,
                          size_t read_length);

template <typename T>
void writeat_cmd_handler(proc_rw<T> *process_rw, ADDR address, T val_to_write);

template <typename T>
void endian_cmd_handler(ACE_scanner<T> *scanner,
                        E_endian_scan_type endian_scan_type);
template <typename T>
void scan_level_cmd_handler(ACE_scanner<T> *scanner,
                            Scan_Utils::E_scan_level scan_level);

void type_cmd_handler(E_num_type scan_type,
                      cheat_cmd_ret *cheater_on_line_ret_ptr);
template <typename T>
void freeze_at_cmd_handler(freezer<T> *freezer_manager, ADDR addr);

template <typename T>
void freeze_at_val_cmd_handler(freezer<T> *freezer_manager, ADDR addr,
                               T num_val);
template <typename T>
void unfreeze_at_cmd_handler(freezer<T> *freezer_manager, ADDR addr);

template <typename T>
void freeze_all_cmd_handler(const ACE_scanner<T> *scanner,
                            freezer<T> *freezer_manager);
template <typename T>
void unfreeze_all_cmd_handler(freezer<T> *freezer_manager);

template <typename T>
void freeze_list_cmd_handler(const freezer<T> *freezer_manager);
