#include "str_utils.hpp"
#include "ace_type.hpp"
#include <errno.h>
#include <limits.h>
#include <string.h>

const char *E_strtol_convert_res_str(E_strtol_convert_res val) {
  return E_strtol_convert_res_to_str_map.at(val).c_str();
}
std::vector<std::string> str_split(std::string str, std::string delimeter) {

  /*
   * use std::string::find() to find the position of `delimeter`
   * and std::string::substr() to get the token(string splitted by delimeter)
   * then remove `str` from 0 till the delimeter itself
   * and repeat
   *
   * based on https://stackoverflow.com/a/14266139/14073678
   * which I slightly modify to sustain my need
   * because it handles delimeter at end or start poorly
   * https://stackoverflow.com/a/69211881/14073678
   *
   * */
  std::vector<std::string> splittedStrings = {};
  size_t pos = 0;

  // check if found
  // by comparing to std::string::npos (means -1 )
  while ((pos = str.find(delimeter)) != std::string::npos) {
    std::string token = str.substr(0, pos);
    if (token.length() > 0)
      splittedStrings.push_back(token);
    str.erase(0, pos + delimeter.length());
  }

  if (str.length() > 0)
    splittedStrings.push_back(str);
  return splittedStrings;
}

std::string str_extract_between_chars(

    const std::string &str, char first_c, char second_c,
    size_t *first_c_idx_ptr, size_t *second_c_idx_ptr, bool inclusive,
    bool *can_extract_str_ptr) {

  size_t first_c_idx = 0;
  size_t second_c_idx = 0;
  bool first_c_contained = false;
  bool second_c_contained = false;

  for (size_t i = 0; i < str.size(); i++) {
    if (str[i] == first_c) {
      first_c_idx = i;
      first_c_contained = true;
      break;
    }
  }
  // to loop backword with an unsigned type (size_t)
  // unconventional loop is needed because
  // decreamenting i when it is 0 will return
  // really large number because of unsigned
  // integer wrap-around
  //
  // i starts at str.size()-1
  for (size_t i = str.size(); (i--) > 0;) {
    if (str[i] == second_c) {
      second_c_idx = i;
      second_c_contained = true;
      break;
    }
  }

  // assign indexes value to variable pointed by
  // first_c_idx_ptr and second_c_idx_ptr
  // first_c and second_c,
  if (first_c_idx_ptr != NULL)
    *first_c_idx_ptr = first_c_idx;

  if (second_c_idx_ptr != NULL)
    *second_c_idx_ptr = second_c_idx;

  /*
   * string can be extracted succsessfully if only
   * [first_c] and [second_c] are contained in [str]
   * */
  if (can_extract_str_ptr != NULL) {
    *can_extract_str_ptr = first_c_contained && second_c_contained;
  }
  // no string between chars if
  // first_c or second_c is not found
  if (!first_c_contained || !second_c_contained)
    return "";

  // illegal since, there will be no string
  // in between first_c_idx and second_c_idx
  if (first_c_idx > second_c_idx)
    return "";
  // ====================================================
  // extract string using std::string(const char* s, size_t n)
  // constructor, excluding the bracket it self
  size_t extracted_str_length = second_c_idx - first_c_idx - 1;
  std::string extracted_str =
      std::string(str.c_str() + first_c_idx + 1, extracted_str_length);
  //

  // ===================================================
  if (inclusive)
    extracted_str = first_c + extracted_str + second_c;
  return extracted_str;
}

std::string str_get_substr_inclusive(const std::string &str, size_t index_1,
                                     size_t index_2) {

  // +1 because inclusive bound
  return std::string(str.c_str() + index_1, index_2 - index_1 + 1);
}

std::string str_extract_first_c_to_end(

    const std::string &str, char first_c, LL *first_c_idx_ptr, bool inclusive) {

  if (str.length() <= 1)
    return "";

  LL first_c_idx = -1;
  for (size_t i = 0; i < str.length(); i++) {
    if (str[i] == first_c) {
      first_c_idx = i;
      break;
    }
  }

  if (first_c_idx_ptr != NULL)
    *first_c_idx_ptr = first_c_idx;
  if (first_c_idx == -1)
    return "";
  // get substring from first_c_idx to end index
  if (inclusive)
    return str_get_substr_inclusive(str, first_c_idx, (str.length() - 1));
  else
    return str_get_substr_inclusive(str, first_c_idx + 1, (str.length() - 1));
}
bool str_is_numeric(const char *str) {
  if (!str)
    return false;
  size_t str_len = strlen(str);
  for (size_t i = 0; i < str_len; i++) {
    if (i == 0 && str_len > 1) {
      // encounters sign
      if (str[0] == '-' || str[0] == '+')
        continue;
    }
    if (!isdigit(str[i]))
      return false;
  }
  return true;
}

