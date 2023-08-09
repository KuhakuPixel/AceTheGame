#include "../third_party/CLI11.hpp"
#include "ACE/ACE_global.hpp"
#include "ACE/attach_client.hpp"
#include "ACE/input.hpp"
#include "ACE/main_cmd_creator.hpp"
#include "ACE/to_frontend.hpp"
#include <iostream>
#include <stdio.h>
#include <string>

int main(int argc, char **argv) {
  CLI::App app{"client for accessing ACE's main util like listing processes, "
               "checking if a process still alive and etc "};
  // add ACE's main command to client
  main_mode_options _main_mode_options = main_mode_options();
  main_cmd_create(&app, &_main_mode_options);
  // ==============================================
  // parse inputs
  try {
    (app).parse(argc, argv);
  } catch (const CLI::ParseError &e) {
    frontend::handle_cli_parse_error(true, e);
    return (app).exit(e);
  }
  return 0;
}
