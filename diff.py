#!/usr/bin/python

import sys
import os


print 'Diff on ' + sys.argv[5]
os.system('/usr/bin/meld "%s" "%s" 2>/dev/null' % (sys.argv[2], sys.argv[5]))
