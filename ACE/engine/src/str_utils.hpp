#pragma once
#include "ace_type.hpp"
#include <string>
#include <unordered_map>
#include <vector>

enum class E_strtol_convert_res {
  possible,
  underflow,
  overflow,
  non_numeric,
  base_contain_unsuported_valn,
  unknown_error,
  str_is_NULL,
};

static const std::unordered_map<E_strtol_convert_res, std::string>
    E_strtol_convert_res_to_str_map =

        {
            {E_strtol_convert_res::possible, "Conversion is possible"},
            {E_strtol_convert_res::underflow, "Conversion underflow"},
            {E_strtol_convert_res::overflow, "Conversion overflow"},
            {E_strtol_convert_res::non_numeric, "Converting non-numeric"},
            {E_strtol_convert_res::base_contain_unsuported_valn,
             "Cannot convert: base contains unsupported value"},
            {E_strtol_convert_res::unknown_error,
             "Unknown error for conversion"},
            {E_strtol_convert_res::str_is_NULL,
             "Converting NULL string to number"},

};

/*
 * get string representation of [E_strtol_convert_res]
 * */
const char *E_strtol_convert_res_str(E_strtol_convert_res val);

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
 * check if [str] can be converted to number of type [E_num_type]
 * with c's strtol correctly without errors
 * if it is possible, it will return
 * E_strtol_convert_res::possible
 *
 * write results of `strtol` to [val_ptr] if its not a NULL pointer
 * (this function may still write to [val_ptr] even if conversion failed
 *
 * so caller needs to check
 * if E_strtol_convert_res::possible is returned before using
 * that value
 * */
E_strtol_convert_res str_check_strtol(const char *str, E_num_type num_type,
                                      int base, long *val_ptr = NULL);

E_strtol_convert_res str_check_strtol(const std::string &str,
                                      E_num_type num_type, int base,
                                      long *val_ptr = NULL);
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
