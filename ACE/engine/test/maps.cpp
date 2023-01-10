#include "../src/maps.hpp"
#include "../third_party/catch.hpp"
// TODO: add test for special memory region with only one '['
TEST_CASE("parse_proc_map_str", "[proc_map]") {

  struct mem_segment m_seg = parse_proc_map_str(
      "55f2dc48f000-55f2dc4b0000 rw-p 00000000 00:00 0          "
      "                [heap]");
  REQUIRE(m_seg.address_start == 0x55f2dc48f000);
  REQUIRE(m_seg.address_end == 0x55f2dc4b0000);
  REQUIRE(m_seg.mem_type == Maps_pathname_type::heap);
  REQUIRE(m_seg.mem_type_str == "[heap]");
  REQUIRE(m_seg.is_special_region == true);

  REQUIRE(m_seg.perm_read == true);
  REQUIRE(m_seg.perm_write == true);
  REQUIRE(m_seg.perm_private == true);

  REQUIRE(m_seg.perm_execute == false);
  REQUIRE(m_seg.perm_shared == false);

  // ============================================
  //
  m_seg = parse_proc_map_str(
      "55f2dc48f000-55f2dc4b0000 rw-p 00000000 00:00 0          "
      "                [anon:scudo:primary]");
  REQUIRE(m_seg.address_start == 0x55f2dc48f000);
  REQUIRE(m_seg.address_end == 0x55f2dc4b0000);
  REQUIRE(m_seg.mem_type == Maps_pathname_type::heap);
  REQUIRE(m_seg.mem_type_str == "[anon:scudo:primary]");
  REQUIRE(m_seg.is_special_region == true);

  REQUIRE(m_seg.perm_read == true);
  REQUIRE(m_seg.perm_write == true);
  REQUIRE(m_seg.perm_private == true);

  REQUIRE(m_seg.perm_execute == false);
  REQUIRE(m_seg.perm_shared == false);

  //
  m_seg =
      parse_proc_map_str("7f51fc624000-7f51fc627000 rw-p 00000000 00:00 0 ");
  REQUIRE(m_seg.address_start == 0x7f51fc624000);
  REQUIRE(m_seg.address_end == 0x7f51fc627000);
  REQUIRE(m_seg.mem_type == Maps_pathname_type::anonymous);
  // ===================== test when
  // ========= path_name of the program is really long =================
  std::string proc_map_line_str = "55f2dab4a000-55f2dab4b000 rw-p 00003000 "
                                  "08:05 21537104 ";
  // generate the long path_name
  for (int i = 0; i < 1000; i++) {
    proc_map_line_str += "/path_to_prog";
  }
  m_seg = parse_proc_map_str(proc_map_line_str);
  REQUIRE(m_seg.address_start == 0x55f2dab4a000);
  REQUIRE(m_seg.address_end == 0x55f2dab4b000);
  REQUIRE(m_seg.mem_type == Maps_pathname_type::program_mapping);
  REQUIRE(m_seg.is_special_region == false);

  REQUIRE(m_seg.perm_read == true);
  REQUIRE(m_seg.perm_write == true);
  REQUIRE(m_seg.perm_private == true);

  REQUIRE(m_seg.perm_execute == false);
  REQUIRE(m_seg.perm_shared == false);
  // ======path_name contains space and non-standard char============
  m_seg = parse_proc_map_str("e8bf8000-e8bf9000 rw-p 00000000 00:00 0          "
                             " [anon:arc4random data]");
  REQUIRE(m_seg.address_start == 0xe8bf8000);
  REQUIRE(m_seg.address_end == 0xe8bf9000);
  REQUIRE(m_seg.mem_type_str == "[anon:arc4random data]");
  REQUIRE(m_seg.is_special_region == true);

  REQUIRE(m_seg.perm_read == true);
  REQUIRE(m_seg.perm_write == true);
  REQUIRE(m_seg.perm_private == true);

  REQUIRE(m_seg.perm_execute == false);
  REQUIRE(m_seg.perm_shared == false);
  // =====================================

  m_seg = parse_proc_map_str("e8bfa000-e8bfb000 rw-p 00000000 00:00 0         "
                             " [anon:System property context nodes]");
  REQUIRE(m_seg.address_start == 0xe8bfa000);
  REQUIRE(m_seg.address_end == 0xe8bfb000);
  REQUIRE(m_seg.mem_type_str == "[anon:System property context nodes]");
  REQUIRE(m_seg.is_special_region == true);

  REQUIRE(m_seg.perm_read == true);
  REQUIRE(m_seg.perm_write == true);
  REQUIRE(m_seg.perm_private == true);

  REQUIRE(m_seg.perm_execute == false);
  REQUIRE(m_seg.perm_shared == false);
  // =====================================
  m_seg = parse_proc_map_str(
      "5592ff044000-5592ff045000 r--p 00000000 08:05 21548075    "
      " /Projects/ACE/example_program/coin prog");
  REQUIRE(m_seg.address_start == 0x5592ff044000);
  REQUIRE(m_seg.address_end == 0x5592ff045000);
  REQUIRE(m_seg.mem_type_str == "/Projects/ACE/example_program/coin prog");
  REQUIRE(m_seg.is_special_region == false);

  REQUIRE(m_seg.perm_read == true);
  REQUIRE(m_seg.perm_write == false);
  REQUIRE(m_seg.perm_private == true);

  REQUIRE(m_seg.perm_execute == false);
  REQUIRE(m_seg.perm_shared == false);
  // ================================================================

  m_seg = parse_proc_map_str("e7fff000-e801f000 r--s 00000000 00:11 7567       "
                             " /dev/__properties__/properties_serial");

  REQUIRE(m_seg.address_start == 0xe7fff000);
  REQUIRE(m_seg.address_end == 0xe801f000);
  REQUIRE(m_seg.mem_type_str == "/dev/__properties__/properties_serial");
  REQUIRE(m_seg.is_special_region == false);

  REQUIRE(m_seg.perm_read == true);
  REQUIRE(m_seg.perm_write == false);
  REQUIRE(m_seg.perm_private == false);
  REQUIRE(m_seg.perm_execute == false);
  REQUIRE(m_seg.perm_shared == true);

  // ================================================================

  m_seg = parse_proc_map_str("e8a9b000-e8a9d000 ---p 00000000 00:00 0          "
                             "                        [anon:cfi shadow]");

  REQUIRE(m_seg.address_start == 0xe8a9b000);
  REQUIRE(m_seg.address_end == 0xe8a9d000);
  REQUIRE(m_seg.mem_type_str == "[anon:cfi shadow]");
  REQUIRE(m_seg.is_special_region == true);

  REQUIRE(m_seg.perm_read == false);
  REQUIRE(m_seg.perm_write == false);
  REQUIRE(m_seg.perm_private == true);
  REQUIRE(m_seg.perm_execute == false);
  REQUIRE(m_seg.perm_shared == false);
}

