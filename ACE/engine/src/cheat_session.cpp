#include "cheat_session.hpp"
#include "../third_party/CLI11.hpp"
#include "ace_type.hpp"
#include "cheat_cmd_handler.hpp"
#include "common.hpp"
#include "input.hpp"
#include "proc_stat.hpp"
#include "ptrace.hpp"
#include "to_frontend.hpp"

// =================================================
template <typename T>
struct cheat_on_line_ret
cheat_session::cheater_on_line(engine_module<T> *engine_module_ptr,
                               cheat_mode_config *cheat_config,
                               std::string input_str) {
  struct cheat_on_line_ret _cheat_on_line_ret;
  // for short alias so functions wont have to use "engine_module.something"
  // to access an engine module
  ACE_scanner<T> *scanner = engine_module_ptr->scanner_ptr;
  freezer<T> *freezer_ptr = engine_module_ptr->freezer_ptr;
  proc_rw<T> *process_rw = engine_module_ptr->process_rw;
  //
  struct cheat_mode_args<T> cheat_args = cheat_mode_args<T>();

  /*
   * overview: cheater mode console
   *
   * if input is only a number, then it is the initial scan
   *
   *
   * using "[comparasion]" :
   * example: ">" -> will only pick scan result that has increased
   * filterer input like `<` is used filter the result
   *
   * using "[comparasion] [number]" will filter the current result 's values
   * against "[comparasion] [number]"
   *
   * example: "< 5" -> will only pick scan result whose value is
   * greater than 5
   *
   *
   * */
  // bad args
  if (cheat_config == NULL)
    throw std::invalid_argument("passed cheat_config pointer is NULL\n");

  CLI::App app{"Cheater console"};
  app.footer(
      "Use \"<Subcommands> --help\" for more info about that subcommand\n");

  // ========================== list command ============================
  //
  std::vector<std::string> list_cmd_names = {"l", "list"};

  for (size_t i = 0; i < list_cmd_names.size(); i++) {
    CLI::App *list_cmd = app.add_subcommand(
        list_cmd_names[i], "list all matches with addresses and value");

    list_cmd->add_option("-n,--max-count", cheat_args.list_max_count,
                         "max count of addresses to show");

    list_cmd->callback(

        [&]() { list_cmd_handler<T>(scanner, cheat_args.list_max_count); }

    );
  }

  // ========================== matchcount command ============================
  CLI::App *matchcount_cmd = app.add_subcommand(
      "matchcount", "get match count of current scan results");
  matchcount_cmd->callback(

      [&]() { matchcount_cmd_handler(scanner); }

  );

  // ========================== scan command ============================
  std::vector<std::string> scan_cmd_names = {"s", "scan"};

  for (size_t i = 0; i < scan_cmd_names.size(); i++) {
    CLI::App *scan_cmd = app.add_subcommand(
        scan_cmd_names[i],
        "scan current value in scan against an operator and number");

    scan_cmd
        ->add_option("<COMPARISON>", cheat_args.filter_type,
                     "comparator like '<' ,'>'")
        ->required()
        ->transform(CLI::CheckedTransformer(
            Scan_Utils::filter_str_to_E_filter_type_map));

    scan_cmd
        ->add_option("<VALUE>", cheat_args.num_val,
                     "value to be compared against")
        ->required();

    scan_cmd->callback(

        [&]() {
          scan_cmd_handler<T>(scanner,

                              cheat_args.filter_type,

                              cheat_config,

                              cheat_args.num_val);
        }

    );
  }

  // ================== filter command ================================
  std::vector<std::string> filter_cmd_names = {"f", "filter"};
  for (size_t i = 0; i < filter_cmd_names.size(); i++) {
    CLI::App *filter_cmd =
        app.add_subcommand(filter_cmd_names[i],
                           "filter current value in scan against an opertator");

    filter_cmd
        ->add_option("<COMPARISON>", cheat_args.filter_type,
                     "comparator like '<' ,'>'")
        ->required()
        ->transform(CLI::CheckedTransformer(
            Scan_Utils::filter_str_to_E_filter_type_map));
    filter_cmd->callback(

        [&]() {
          filter_cmd_handler<T>(scanner, cheat_args.filter_type, cheat_config);
        }

    );
  }

  // ================== reset command ================================
  //
  CLI::App *reset_cmd =
      app.add_subcommand("reset", "Reset current scan results");

  reset_cmd->callback(

      [&]() {
        scanner->clear_current_scan_result();
        cheat_config->initial_scan_done = false;
        frontend_print("resetting all scan\n");
      }

  );

  // ================ quit command ===============================

  if (input_str == "q" || input_str == "quit") {
    _cheat_on_line_ret.loop_statement = E_loop_statement::break_;
    return _cheat_on_line_ret;
  }

  // ================ write command ===============================
  CLI::App *write_cmd =
      app.add_subcommand("write", "Write a value to current matches");

  write_cmd
      ->add_option("<VALUE>", cheat_args.num_val,
                   "Value to write to all current matches")
      ->required();

  write_cmd->callback(

      [&]() { write_cmd_handler<T>(scanner, cheat_args.num_val); }

  );

  // ================ update command ===============================
  std::vector<std::string> update_cmd_names = {"u", "update"};

  for (size_t i = 0; i < update_cmd_names.size(); i++) {

    CLI::App *update_cmd = app.add_subcommand(
        update_cmd_names[i],
        "update all addresses's values in the current scan results\n(this is "
        "useful if you want to see the newer value)");
    update_cmd->callback(

        [&]() { update_cmd_handler<T>(scanner, cheat_config); }

    );
  }

  // ================ readat command ===============================

  std::vector<std::string> readat_cmd_names = {"ra", "readat"};

  for (size_t i = 0; i < readat_cmd_names.size(); i++) {
    CLI::App *read_cmd = app.add_subcommand(
        readat_cmd_names[i],
        "read value at an address from the attached process");

    read_cmd
        ->add_option("<ADDRESS>", cheat_args.addr_to_read,
                     "address to read from")
        ->required();

    read_cmd->callback(

        [&]() { readat_cmd_handler<T>(process_rw, cheat_args.addr_to_read); }

    );
  }

  // ================ readat command ===============================

  // TODO: maybe add support for reading different number types?
  CLI::App *read_arr_cmd =
      app.add_subcommand("read_arr", "read an array of bytes ");

  read_arr_cmd
      ->add_option("<ADDRESS>", cheat_args.addr_to_read, "address to read from")
      ->required();

  read_arr_cmd
      ->add_option("<READ_LENGTH>", cheat_args.read_arr_read_length,
                   "length of array to read")
      ->required();

  read_arr_cmd->callback(

      [&]() {
        read_arr_cmd_handler<T>(process_rw, cheat_args.addr_to_read,
                                cheat_args.read_arr_read_length);
      }

  );

  // ================ writeat command ===============================

  std::vector<std::string> writeat_cmd_names = {"wa", "writeat"};

  for (size_t i = 0; i < writeat_cmd_names.size(); i++) {
    CLI::App *writeat_cmd = app.add_subcommand(
        writeat_cmd_names[i],
        "write a value at an address from the attached process");

    writeat_cmd
        ->add_option("<ADDRESS>", cheat_args.addr_to_write,
                     "address to write to")
        ->required();

    writeat_cmd
        ->add_option("<VALUE>", cheat_args.num_val,
                     "Value to write to <ADDRESS>")
        ->required();

    writeat_cmd->callback(

        [&]() {
          writeat_cmd_handler<T>(process_rw, cheat_args.addr_to_write,
                                 cheat_args.num_val);
        }

    );
  }

  // ================ freeze command ===============================

  CLI::App *freeze_cmd =
      app.add_subcommand("freeze", "freeze value of an address");
  // ================ freeze at subcommand ========
  CLI::App *freeze_at_cmd =
      freeze_cmd->add_subcommand("at", "freeze at an address");

  freeze_at_cmd
      ->add_option("<ADDRESS>", cheat_args.addr_to_freeze_or_unfreeze,
                   "address to freeze")
      ->required();

  CLI::Option *freeze_at_value_option = freeze_at_cmd->add_option(
      "-v,--value", cheat_args.num_val, "value for freezing");

  freeze_at_cmd->callback(

      [&]() -> void {
        // freeze with input value if value is passed
        if (freeze_at_value_option->count() > 0) {

          freeze_at_val_cmd_handler(freezer_ptr,
                                    cheat_args.addr_to_freeze_or_unfreeze,
                                    cheat_args.num_val);

        }

        // freeze with current value if value are not passed
        else {
          freeze_at_cmd_handler(freezer_ptr,
                                cheat_args.addr_to_freeze_or_unfreeze);
        }
      }

  );
  // ================ freeze all subcommand ========
  CLI::App *freeze_all_cmd = freeze_cmd->add_subcommand(
      "all", "freeze all addresses from current scan results");
  freeze_all_cmd->callback(

      [&]() -> void { freeze_all_cmd_handler(scanner, freezer_ptr); }

  );

  // ================ freeze list subcommand ========
  CLI::App *freeze_list_cmd =
      freeze_cmd->add_subcommand("list", "list of freezed addresses");
  freeze_list_cmd->callback(

      [&]() -> void {
        //
        freeze_list_cmd_handler(freezer_ptr);
      }

  );
  // ================ unfreeze command ===============================
  CLI::App *unfreeze_cmd = app.add_subcommand(
      "unfreeze", "unfreeze an address that have been freezed");

  // ================ unfreeze at subcommand ==========
  CLI::App *unfreeze_at_cmd =
      unfreeze_cmd->add_subcommand("at", "unfreeze at an address");

  unfreeze_at_cmd
      ->add_option("<ADDRESS>", cheat_args.addr_to_freeze_or_unfreeze,
                   "address to unfreeze")
      ->required();

  unfreeze_at_cmd->callback(

      [&]() -> void {
        unfreeze_at_cmd_handler(freezer_ptr,
                                cheat_args.addr_to_freeze_or_unfreeze);
      }

  );
  // ================ unfreeze all subcommand ==========

  CLI::App *unfreeze_all_cmd = unfreeze_cmd->add_subcommand(
      "all", "unfreeze all address that have been freezed previously");

  unfreeze_all_cmd->callback(

      [&]() -> void {
        // stop freezing all
        unfreeze_all_cmd_handler(freezer_ptr);
      }

  );

  // ================ attached subcommand ==========
  CLI::App *attached_cmd = app.add_subcommand(
      "attached", "should return attached_ok if succsessful");

  attached_cmd->callback(

      [&]() -> void {
        //
        frontend_print("attached_ok\n");
      }

  );
  // ================ config subcommand ====================
  CLI::App *config_cmd =
      app.add_subcommand("config", "set various options regarding scans");

  // ============== scan_all_region ========
  CLI::App *config_scan_all_region_cmd = config_cmd->add_subcommand(
      "scan_all_region",

      "scan all memory region of the program on initial scan\n\n"
      "(WARN: initial scan might take a long time)");

  config_scan_all_region_cmd
      ->add_option("<VALUE>", cheat_config->scan_all_region)
      ->required();
  // =============== endian ===============
  CLI::App *config_endian_cmd = config_cmd->add_subcommand(
      "endian",

      "set endian type for scanning/writting\n"
      "(only use this for program that is interpreted and uses\n"
      "different endianness than the host's cpu)");

  config_endian_cmd
      ->add_option("<ENDIAN_SCAN_TYPE>", cheat_args.endian_scan_type,
                   "endian scan type for scanning/writting value")
      ->required()
      ->transform(CLI::CheckedTransformer(
          endian_scan_type_str_to_E_num_type_map, CLI::ignore_case));

  config_endian_cmd->callback(

      [&]() { endian_cmd_handler<T>(scanner, cheat_args.endian_scan_type); }

  );
  // ============= scan level ============
  std::string scan_level_current_value =
      Scan_Utils::E_scan_level_to_str.at(scanner->get_scan_level());

  CLI::App *config_scan_level_cmd =
      config_cmd->add_subcommand("level", "set scan level for initial scan\n"
                                          "current value: " +
                                              scan_level_current_value);

  config_scan_level_cmd
      ->add_option("<SCAN_LEVEL>", cheat_args.scan_level_type,
                   "scan level for scanning")
      ->required()
      ->transform(CLI::CheckedTransformer(Scan_Utils::str_to_E_scan_level_map,
                                          CLI::ignore_case));

  config_scan_level_cmd->callback(

      [&]() { scan_level_cmd_handler(scanner, cheat_args.scan_level_type); }

  );

  // ============= pause_while_scan  ============

  CLI::App *config_pause_while_scan_cmd = config_cmd->add_subcommand(
      "pause_while_scan",

      "pause the process when scanning\n"
      "useful when you don't want a value to change\n"
      "after a scan has started\n"

  );

  config_pause_while_scan_cmd
      ->add_option("<VALUE>", cheat_config->pause_while_scan)
      ->required();
  // ============= type  ============

  CLI::App *config_type_cmd =
      config_cmd->add_subcommand("type", "change type of type\n");

  config_type_cmd->add_option("<VALUE>", cheat_args.num_scan_type)
      ->required()
      ->transform(CLI::CheckedTransformer(num_type_str_to_E_num_type_map,
                                          CLI::ignore_case));

  config_type_cmd->callback(

      [&]() {
        //
        type_cmd_handler(cheat_args.num_scan_type, &_cheat_on_line_ret);
      }

  );
  // =======================================================
  // ======================== split and make args =================
  std::vector<std::string> _args = {""};
  std::vector<std::string> splitted_strs = str_split(input_str, " ");
  _args.insert(_args.end(), splitted_strs.begin(), splitted_strs.end());
  size_t c_str_arr_length = 0;
  char **c_str_arr = str_vector_to_c_str_arr_new(_args, &c_str_arr_length);

  // ===============================================================

  // parse inputs
  try {
    (app).parse(c_str_arr_length, c_str_arr);
    str_arr_free(c_str_arr, c_str_arr_length);
  } catch (const CLI::ParseError &e) {
    (app).exit(e);
    str_arr_free(c_str_arr, c_str_arr_length);
    //
  };
  // reset options
  cheat_args = cheat_mode_args<T>();
  //
  _cheat_on_line_ret.loop_statement = E_loop_statement::continue_;
  return _cheat_on_line_ret;
}
template <typename T>
struct cheat_on_line_ret

