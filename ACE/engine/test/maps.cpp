#include "ACE/maps.hpp"
#include "../third_party/catch.hpp"
// TODO: add test for special memory region with only one '['
TEST_CASE("parse_proc_map_str", "[proc_map]") {
  parse_proc_map_context context = parse_proc_map_context("");
  struct mem_region m_reg = parse_proc_map_str(
      "55f2dc48f000-55f2dc4b0000 rw-p 00000000 00:00 0          "
      "                [heap]",
      &context);
  REQUIRE(m_reg.address_start == 0x55f2dc48f000);
  REQUIRE(m_reg.address_end == 0x55f2dc4b0000);
  REQUIRE(m_reg.mem_type == mem_region_type::heap);
  REQUIRE(m_reg.path_name == "[heap]");
  REQUIRE(m_reg.is_special_region == true);

  REQUIRE(m_reg.perm_read == true);
  REQUIRE(m_reg.perm_write == true);
  REQUIRE(m_reg.perm_private == true);

  REQUIRE(m_reg.perm_execute == false);
  REQUIRE(m_reg.perm_shared == false);

  // ============================================
  //
  m_reg = parse_proc_map_str(
      "55f2dc48f000-55f2dc4b0000 rw-p 00000000 00:00 0          "
      "                [anon:scudo:primary]",
      &context);
  REQUIRE(m_reg.address_start == 0x55f2dc48f000);
  REQUIRE(m_reg.address_end == 0x55f2dc4b0000);
  REQUIRE(m_reg.mem_type == mem_region_type::misc);
  REQUIRE(m_reg.path_name == "[anon:scudo:primary]");
  REQUIRE(m_reg.is_special_region == true);

  REQUIRE(m_reg.perm_read == true);
  REQUIRE(m_reg.perm_write == true);
  REQUIRE(m_reg.perm_private == true);

  REQUIRE(m_reg.perm_execute == false);
  REQUIRE(m_reg.perm_shared == false);

  //
  m_reg = parse_proc_map_str("7f51fc624000-7f51fc627000 rw-p 00000000 00:00 0 ",
                             &context);
  REQUIRE(m_reg.address_start == 0x7f51fc624000);
  REQUIRE(m_reg.address_end == 0x7f51fc627000);
  REQUIRE(m_reg.mem_type == mem_region_type::misc);
  // ===================== test when
  // ========= path_name of the program is really long =================
  std::string proc_map_line_str = "55f2dab4a000-55f2dab4b000 rw-p 00003000 "
                                  "08:05 21537104 ";
  // generate the long path_name
  for (int i = 0; i < 1000; i++) {
    proc_map_line_str += "/path_to_prog";
  }
  m_reg = parse_proc_map_str(proc_map_line_str, &context);
  REQUIRE(m_reg.address_start == 0x55f2dab4a000);
  REQUIRE(m_reg.address_end == 0x55f2dab4b000);
  REQUIRE(m_reg.mem_type == mem_region_type::misc);
  REQUIRE(m_reg.is_special_region == false);

  REQUIRE(m_reg.perm_read == true);
  REQUIRE(m_reg.perm_write == true);
  REQUIRE(m_reg.perm_private == true);

  REQUIRE(m_reg.perm_execute == false);
  REQUIRE(m_reg.perm_shared == false);
  // ======path_name contains space and non-standard char============
  m_reg = parse_proc_map_str("e8bf8000-e8bf9000 rw-p 00000000 00:00 0          "
                             " [anon:arc4random data]",
                             &context);
  REQUIRE(m_reg.address_start == 0xe8bf8000);
  REQUIRE(m_reg.address_end == 0xe8bf9000);
  REQUIRE(m_reg.path_name == "[anon:arc4random data]");
  REQUIRE(m_reg.is_special_region == true);

  REQUIRE(m_reg.perm_read == true);
  REQUIRE(m_reg.perm_write == true);
  REQUIRE(m_reg.perm_private == true);

  REQUIRE(m_reg.perm_execute == false);
  REQUIRE(m_reg.perm_shared == false);
  // =====================================

  m_reg = parse_proc_map_str("e8bfa000-e8bfb000 rw-p 00000000 00:00 0         "
                             " [anon:System property context nodes]",
                             &context);
  REQUIRE(m_reg.address_start == 0xe8bfa000);
  REQUIRE(m_reg.address_end == 0xe8bfb000);
  REQUIRE(m_reg.path_name == "[anon:System property context nodes]");
  REQUIRE(m_reg.is_special_region == true);

  REQUIRE(m_reg.perm_read == true);
  REQUIRE(m_reg.perm_write == true);
  REQUIRE(m_reg.perm_private == true);

  REQUIRE(m_reg.perm_execute == false);
  REQUIRE(m_reg.perm_shared == false);
  // =====================================
  m_reg = parse_proc_map_str(
      "5592ff044000-5592ff045000 r--p 00000000 08:05 21548075    "
      " /Projects/ACE/example_program/coin prog",
      &context);
  REQUIRE(m_reg.address_start == 0x5592ff044000);
  REQUIRE(m_reg.address_end == 0x5592ff045000);
  REQUIRE(m_reg.path_name == "/Projects/ACE/example_program/coin prog");
  REQUIRE(m_reg.is_special_region == false);

  REQUIRE(m_reg.perm_read == true);
  REQUIRE(m_reg.perm_write == false);
  REQUIRE(m_reg.perm_private == true);

  REQUIRE(m_reg.perm_execute == false);
  REQUIRE(m_reg.perm_shared == false);
  // ================================================================

  m_reg = parse_proc_map_str("e7fff000-e801f000 r--s 00000000 00:11 7567       "
                             " /dev/__properties__/properties_serial",
                             &context);

  REQUIRE(m_reg.address_start == 0xe7fff000);
  REQUIRE(m_reg.address_end == 0xe801f000);
  REQUIRE(m_reg.path_name == "/dev/__properties__/properties_serial");
  REQUIRE(m_reg.is_special_region == false);

  REQUIRE(m_reg.perm_read == true);
  REQUIRE(m_reg.perm_write == false);
  REQUIRE(m_reg.perm_private == false);
  REQUIRE(m_reg.perm_execute == false);
  REQUIRE(m_reg.perm_shared == true);

  // ================================================================

  m_reg = parse_proc_map_str("e8a9b000-e8a9d000 ---p 00000000 00:00 0          "
                             "                        [anon:cfi shadow]",
                             &context);

  REQUIRE(m_reg.address_start == 0xe8a9b000);
  REQUIRE(m_reg.address_end == 0xe8a9d000);
  REQUIRE(m_reg.path_name == "[anon:cfi shadow]");
  REQUIRE(m_reg.is_special_region == true);

  REQUIRE(m_reg.perm_read == false);
  REQUIRE(m_reg.perm_write == false);
  REQUIRE(m_reg.perm_private == true);
  REQUIRE(m_reg.perm_execute == false);
  REQUIRE(m_reg.perm_shared == false);
}

