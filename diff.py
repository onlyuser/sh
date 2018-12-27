#!/usr/bin/python3

import sys
import os

#os.system('diff "%s" "%s"' % (sys.argv[2], sys.argv[5]))
os.system('meld "%s" "%s"' % (sys.argv[2], sys.argv[5]))