cheat_session::cheater_mode_on_each_input(
    int pid, engine_module<T> *engine_module_ptr,
    struct cheat_mode_config *cheat_config, std::string input_str) {

  struct cheat_on_line_ret _cheat_on_line_ret;
  // before running a command,
  // check if process [pid] is still running

  if (!proc_is_running(pid)) {
    frontend_mark_task_fail("Process %d doesn't exist anymore\n", pid);

    _cheat_on_line_ret.loop_statement = E_loop_statement::break_;
    return _cheat_on_line_ret;
  }

  // run command input
  int ptrace_attach_ret = 0;
  int ptrace_deattach_ret = 0;
  if (cheat_config->pause_while_scan) {
    // do operation paused with ptrace
    CALL_WHILE_PTRACE_ATTACHED(
        pid,

        {
          _cheat_on_line_ret =
              cheater_on_line<T>(engine_module_ptr, cheat_config, input_str);
        },

        &ptrace_attach_ret,

        &ptrace_deattach_ret,

        true

    );

    // check if any ptrace attach of deattach failed
    if (ptrace_attach_ret == -1) {
      frontend_mark_task_fail("Fail to attach, exiting cheater mode\n");

      _cheat_on_line_ret.loop_statement = E_loop_statement::break_;
      return _cheat_on_line_ret;
    }

    if (ptrace_deattach_ret == -1) {
      frontend_mark_task_fail("Fail to deattach, exiting cheater mode\n");

      _cheat_on_line_ret.loop_statement = E_loop_statement::break_;
      return _cheat_on_line_ret;
    }
  }

  else {
    // just run command without any pause
    // on the target process
    // simple right :D ?
    _cheat_on_line_ret =
        cheater_on_line<T>(engine_module_ptr, cheat_config, input_str);
  }

  // else return value of cheater_on_line
  return _cheat_on_line_ret;
}
cheat_session::cheat_session(int pid, E_num_type current_scan_type) {

  this->pid = pid;
  this->current_scan_type = current_scan_type;
  // initialize engine modules for all types
  this->engine_module_ptr_int = new engine_module<int>(pid);
  this->engine_module_ptr_long = new engine_module<long>(pid);
  this->engine_module_ptr_short = new engine_module<short>(pid);
  this->engine_module_ptr_byte = new engine_module<byte>(pid);
  this->engine_module_ptr_float = new engine_module<float>(pid);
}