TEST_CASE("parse_proc_map_file", "[proc_map]") {

  std::string exename = "/home/nicholas/Desktop/Projects/ACE/example_program/"
                        "coin_prog";
  parse_proc_map_context context = parse_proc_map_context(exename);
  std::vector<struct mem_region> proc_mem_regions =
      parse_proc_map_file("test_files/maps_files/maps", &context);

  REQUIRE(23 == proc_mem_regions.size());
  //
  REQUIRE(0x55f2dab46000 == proc_mem_regions[0].address_start);
  REQUIRE(0x55f2dab47000 == proc_mem_regions[0].address_end);
  REQUIRE(mem_region_type::misc == proc_mem_regions[0].mem_type);
  REQUIRE(false == proc_mem_regions[0].is_special_region);
  //
  REQUIRE(0x55f2dab47000 == proc_mem_regions[1].address_start);
  REQUIRE(0x55f2dab48000 == proc_mem_regions[1].address_end);
  // TODO: pass the test
  REQUIRE(mem_region_type::exe == proc_mem_regions[1].mem_type);
  REQUIRE(false == proc_mem_regions[1].is_special_region);

  //
  REQUIRE(0x55f2dc48f000 == proc_mem_regions[5].address_start);
  REQUIRE(0x55f2dc4b0000 == proc_mem_regions[5].address_end);
  REQUIRE(mem_region_type::heap == proc_mem_regions[5].mem_type);
  REQUIRE(true == proc_mem_regions[5].is_special_region);
  //
  REQUIRE(0x7fff7b7ea000 == proc_mem_regions[19].address_start);
  REQUIRE(0x7fff7b80b000 == proc_mem_regions[19].address_end);
  REQUIRE(mem_region_type::stack == proc_mem_regions[19].mem_type);
  REQUIRE(true == proc_mem_regions[19].is_special_region);
}

TEST_CASE("test_get_mem_region_type", "[proc_map]") {

  {
    parse_proc_map_context context = parse_proc_map_context("");
    context.is_exe = true;
    // program mapping like the binary and the library files
    REQUIRE(get_mem_region_type("/home/coin_prog", &context) ==
            mem_region_type::exe);
  }

  {
    parse_proc_map_context context = parse_proc_map_context("");
    // just some random number
    context.code_regions = 3;
    // program mapping like the binary and the library files
    REQUIRE(get_mem_region_type("/home/coin_prog", &context) ==
            mem_region_type::code);
  }

  {
    parse_proc_map_context context = parse_proc_map_context("");
    REQUIRE(get_mem_region_type("[stack]", &context) == mem_region_type::stack);
  }

  {
    parse_proc_map_context context = parse_proc_map_context("");
    REQUIRE(get_mem_region_type("[heap]", &context) == mem_region_type::heap);
  }
  // ============ misc mapping ==================
  {
    parse_proc_map_context context = parse_proc_map_context("");
    REQUIRE(get_mem_region_type("[STACK]", &context) == mem_region_type::misc);
    REQUIRE(get_mem_region_type("[]", &context) == mem_region_type::misc);
    REQUIRE(get_mem_region_type("[]]", &context) == mem_region_type::misc);
  }
}
