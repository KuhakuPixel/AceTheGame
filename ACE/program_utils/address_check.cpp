
/*
 * get info of an address from a
 * a map file (/proc/<pid>/map/)
 *
 * TODO: integrate this with the main program
 * */

#include "../third_party/CLI11.hpp"
#include "ACE/ace_type.hpp"
#include "ACE/file_utils.hpp"
#include "ACE/maps.hpp"
#include <stdio.h>

int main(int argc, char **argv) {

  CLI::App app{"get info of an address"};

  std::string maps_file_path;
  ADDR address;
  app.add_option("<maps_file_path>", maps_file_path, "proc pid map file path")
      ->required();
  app.add_option("<ADDRESS>", address, "address")->required();

  CLI11_PARSE(app, argc, argv);
  if (!file_exist(maps_file_path.c_str())) {
    printf("%s doesn't exist\n", maps_file_path.c_str());
    return 0;
  }
  // parse maps file
  std::vector<struct mem_region> mem_regions =
      parse_proc_map_file(maps_file_path.c_str());

  // find out in which mem segment the [address]
  for (size_t i = 0; i < mem_regions.size(); i++) {

    // if address is between the address range,
    // then that address belongs to that region
    // we have found it!
    if (address >= mem_regions[i].address_start &&
        address <= mem_regions[i].address_end) {
      printf("address: %llx\n", address);
      printf("region name: %s\n", mem_regions[i].get_displayable_str().c_str());
      return 0;
    }
  }
  printf("%llx doesn't belong to any region\n", address);

  return 0;
}
