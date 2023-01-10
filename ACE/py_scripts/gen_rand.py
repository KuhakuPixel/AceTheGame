#!/bin/python3


"""
scripts used to generate random data
for the scanner part of the ACE project
"""

import argparse
import random
import sys

NUM_TYPE_AND_BOUND_DICT = {
    "int": (-2147483648, 2147483647),
    "short": (-32768, 32767),
    "ushort": (0, 65535),
    "uint": (0, 4294967295),
    "long": (-2147483648, 2147483647),
    "ulong": (0, 4294967295),
    "longlong": (-9223372036854775808, 9223372036854775807),
    "ulonglong": (0, 18446744073709551615),
}


def init_and_parse_args():
    parser = argparse.ArgumentParser(
        epilog="A program to generate random number into one line seperated by comma",
        formatter_class=argparse.RawTextHelpFormatter,
    )

    parser.add_argument("count", help="specify amount of number to generate", type=int)
    parser.add_argument(
        "--max",
        help="max bound (inclusive), will default to C's INT_MAX if not specified",
        type=int,
    )
    parser.add_argument(
        "--min",
        help="min bound (inclusive), will default to C's INT_MIN if not specified",
        type=int,
    )

    type_help_str = [
        "generate types ",
        "like int, short, long and ect. Use --type-list to view all ",
        "supported types MAX or MIN CAN'T BE SPECIFIED AFTER THIS",
    ]

    parser.add_argument(
        "--type",
        "-t",
        help="\n".join(type_help_str),
        type=str,
    )

    separator_help_str = [
        "separator string between generated numbers, default to ','",
        'for separation between line, use "\\n" ',
        "(make sure to pass the quotation as well)",
        "NOTES: ",
        "to easily escape from being interpreted by terminal",
        "as special character",
    ]
    parser.add_argument(
        "--separator",
        "-s",
        help="\n".join(separator_help_str),
        type=str,
    )

    type_list_help_str = [
        "list number type that can be generated (Follow C's type)",
    ]
    parser.add_argument(
        "--type_list",
        help="\n".join(type_list_help_str),
        action="store_true",
    )
    return parser.parse_args()


def generate_numbers_and_display(min_bound, max_bound, count, separator_str=","):

    # python by defaults will treat a newline_str as literal "\n" string
    # ("\\n" in value) so we need to replace by the real '\n'
    # ref: https://stackoverflow.com/a/42965750/14073678
    separator_str = separator_str.replace("\\n", "\n")

    for i in range(0, count):
        random_val = random.randint(min_bound, max_bound)

        if i < count - 1:
            print("%d%s" % (random_val, separator_str), end="")
        else:
            print("%d" % (random_val), end="")


def main_func():

    min_bound = NUM_TYPE_AND_BOUND_DICT["int"][0]
    max_bound = NUM_TYPE_AND_BOUND_DICT["int"][1]
    args = init_and_parse_args()

    if args.max != None:
        max_bound = args.max

    if args.min != None:
        min_bound = args.min

    if min_bound >= max_bound:
        print("max bound must be greater than min bound")
        print("max bound = %d" % (max_bound))
        print("min bound = %d" % (min_bound))
        sys.exit()

    if args.count < 0:
        print("count can't be < 0")
        sys.exit()

    # don't allow types options and (min or max together)
    # since it will be ambiguous (which bound do we pick?
    # the one specified directly by the '--min' & '--max' options
    # or the bound specified by '--type'
    if ((args.max != None) or (args.min != None)) and (args.type):
        print("cannot specify min or max bound after using --type")
        sys.exit()

    if args.type != None:
        # allow case insensitive
        num_type_str = (args.type).lower()
        if num_type_str not in NUM_TYPE_AND_BOUND_DICT:
            print("type '%s' is unknown, --type_list for supported types" % args.type)
            sys.exit()
        min_bound = NUM_TYPE_AND_BOUND_DICT[num_type_str][0]
        max_bound = NUM_TYPE_AND_BOUND_DICT[num_type_str][1]

    if args.type_list:
        for key in NUM_TYPE_AND_BOUND_DICT.keys():
            current_min_bound = NUM_TYPE_AND_BOUND_DICT[key][0]
            current_max_bound = NUM_TYPE_AND_BOUND_DICT[key][1]
            print("- %s: %d <--> %d" % (key, current_min_bound, current_max_bound))

    separator_str = ","

    if args.separator != None:
        separator_str = args.separator
    generate_numbers_and_display(
        min_bound, max_bound, args.count, separator_str=separator_str
    )


if __name__ == "__main__":
    main_func()
