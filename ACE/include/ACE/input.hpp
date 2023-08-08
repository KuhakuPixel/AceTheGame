#pragma once
#include <functional>
#include <string>

enum class E_loop_statement {

  break_,
  continue_,
};
/*
 * settings for ace engine's
 * command line
 * */
#define CMD_HISTORY_FILE_PATH ".ace_history"
#define CMD_HISTORY_MAX_LEN 1000
#define CMD_MULTI_LINE_EDIT true
/*
 *
 * run input loop from stdin
 *
 * [mode_name]: string to display on each input
 * [on_input]: callback function with first arg as the input from user
 *  	       exit from loops if [on_input] returns E_loop_statement::break_
 *  	       otherwise continue the loop
 *
 * =============== input example =================
 * (<mode_name>) <user input>
 * */
void run_input_loop(std::function<E_loop_statement(std::string)> on_input,
                    std::string mode_name);