E_strtol_convert_res str_check_strtol(const char *str, E_num_type num_type,
                                      int base, long *val_ptr) {

  if (str == NULL)
    return E_strtol_convert_res::str_is_NULL;
  // pointer to additional chars
  char *endptr = NULL;
  // variable holding return
  long number = 0;

  /* reset errno to 0
   * because some function in library might set this
   * */
  errno = 0;

  /* call to strtol assigning return to number */
  number = strtol(str, &endptr, base);
  if (val_ptr != NULL)
    *val_ptr = number;

  /* test return to number and errno values */
  if (str == endptr)
    return E_strtol_convert_res::non_numeric;
  /*
   * check for overflow of different num type
   * */

  if (errno == ERANGE) {

    /*
     * number can't be less than LONG_MIN since
     * if string is underflow, it only convert
     * to LONG_MIN even if string is lower than that
     * with errno set as ERANGE
     *
     * so an "=" operator on overflow or underflow check
     * is needed
     *
     * */
    if (num_type == E_num_type::LONG && number <= LONG_MIN)
      return E_strtol_convert_res::underflow;
    if (num_type == E_num_type::LONG && number >= LONG_MAX)
      return E_strtol_convert_res::overflow;
    /*
     * need to also check overflow for int
     * if the long and int has the same size
     *
     * example: on a 32 bit system
     * REF: https://www.open-std.org/JTC1/SC22/WG14/www/docs/n1256.pdf
     * page 22
     */
    if (sizeof(int) == sizeof(long)) {
      if (num_type == E_num_type::INT && number <= INT_MIN)
        return E_strtol_convert_res::underflow;
      if (num_type == E_num_type::INT && number >= INT_MAX)
        return E_strtol_convert_res::overflow;
    }
  }

  /*
   * check overflow/underflow for other type's size that are less
   * than a long in case
   * strtol didn't set errno to ERANGE
   * */

  if (num_type == E_num_type::BYTE && number < SCHAR_MIN)
    return E_strtol_convert_res::underflow;
  if (num_type == E_num_type::BYTE && number > SCHAR_MAX)
    return E_strtol_convert_res::overflow;

  if (num_type == E_num_type::SHORT && number < SHRT_MIN)
    return E_strtol_convert_res::underflow;
  if (num_type == E_num_type::SHORT && number > SHRT_MAX)
    return E_strtol_convert_res::overflow;

  if (num_type == E_num_type::INT && number < INT_MIN)
    return E_strtol_convert_res::underflow;
  if (num_type == E_num_type::INT && number > INT_MAX)
    return E_strtol_convert_res::overflow;

  /* not in all c99 implementations - gcc OK */
  if (errno == EINVAL)
    return E_strtol_convert_res::base_contain_unsuported_valn;
  /*
   * endptr should be set to one over the
   * last numeric character of [str]
   * interpreted by strtol,
   *
   * if endptr reached to the end, then it means
   * everything is numeric, else its non numeric
   * */
  else if (errno == 0 && str && (*endptr) == 0)
    return E_strtol_convert_res::possible;
  else if (errno == 0 && str && (*endptr) != 0)
    return E_strtol_convert_res::non_numeric;

  return E_strtol_convert_res::unknown_error;
}

E_strtol_convert_res str_check_strtol(const std::string &str,
                                      E_num_type num_type, int base,
                                      long *val_ptr) {

  return str_check_strtol(str.c_str(), num_type, base, val_ptr);
}
char **str_vector_to_c_str_arr_new(const std::vector<std::string> &vec,
                                   size_t *str_arr_count) {

  // set size of c's str arr
  if (str_arr_count != NULL)
    *str_arr_count = vec.size();
  //
  char **arr = (char **)malloc(sizeof(char *) * vec.size());
  for (size_t i = 0; i < vec.size(); i++) {
    arr[i] = strdup(vec[i].c_str());
  }
  return arr;
};

char **str_vector_to_c_str_arr_nulled_new(const std::vector<std::string> &vec,
                                          size_t *str_arr_count) {

  // set size of c's str arr
  if (str_arr_count != NULL)
    *str_arr_count = vec.size() + 1;
  //
  char **arr = (char **)malloc(sizeof(char *) * (*str_arr_count));
  for (size_t i = 0; i < vec.size(); i++) {
    arr[i] = strdup(vec[i].c_str());
  }
  // set last element as nulled
  arr[vec.size()] = NULL;
  return arr;
}

void str_arr_free(char **str_arr, size_t str_arr_length) {

  for (size_t i = 0; i < str_arr_length; i++) {
    free(str_arr[i]);
  }
  free(str_arr);
}
