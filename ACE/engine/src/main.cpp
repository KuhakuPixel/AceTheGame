#include "../third_party/CLI11.hpp"
#include "ACE_global.hpp"
#include "engine_server.hpp"
#include "input.hpp"
#include "main_cmd_creator.hpp"
#include "main_cmd_handler.hpp"
#include "server.hpp"
#include "str_utils.hpp"
#include "to_frontend.hpp"
#include <functional>
#include <map>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <string>
#include <unistd.h>
#include <vector>

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

E_loop_statement main_mode_on_each_input(std::string input_str) {

  main_mode_options current_options = main_mode_options();
  //
  CLI::App app{""};
  main_cmd_create(&app, &current_options);
  // special instruction
  if (input_str == "q" || input_str == "quit") {
    return E_loop_statement::break_;
  }
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
    (app).parse(c_str_arr_length, c_str_arr);
    str_arr_free(c_str_arr, c_str_arr_length);
  } catch (const CLI::ParseError &e) {
    frontend_handle_cli_parse_error(true, e);
    (app).exit(e);
    str_arr_free(c_str_arr, c_str_arr_length);
    //
  };

  return E_loop_statement::continue_;
}

void ace_main() {

  // display_icon();
  if (getuid() != 0) {
    frontend_print(
        "Device not rooted, without root most features will be broken\n");
  } else {
    frontend_print("You are rooted, all features will work\n");
  }

  display_intro();

  // now we run the input loop
  run_input_loop(main_mode_on_each_input, "ACE");
}

void attach_pid_cmd_handler(int pid, int port) {
  printf("attaching to %d\n", pid);
  engine_server_start(pid, port);
}

int main(int argc, char **argv) {
  /* parse args passed to program*/
  CLI::App main_app{"ACE Engine, a game hacking tool for linux and android\n"
                    "By Kuhaku Pixel"};

  //
  main_app.add_option("--use-gui-protocol", ACE_global::use_gui_protocol,
                      "enable engine's gui protocol\n"
                      "for communication via stdin\n");

  // ============================ attach commands ============
  std::string attach_cmd_help =
      "attach to a process with pid for gui communication via zeromq\n";

  int pid_to_attach = 0;
  int engine_server_port = ACE_global::engine_server_client_default_port;
  CLI::App *attach_pid_cmd =
      main_app.add_subcommand("attach-pid", attach_cmd_help);
  attach_pid_cmd->add_option("--pid", pid_to_attach)->required();
  attach_pid_cmd->add_option("--port", engine_server_port,
                             "default port: " +
                                 std::to_string(engine_server_port));
  //
  attach_pid_cmd->callback(

      [&]() {
        //
        attach_pid_cmd_handler(pid_to_attach, engine_server_port);
      }

  );

  //
  bool attach_self = false;
  main_app.add_flag("--attach-self", attach_self,
                    attach_cmd_help + "\n" +
                        "(not important for unit testing only)");
  // ================================================================

  CLI11_PARSE(main_app, argc, argv);
  // any request to run as server?
  if (attach_self) {
    engine_server_start(getpid(),
                        ACE_global::engine_server_client_default_port);
    return 0;
  }

  else if (main_app.got_subcommand(attach_pid_cmd)) {
    return 0;
  }

  else {
    // if not, just run it as normal console app :)
    ace_main();
  }

  return 0;
}
