#include "ACE/file_utils.hpp"
#include "ACE/error.hpp"
#include <dirent.h>
#include <fstream>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
/*
 * Read a file and return std::vector<std::string> (each string corresponds to
 * each line)
 *
 * */

std::vector<std::string> read_file(const char *file_name) {

  // TODO: needs to only return error code, without throwing error
  // directly
  // (takes inspiration from linux's errno and strerror)
  if (strlen(file_name) == 0) {
    error_exit("Cannot open a file with empty name\n");
  }
  std::ifstream file_stream(file_name);

  if (file_stream.fail()) {
    error_exit("Fails to open file %s, file may not exist or the program "
               "doesn't have access "
               "permission \n",
               file_name);
  }

  // Read file line by line, initialize line_count and allocate file_content
  std::vector<std::string> file_content;

  for (std::string line; std::getline(file_stream, line);) {

    // remove trailing carriage return and new line from buffer
    // (removing carriage return just in case if the stream is binary)
    if (!line.empty() && line[line.length() - 1] == '\n')
      line.erase(line.length() - 1);

    if (!line.empty() && line[line.length() - 1] == '\r')
      line.erase(line.length() - 1);

    file_content.push_back(line);
  }

  return file_content;
}

std::vector<std::string> read_file(const char *file_name,
                                   size_t max_buff_size) {

  FILE *fp;
  // allocate buffer by the given size
  char *buffer = (char *)malloc(max_buff_size);
  fp = fopen(file_name, "r");

  if (fp == NULL)
    error_exit("File %s is not found in the path, Fatal error\n", file_name);

  // Read file line by line, initialize line_count and allocate file_content
  std::vector<std::string> file_content;

  while (fgets(buffer, max_buff_size, fp)) {

    // remove trailing carriage return and new line from buffer
    // (removing carriage return just in case if the stream is binary)
    buffer[strcspn(buffer, "\r\n")] = 0;
    // construct std::string and add to the vector
    std::string line = std::string(buffer);
    if (line.size() > 0)
      file_content.push_back(line);
  }

  // free allocated resources
  free(buffer);
  fclose(fp);
  return file_content;
}

void write_file(const char *file_name, std::vector<std::string> content) {

  /*
   * error check
   * */

  if (strlen(file_name) == 0) {
    error_exit("Cannot open a file with empty name\n");
  }

  FILE *fp = fopen(file_name, "w");
  if (fp == NULL) {
    error_exit("Fails to open file %s, file may not exist or the program "
               "doesn't have access "
               "permission \n",
               file_name);
  }

  // write
  for (size_t i = 0; i < content.size(); i++)
    fprintf(fp, "%s\n", content[i].c_str());

  // free allocated resources
  fclose(fp);
}

void write_file(const char *file_name, std::string content) {
  write_file(file_name, std::vector<std::string>{content});
}
std::vector<std::string> list_directories(const char *current_dir) {
  /*
   *
   * list all files : https://stackoverflow.com/a/4204758/14073678
   * check if file is a directory: https://stackoverflow.com/a/3828537/14073678
   *  https://man7.org/linux/man-pages/man2/stat.2.html
   * */
  std::vector<std::string> directories = {};
  struct dirent *dir;
  DIR *d = opendir(current_dir);
  if (d) {
    while ((dir = readdir(d)) != NULL) {
      // we need to append the file name with `current_dir` because
      // dir->d_name only returns filename without the path
      std::string path_name =
          std::string(current_dir) + "/" + std::string(dir->d_name);
      struct stat stat_s;
      // stat return information about `path_name`
      // which is given in `stat_s`
      // return 0 on success
      if (stat(path_name.c_str(), &stat_s) == 0 && S_ISDIR(stat_s.st_mode)) {
        if (strcmp(dir->d_name, ".") != 0 && strcmp(dir->d_name, "..") != 0)
          directories.push_back(std::string(dir->d_name));
      }
    }
    closedir(d);
  } else
    error_exit("Directory %s is not found , Fatal error\n", current_dir);
  return directories;
}

bool file_exist(const char *file_name) {

  FILE *fp = fopen(file_name, "r");
  if (fp != NULL) {
    fclose(fp);
    return true;
  }
  return false;
}
