#pragma once
#include "ace_type.hpp"
#include <string>
#include <unordered_map>
#include <vector>

/*
 * return string from [str] between [first_c] and [second_c]
 *
 * [first_c] : first occurance of char starting from first index
 * [second_c] : first occurance of char starting from last index
 *
 *
 * examples
 *
 *
 * ```
 * str_extract_between_chars("hi(hello)",'(',')')
 * return "hello"
 * ```
 *
 * optional parameter may be used to get the index
 * of first_c and second_c that are found via
 * first_c_idx_ptr and second_c_idx_ptr
 *
 *
 * 'inclusive': if true also extract first_c and second_c
 *
 * [can_extract_str_ptr]: set to true if [first_c] and [second_c] are
 * 		 	  contained in [str]
 * */
std::string str_extract_between_chars(

    const std::string &str, char first_c, char second_c,
    size_t *first_c_idx_ptr = NULL, size_t *second_c_idx_ptr = NULL,
    bool inclusive = false, bool *can_extract_str_ptr = NULL);

/*
 * split string based on `delimeter`
 * */
std::vector<std::string> str_split(std::string str, std::string delimeter);
bool str_is_numeric(const char *str);
/*
 * get substr from `index_1` to `index_2` in str
 * both indexes are inclusive
 * */
std::string str_get_substr_inclusive(const std::string &str, size_t index_1,
                                     size_t index_2);

/*
 * get substr from index of first_c (if any) to the end of the string
 * then return index of first_c to first_c_idx_ptr if not NULL
 *
 * example
 * str_extract_first_c_to_end("test test /some_path/program", '/', NULL,
                                     true)
   returns "/some_path/program"
 * */
std::string str_extract_first_c_to_end(const std::string &str, char first_c,
                                       LL *first_c_idx_ptr, bool inclusive);

/*
 * create a c style string array from std::vector [vec]
 *
 * set size  of newly created string array to [str_arr_count] only if
 * it is not NULL
 * */
char **str_vector_to_c_str_arr_new(const std::vector<std::string> &vec,
                                   size_t *str_arr_count);

/*
 * same as [str_vector_to_c_str_arr_new] but null terminate the array
 *
 * for example:
 * std::vector<std::string> vector = {"hello","world"};
 * will be converted to c array {"hello","world",NULL};
 * (NULL is counted as well)
 * */
char **str_vector_to_c_str_arr_nulled_new(const std::vector<std::string> &vec,
                                          size_t *str_arr_count);

/*
 * free c style string array [str_arr] with length of [str_arr_length]
 * */
void str_arr_free(char **str_arr, size_t str_arr_length);
