#!/usr/bin/python

import sys
import os

#os.system('diff "%s" "%s"' % (sys.argv[2], sys.argv[5]))
os.system('meld "%s" "%s"' % (sys.argv[2], sys.argv[5]))