cheat_session::~cheat_session() {
  // free resources
  delete this->engine_module_ptr_int;
  delete this->engine_module_ptr_long;
  delete this->engine_module_ptr_short;
  delete this->engine_module_ptr_byte;
  delete this->engine_module_ptr_float;
}

E_loop_statement cheat_session::on_each_input(std::string input_str) {

  /*
   * check if the previous command (a call to this functon)
   * has request a change of scan type
   * */
  if (this->current_cheat_on_line_ret.get_should_change_type()) {
    // change the scan type
    this->current_scan_type =
        this->current_cheat_on_line_ret.get_scan_type_to_change_to();
    //
    // we don't want the next call to this function
    // to "change scan type" so we  reset
    this->current_cheat_on_line_ret.set_should_change_type(false);
  }

  // then switch to the type to use
  switch (this->current_scan_type) {
  case E_num_type::INT: {
    this->current_cheat_on_line_ret = this->cheater_mode_on_each_input<int>(

        this->pid, this->engine_module_ptr_int,
        &(this->engine_module_ptr_int->_cheat_mode_config), input_str

    );

    break;
  }

  case E_num_type::LONG: {
    this->current_cheat_on_line_ret = this->cheater_mode_on_each_input<long>(

        this->pid, this->engine_module_ptr_long,
        &(this->engine_module_ptr_long->_cheat_mode_config), input_str

    );
    break;
  }

  case E_num_type::SHORT: {

    this->current_cheat_on_line_ret = this->cheater_mode_on_each_input<short>(

        this->pid, this->engine_module_ptr_short,
        &(this->engine_module_ptr_short->_cheat_mode_config), input_str

    );
    break;
  }
  case E_num_type::BYTE: {
    this->current_cheat_on_line_ret = this->cheater_mode_on_each_input<byte>(

        this->pid, this->engine_module_ptr_byte,
        &(this->engine_module_ptr_byte->_cheat_mode_config), input_str

    );
    break;
  }

  case E_num_type::FLOAT: {
    this->current_cheat_on_line_ret = this->cheater_mode_on_each_input<float>(

        this->pid, this->engine_module_ptr_float,
        &(this->engine_module_ptr_float->_cheat_mode_config), input_str

    );
    break;
  }
  }
  return current_cheat_on_line_ret.loop_statement;
}
