#pragma once
#include "ace_type.hpp"
#include "cheat_cmd_handler.hpp"
#include "engine_module.hpp"
#include "input.hpp"
#include "maps.hpp"
#include "scanner.hpp"
#include <string>
#include <vector>

void cheater_mode_loop(int pid);
/*
 * mode to scan and write to all segments of process in [segments_to_scan]
 * from and to the  process with pid of [pid]
 *
 * */
void cheater_mode(int pid);