TEST_CASE("parse_proc_map_file", "[proc_map]") {

  std::vector<struct mem_segment> proc_mem_segments =
      parse_proc_map_file("test_files/maps_files/maps");

  REQUIRE(23 == proc_mem_segments.size());
  //
  REQUIRE(0x55f2dab46000 == proc_mem_segments[0].address_start);
  REQUIRE(0x55f2dab47000 == proc_mem_segments[0].address_end);
  REQUIRE(Maps_pathname_type::program_mapping == proc_mem_segments[0].mem_type);
  REQUIRE(false == proc_mem_segments[0].is_special_region);

  //
  REQUIRE(0x55f2dc48f000 == proc_mem_segments[5].address_start);
  REQUIRE(0x55f2dc4b0000 == proc_mem_segments[5].address_end);
  REQUIRE(Maps_pathname_type::heap == proc_mem_segments[5].mem_type);
  REQUIRE(true == proc_mem_segments[5].is_special_region);
  //
  REQUIRE(0x7fff7b7ea000 == proc_mem_segments[19].address_start);
  REQUIRE(0x7fff7b80b000 == proc_mem_segments[19].address_end);
  REQUIRE(Maps_pathname_type::stack == proc_mem_segments[19].mem_type);
  REQUIRE(true == proc_mem_segments[19].is_special_region);
}

TEST_CASE("test_get_Maps_pathname_type", "[proc_map]") {

  // program mapping like the binary and the library files
  REQUIRE(get_Maps_pathname_type("/home/coin_prog") ==
          Maps_pathname_type::program_mapping);

  REQUIRE(get_Maps_pathname_type(
              "/usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2") ==
          Maps_pathname_type::program_mapping);
  // specal region
  REQUIRE(get_Maps_pathname_type("") == Maps_pathname_type::anonymous);
  REQUIRE(get_Maps_pathname_type("[stack]") == Maps_pathname_type::stack);
  REQUIRE(get_Maps_pathname_type("[heap]") == Maps_pathname_type::heap);
  REQUIRE(get_Maps_pathname_type("[anon:scudo:primary]") ==
          Maps_pathname_type::heap);

  REQUIRE(get_Maps_pathname_type("[vdso]") == Maps_pathname_type::vdso);
  REQUIRE(get_Maps_pathname_type("[vvar]") == Maps_pathname_type::vvar);
  REQUIRE(get_Maps_pathname_type("[vsyscall]") == Maps_pathname_type::vsyscall);
  // ============ unknown mapping ==================
  //
  REQUIRE(get_Maps_pathname_type("[STACK]") == Maps_pathname_type::unknown);
  REQUIRE(get_Maps_pathname_type("[]") == Maps_pathname_type::unknown);
  REQUIRE(get_Maps_pathname_type("[]]") == Maps_pathname_type::unknown);

  // notice that '/' at front is not present, which is not valid path
  REQUIRE(
      get_Maps_pathname_type("usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2") ==
      Maps_pathname_type::unknown);
  // directory is mapped?, impossible
  //
  REQUIRE(get_Maps_pathname_type("/home/coin_prog/") ==
          Maps_pathname_type::unknown);

  REQUIRE(get_Maps_pathname_type("//") == Maps_pathname_type::unknown);
  REQUIRE(get_Maps_pathname_type("/") == Maps_pathname_type::unknown);
}
