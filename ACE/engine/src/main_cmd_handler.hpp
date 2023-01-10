#pragma once
#include "ace_type.hpp"
#include <string>
#include <vector>

void process_map_cmd_handler(int pid, bool ps_map_list_all);

void list_processes_cmd_handler(bool ps_ls_reverse);

void clear_cmd_handler();

void version_cmd_handler();

void quit_cmd_handler();

/*
 * handles error checking when entering cheater mode
 * on process [pid]
 * */
void cheater_cmd_handler(int pid, E_num_type num_type);

void aslr_cmd_handler(bool aslr_set_val);

void gui_protocol_cmd_handler();

void attached_cmd_handler();
void display_intro();

void license_cmd_handler();

void credit_cmd_handler();
