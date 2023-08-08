#!/bin/python3


with open("./android_smaps_size") as file:

    total = 0.0
    for line in file:
        print("current %f MB" %(total/1000))
        splitted = line.split()
        region_size = float(splitted[1])
        total += region_size


    print("Total: %f MB" % (total/1000))
