#!/usr/bin/env python3

from random import seed, randint
import argparse

seed()
def jostle(letter):
    random_num = randint(0,1)
    if random_num:
        return letter.upper()
    else:
        return letter.lower()

def jankify(s):
    new_s = ""
    for i in range(0, len(s)):
        new_s += jostle(s[i])
    return new_s

## Parse cmd line input
parser = argparse.ArgumentParser()
parser.add_argument("sentence")
args = parser.parse_args()

## jAnKifY THe senTEnCe.
mod_string = jankify(args.sentence)
print(mod_string)
