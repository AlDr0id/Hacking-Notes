#!/usr/bin/python

import os
import sys

comando = "nc -nvv -w 1 -z " + sys.argv[1]

for i in range(1, 10000):
    comando += " " + str(i)
    os.system(comando)
    comando = "nc -nvv -w 1 -z " + sys.argv[1]
