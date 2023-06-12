#pragma once
#include "../third_party/CLI11.hpp"
#include "ace_type.hpp"
struct main_mode_options {

  int pid;
  bool ps_map_list_all;
  bool ps_ls_reverse;
  bool aslr_set_val;

  E_num_type cheater_num_type;

  main_mode_options() {
    this->pid = -1;
    this->ps_map_list_all = false;
    this->ps_ls_reverse = false;
    this->aslr_set_val = false;
    this->cheater_num_type = E_num_type::INT;
  }
};

void main_cmd_create(CLI::App *app, main_mode_options *current_options);
