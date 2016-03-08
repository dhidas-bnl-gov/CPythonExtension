#!/usr/bin/env python

import sys
sys.path.append('./')
sys.path.append('./lib')
sys.path.append('./build/lib.macosx-10.11-intel-2.7')

import AddTwo

for i in range(30):
  print i, AddTwo.AddTwo(i, i)


