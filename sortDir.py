#!/usr/bin/env pythong

import os

os.chdir('/tmp/tmp')
for dirname in '1 10 11 12 2 20 21 22 3 30 31 32'.split():
    try:
        os.makdirs(dirname)
    except OSError: pass

for root, dirs, files in os.walk('.'):
    for dirname in sorted(dirs):
#   for dirname in sorted(dirs, key=int):
        print(dirname)
