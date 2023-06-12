#include "ACE/main_cmd_creator.hpp"
#include "ACE/main_cmd_handler.hpp"
#include "ACE/to_frontend.hpp"

void main_cmd_create(CLI::App *app, main_mode_options *current_options_ptr) {
  app->footer(
      "Use \"<Subcommands> --help\" for more info about that subcommand\n");
  // ================================ version command ==================
  CLI::App *version_cmd =
      app->add_subcommand("version", "view current version of the program");
  version_cmd->callback(version_cmd_handler);
  //
  // ================================ clear command ==================
  CLI::App *clear_cmd = app->add_subcommand("clear", "clear current console");
  clear_cmd->callback(clear_cmd_handler);
  //
  // ================================ quit command ==================
  CLI::App *quit_cmd = app->add_subcommand("quit", "quit the program");
  quit_cmd->callback(quit_cmd_handler);

  CLI::App *q_cmd = app->add_subcommand("q", "quit the program");
  q_cmd->callback(quit_cmd_handler);
  
  CLI::App *exit_cmd = app->add_subcommand("exit", "quit the program");
  exit_cmd->callback(quit_cmd_handler);

  // ================================= cheater command ================
  CLI::App *cheater_cmd =
      app->add_subcommand("cheater", "Mode to scan and edit processes");
  cheater_cmd
      ->add_option("<PID>", current_options_ptr->pid,
                   "<pid> of the process be scanned an edited")
      ->required();

  cheater_cmd->callback(

      [=]() -> void {
        //
        cheater_cmd_handler(current_options_ptr->pid);
      }

  );
  // ================================= ps command ======================
  CLI::App *ps_cmd = app->add_subcommand("ps", "analyze running processes");
  // ls
  CLI::App *ps_ls_cmd = ps_cmd->add_subcommand(
      "ls", "list all running processes (newer process listed at bottom)");
  ps_ls_cmd->callback(

      [=]() -> void {
        list_processes_cmd_handler(current_options_ptr->ps_ls_reverse);
      }

  );
  ps_ls_cmd->add_flag("-r,--reverse", current_options_ptr->ps_ls_reverse,
                      "sort running process in reverse order");

  // map
  CLI::App *ps_map_cmd =
      ps_cmd->add_subcommand("map", "display special region of <PID>");
  ps_map_cmd->callback(

      [=]() -> void {
        process_map_cmd_handler(current_options_ptr->pid,
                                current_options_ptr->ps_map_list_all);
      }

  );

  ps_map_cmd
      ->add_option("<PID>", current_options_ptr->pid,
                   "<pid> of the process to list the mapping")
      ->required();
  ps_map_cmd->add_flag("-a,--all", current_options_ptr->ps_map_list_all,
                       "list all mapped memory region");
  // is_running
  CLI::App *ps_is_running_cmd =
      ps_cmd->add_subcommand("is_running", "Check if process pid is running");
  ps_is_running_cmd
      ->add_option("<PID>", current_options_ptr->pid, "<pid> of the process")
      ->required();
  ps_is_running_cmd->callback(

      [=]() -> void {
        //
        process_is_running_handler(current_options_ptr->pid);
      }

  );

  // ================================= aslr command ======================
  CLI::App *aslr_cmd = app->add_subcommand(
      "aslr", "turn off/on address space layout randomization\n"
              "so that an address of a game variable stays the same\n"
              "when the game is reloaded\n"
              "WARNING: may make system more vunerable to bufferflow attack\n");
  aslr_cmd->add_option("<VALUE>", current_options_ptr->aslr_set_val, "")
      ->required();
  aslr_cmd->callback(

      [=]() -> void { aslr_cmd_handler(current_options_ptr->aslr_set_val); }

  );

  // ================ gui_protocol subcommand ==========
  CLI::App *gui_protocol_cmd =
      app->add_subcommand("gui_protocol", "check if engine has gui protocol");
  gui_protocol_cmd->callback(

      []() -> void {
        //
        gui_protocol_cmd_handler();
      }

  );

  // ================ attached subcommand ==========
  CLI::App *attached_cmd = app->add_subcommand(
      "attached",
      "should return attached_none since haven't entered cheater mode");

  attached_cmd->callback(

      [=]() -> void {
        //
        frontend_print("attached_none\n");
      }

  );

  // ================ license subcommand ==========
  // TODO: when this project is open source
  // this command should be renamed to `license`
  CLI::App *license_cmd =
      app->add_subcommand("license", "Ace Engine's license");
  license_cmd->callback(

      []() -> void {
        //
        license_cmd_handler();
      }

  );

  // ================ credit subcommand ==========
  CLI::App *credit_cmd = app->add_subcommand(
      "credit", "All open source libraries ACE engine uses ");
  credit_cmd->callback(

      []() -> void {
        //
        credit_cmd_handler();
      }

  );

  // ================================= info command ================
  CLI::App *info_cmd = app->add_subcommand(
      "info", "get detailed information about all supported number type and "
              "scan types supported");

  CLI::App *info_type_cmd = info_cmd->add_subcommand(
      "type", "get all number type and its size in bits");

  info_type_cmd->callback(

      []() -> void { info_type_cmd_handler(); }

  );

  CLI::App *info_operator_cmd = info_cmd->add_subcommand(
      "operator", "get all supported scan/filter operation symbol ");

  info_operator_cmd->callback(

      []() -> void { info_operator_cmd_handler(); }

  );
}
