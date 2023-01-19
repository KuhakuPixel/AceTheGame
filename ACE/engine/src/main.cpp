#include "ACE_global.hpp"
#include "../third_party/CLI11.hpp"
#include "input.hpp"
#include "main_cmd_handler.hpp"
#include "str_utils.hpp"
#include <functional>
#include <map>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <string>
#include <unistd.h>
#include <vector>
#include "to_frontend.hpp"

struct main_mode_options {

  int pid;
  bool ps_map_list_all;
  bool ps_ls_reverse;
  bool aslr_set_val;

  E_num_type cheater_num_type;

  main_mode_options() {
    this->pid = -1;
    this->ps_map_list_all = false;
    this->ps_ls_reverse = false;
    this->aslr_set_val = false;
    this->cheater_num_type = E_num_type::INT;
  }
};

// global state
struct main_mode_options current_options;

CLI::App *initialize_main_commands_new() {

  CLI::App *app = new CLI::App("App Description");

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

  // ================================= cheater command ================
  CLI::App *cheater_cmd =
      app->add_subcommand("cheater", "Mode to scan and edit processes");
  cheater_cmd
      ->add_option("<PID>", current_options.pid,
                   "<pid> of the process be scanned an edited")
      ->required();

  // TODO: add default using CLI11 way
  cheater_cmd
      ->add_option("-t,--type", current_options.cheater_num_type,
                   "type to set for scanning and writting\n"
                   "default to int")
      ->transform(CLI::CheckedTransformer(num_type_str_to_E_num_type_map,
                                          CLI::ignore_case));

  cheater_cmd->callback(

      []() -> void {
        cheater_cmd_handler(current_options.pid,
                            current_options.cheater_num_type);
      }

  );
  // ================================= ps command ======================
  CLI::App *ps_cmd = app->add_subcommand("ps", "analyze running processes");
  CLI::App *ps_ls_cmd = ps_cmd->add_subcommand(
      "ls", "list all running processes (newer process listed at bottom)");
  ps_ls_cmd->callback(

      []() -> void {
        list_processes_cmd_handler(current_options.ps_ls_reverse);
      }

  );
  ps_ls_cmd->add_flag("-r,--reverse", current_options.ps_ls_reverse,
                      "sort running process in reverse order");

  CLI::App *ps_map_cmd =
      ps_cmd->add_subcommand("map", "display special region of <PID>");
  ps_map_cmd->callback(

      []() -> void {
        process_map_cmd_handler(current_options.pid,
                                current_options.ps_map_list_all);
      }

  );

  ps_map_cmd
      ->add_option("<PID>", current_options.pid,
                   "<pid> of the process to list the mapping")
      ->required();
  ps_map_cmd->add_flag("-a,--all", current_options.ps_map_list_all,
                       "list all mapped memory region");

  // ================================= aslr command ======================
  CLI::App *aslr_cmd = app->add_subcommand(
      "aslr", "turn off/on address space layout randomization\n"
              "so that an address of a game variable stays the same\n"
              "when the game is reloaded\n"
              "WARNING: may make system more vunerable to bufferflow attack\n");
  aslr_cmd->add_option("<VALUE>", current_options.aslr_set_val, "")->required();
  aslr_cmd->callback(

      []() -> void { aslr_cmd_handler(current_options.aslr_set_val); }

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

      [&]() -> void {
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

  return app;
}

void display_icon() {
  // generated using this cool repo
  // https://github.com/qeesung/image2ascii
  // clang-format off
  frontend_print("@@@@@@@@@@@@@@@88@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n");
  frontend_print("@@@@@@@@@@@@@@tfft@@@@@@@@@@@@@@@@@@@@@@@@@@@880GCf1i;;;f@@@@@@@@@\n");
  frontend_print("@@@@@@@@@@@@@@1fft@@@@@@@@@@@@@@@@@@@80GCLft1;:,,,;1fC08@@@@@@@@@@\n");
  frontend_print("@@@@@@@@@@@80@@08@@@@@@@@@@@@GiGGCLfftt1i;:;itLG8@@@@@@@@@@@@@@@@@\n");
  frontend_print("@@@@@@@@@8ttfi8@@tf@@@@@@@8C1:ifttt1i:,,;1fCGGCLt1;i1L8@@@@@@@@@@@\n");
  frontend_print("@@@@@@@@@1;0L,;0@tt@@@@@@ttLLLti:.,,:;i1ft1i:,.  ,G8@@@@@@@@@@@@@@\n");
  frontend_print("@@@@@@@@@8LfLG,8@@@@@@@GifGC1i:.;fLLLft1;:.. ..,.:@80GC8@@@@@@@@@@\n");
  frontend_print("@@@@@@@@@@@@@:L@@@@@Gt:.,;:::,,L0L1i;;:..,,,;:. ..,... G@@@@@@@@@@\n");
  frontend_print("@@@@@@@@@@@0;f@@@@G;.,:ii;:,:,0G11:.;;::::::tL1;,  .,..@@@@@@@@@@@\n");
  frontend_print("@@@@@@@@@@f;G@@@0L.:i1i:,,,,::Cii;,,:::::::,.:tLfi:. ..ii;;:C@@@@@\n");
  frontend_print("@@@@@@@@Lif@@@@L1,;t;,.;;.::,,,::,..,:;;;iii;,.1ftLLi..... :8@@@@@\n");
  frontend_print("@@@@@@Lit8@@@8f,i::,.0C,::::,:,,,,:;ittt1i;iii:;t1,tC1 ..,.0@@@@@@\n");
  frontend_print("@@@@Cif@@0tttiit1;:.,;:,i1i:,.,:;:,i1;;;;:,...,,:ii:1f1, ..::itt0@\n");
  frontend_print("@@@1i08Ci::,1tf1tt1ii1ii1ii.. .:i;;....,.:;,....,,;;1ftf,..    :0@\n");
  frontend_print("@@i1@@1 :t;;ttt:iffftfi;1.;. :,i;;f1:   ifi,1;...::::1:f1..,..f@@@\n");
  frontend_print("@C:@@@t :1i1fffft1ii::iiG,1t:,.ii;i;.iLt1i,;1t: ..:::.:tf,. ;8@@@@\n");
  frontend_print("@L;@@@G:..;;:,,.,;1ffG@@8.G@1,::;t1,L@@@G;1ff1: ...,;,:1t, .:tG@@@\n");
  frontend_print("@8,C@@@@C1.,tttL80@@@@@@;1@i:,:1tt,G@@@@@@,;;:;. ..,::::1:.,   :0@\n");
  frontend_print("@@G:L@@@81..C@@@L::t8@0;i@G,i;.i1:i@@@@@8iiLti;,,,,..,:::,.. ,iL8@\n");
  frontend_print("@@@811Lt  ,. ,;: ,, .,..11LG;:;:i,L@@@@C;,i;:;ii1tt1;,,:,,,:L@@@@@\n");
  frontend_print("@@@@@8f ,it1: :,.:;;:,. .1;@C;:;1C@@@G11t1,;1tf1:;1tft;,,::.;1C0@@\n");
  frontend_print("@@@@@@8..,1;. ,. ,,,;11i:t:C@@8@@@@@t:L0t,1tttitt;;11ifi.tf..  :0@\n");
  frontend_print("@@@@@@@1 ... ;t; .:;;iitff1;G8@@@@@t.fLi,:;ii;;1ffttf,iC:;L,.,L@@@\n");
  frontend_print("@@@@@@@8. . ,8@@: ,:;;111tt1i1tL8@1;1::;1iitt1;i;ii1ti:1,:f:..,i0@\n");
  frontend_print("@@@@@@@@G:.:G@@@0ffCf;,,:::iftii1;;Gt:;it1ftt1tii1i,1f11;,1,..;L8@\n");
  frontend_print("@@@@@@@@@@8@@@@@@@@@@@8t ,::;iiiffi;,111t,;;:it1i,.,itti::f1.C@@@@\n");
  frontend_print("@@@@@@@@@@@@@@@@@@@@@@@C:;,,::i1tfi.i11tt1ii;;,.. .::it1;,ifi10@@@\n");
  frontend_print("@@@@@@@@@@@@@@@@@@@@@@@@0:,..:::;i1;1ti;i1i:,,. ...,::,it:;LCi i8@\n");
  frontend_print("@@@@@@@@@@@@@@@@@@@@@@@@@@8L;.,:::;::;,:.,,:i11....,,,:::::;i;tG@@\n");
  frontend_print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Gi,,,:,..,:i11111ti...,,:::::11,1@@@@\n");
  frontend_print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@0Li.;1tLCCCCf1ii1i. ....,,,,:;::C@@\n");
  frontend_print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@C088000008GCCCCCftttfffffffLft0@\n");
  // clang-format on
}

void ace_main() {

  // display_icon();
  if (getuid() != 0) {
    frontend_print("Device not rooted, without root most feautres will be broken\n");
  } else {
    frontend_print("You are rooted, all feautres will work\n");
  }

  display_intro();

  CLI::App *app = initialize_main_commands_new();

  auto on_input = [&app](std::string input_str) -> E_loop_statement {
    // special instruction
    if (input_str == "q" || input_str == "quit") {
      return E_loop_statement::break_;
    }
    // ============== reset options ======================
    struct main_mode_options resetted_options = main_mode_options();
    current_options = resetted_options;

    // ==================================================
    // ======================== split and make args =================
    std::vector<std::string> args = {""};
    std::vector<std::string> splitted_strs = str_split(input_str, " ");
    args.insert(args.end(), splitted_strs.begin(), splitted_strs.end());
    size_t c_str_arr_length = 0;
    char **c_str_arr = str_vector_to_c_str_arr_new(args, &c_str_arr_length);

    // ===============================================================
    //

    // parse inputs
    try {
      (app)->parse(c_str_arr_length, c_str_arr);
      str_arr_free(c_str_arr, c_str_arr_length);
    } catch (const CLI::ParseError &e) {
      (app)->exit(e);
      str_arr_free(c_str_arr, c_str_arr_length);
      //
    };

    return E_loop_statement::continue_;
  };

  // now we run the input loop
  //  ==================================================================
  run_input_loop(on_input, "ACE");
  // free resources
  delete app;
}
int main(int argc, char **argv) {
  /* parse args passed to program*/
  CLI::App main_app{"ACE Engine, a game hacking tools for linux and android\n"
                    "By Kuhaku Pixel"};

  //
  main_app.add_option("--use-gui-protocol", ACE_global::use_gui_protocol,
                      "enable engine's gui protocol\n"
                      "for communication via stdin\n");

  CLI11_PARSE(main_app, argc, argv);
  ace_main();

  return 0;
}
