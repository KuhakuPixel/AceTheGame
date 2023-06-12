#pragma once
#include <stdbool.h>
#include <stdlib.h>
#include <string>
#include <vector>
std::vector<std::string> read_file(const char *file_name);

std::vector<std::string> read_file(const char *file_name, size_t max_buff_size);

void write_file(const char *file_name, std::vector<std::string> content);
void write_file(const char *file_name, std::string content);
/*
 * list only directories in `current_dir` excluding special directories
 * like `.` and `..`
 * */
std::vector<std::string> list_directories(const char *current_dir);

bool file_exist(const char *file_name);
