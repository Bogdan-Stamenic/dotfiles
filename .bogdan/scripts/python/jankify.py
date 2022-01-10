#!/usr/bin/env python3
import argparse
import pyperclip as pc

def jankify(s):
    return ''.join([(s[x].upper(), s[x].lower())[x % 2] for x in range(len(s))])

## Parse cmd line input
parser = argparse.ArgumentParser()
parser.add_argument(
        '-c', '--command-line',
        action='store',
        help='Jankifies an input from the command line.',
        )
args = parser.parse_args()

## jAnKifY THe senTEnCe.
#print(args.command_line == None)
if args.command_line == None:
    clipboard = pc.paste()
    dank_text = jankify(clipboard)
    pc.copy(dank_text)
else:
    mod_string = jankify(args.command_line)
    print(mod_string)
