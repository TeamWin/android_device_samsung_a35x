#!/usr/bin/env python3
# Copyright 2016, The Android Open Source Project
#
# Permission is hereby granted, free of charge, to any person
# obtaining a copy of this software and associated documentation
# files (the "Software"), to deal in the Software without
# restriction, including without limitation the rights to use, copy,
# modify, merge, publish, distribute, sublicense, and/or sell copies
# of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
# BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
# ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#

import argparse
import os
import pathlib


# To input image as argument
parser = argparse.ArgumentParser()
parser.add_argument('--img', type=pathlib.Path)
args = parser.parse_args()


FILE = open(args.img,'rb+')
image = FILE.read()

# Get location of avb image
avb_header = b'AVB0'
find_avb_str = image.find(avb_header)
offset = FILE.seek(find_avb_str + 972)

# Generating random 64 bit bytes to replace AVB Digest
random = os.urandom(64)

FILE.write(random)

# Print
print("AVB HEADER OFFSET: ", find_avb_str)
print("AVB Digest: ", random.hex())
print("-----AVB Patched successfully-----")
