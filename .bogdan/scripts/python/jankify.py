#!/usr/bin/env python3

import argparse

def jankify(s):
    return ''.join([(s[x].upper(), s[x].lower())[x % 2] for x in range(len(s))])

## Parse cmd line input
parser = argparse.ArgumentParser()
parser.add_argument("sentence")
args = parser.parse_args()

## jAnKifY THe senTEnCe.
mod_string = jankify(args.sentence)
print(mod_string)
