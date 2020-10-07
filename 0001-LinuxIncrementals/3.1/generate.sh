#!/bin/bash
git checkout v3.1.2
git format-patch --stdout v3.1.1 > $incrPath/3.1/3.1.0001-0002.patch
git checkout v3.1.3
git format-patch --stdout v3.1.2 > $incrPath/3.1/3.1.0002-0003.patch
git checkout v3.1.4
git format-patch --stdout v3.1.3 > $incrPath/3.1/3.1.0003-0004.patch
git checkout v3.1.5
git format-patch --stdout v3.1.4 > $incrPath/3.1/3.1.0004-0005.patch
git checkout v3.1.6
git format-patch --stdout v3.1.5 > $incrPath/3.1/3.1.0005-0006.patch
git checkout v3.1.7
git format-patch --stdout v3.1.6 > $incrPath/3.1/3.1.0006-0007.patch
git checkout v3.1.8
git format-patch --stdout v3.1.7 > $incrPath/3.1/3.1.0007-0008.patch
git checkout v3.1.9
git format-patch --stdout v3.1.8 > $incrPath/3.1/3.1.0008-0009.patch
git checkout v3.1.10
git format-patch --stdout v3.1.9 > $incrPath/3.1/3.1.0009-0010.patch
