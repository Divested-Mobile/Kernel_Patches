#!/bin/bash
git checkout v5.4.2
git format-patch --stdout v5.4.1 > $incrPath/5.4/5.4.0001-0002.patch
git checkout v5.4.3
git format-patch --stdout v5.4.2 > $incrPath/5.4/5.4.0002-0003.patch
git checkout v5.4.4
git format-patch --stdout v5.4.3 > $incrPath/5.4/5.4.0003-0004.patch
git checkout v5.4.5
git format-patch --stdout v5.4.4 > $incrPath/5.4/5.4.0004-0005.patch
git checkout v5.4.6
git format-patch --stdout v5.4.5 > $incrPath/5.4/5.4.0005-0006.patch
git checkout v5.4.7
git format-patch --stdout v5.4.6 > $incrPath/5.4/5.4.0006-0007.patch
git checkout v5.4.8
git format-patch --stdout v5.4.7 > $incrPath/5.4/5.4.0007-0008.patch
git checkout v5.4.9
git format-patch --stdout v5.4.8 > $incrPath/5.4/5.4.0008-0009.patch
git checkout v5.4.10
git format-patch --stdout v5.4.9 > $incrPath/5.4/5.4.0009-0010.patch
git checkout v5.4.11
git format-patch --stdout v5.4.10 > $incrPath/5.4/5.4.0010-0011.patch
git checkout v5.4.12
git format-patch --stdout v5.4.11 > $incrPath/5.4/5.4.0011-0012.patch
git checkout v5.4.13
git format-patch --stdout v5.4.12 > $incrPath/5.4/5.4.0012-0013.patch
git checkout v5.4.14
git format-patch --stdout v5.4.13 > $incrPath/5.4/5.4.0013-0014.patch
git checkout v5.4.15
git format-patch --stdout v5.4.14 > $incrPath/5.4/5.4.0014-0015.patch
git checkout v5.4.16
git format-patch --stdout v5.4.15 > $incrPath/5.4/5.4.0015-0016.patch
git checkout v5.4.17
git format-patch --stdout v5.4.16 > $incrPath/5.4/5.4.0016-0017.patch
git checkout v5.4.18
git format-patch --stdout v5.4.17 > $incrPath/5.4/5.4.0017-0018.patch
git checkout v5.4.19
git format-patch --stdout v5.4.18 > $incrPath/5.4/5.4.0018-0019.patch
git checkout v5.4.20
git format-patch --stdout v5.4.19 > $incrPath/5.4/5.4.0019-0020.patch
git checkout v5.4.21
git format-patch --stdout v5.4.20 > $incrPath/5.4/5.4.0020-0021.patch
git checkout v5.4.22
git format-patch --stdout v5.4.21 > $incrPath/5.4/5.4.0021-0022.patch
git checkout v5.4.23
git format-patch --stdout v5.4.22 > $incrPath/5.4/5.4.0022-0023.patch
git checkout v5.4.24
git format-patch --stdout v5.4.23 > $incrPath/5.4/5.4.0023-0024.patch
git checkout v5.4.25
git format-patch --stdout v5.4.24 > $incrPath/5.4/5.4.0024-0025.patch
git checkout v5.4.26
git format-patch --stdout v5.4.25 > $incrPath/5.4/5.4.0025-0026.patch
git checkout v5.4.27
git format-patch --stdout v5.4.26 > $incrPath/5.4/5.4.0026-0027.patch
git checkout v5.4.28
git format-patch --stdout v5.4.27 > $incrPath/5.4/5.4.0027-0028.patch
git checkout v5.4.29
git format-patch --stdout v5.4.28 > $incrPath/5.4/5.4.0028-0029.patch
git checkout v5.4.30
git format-patch --stdout v5.4.29 > $incrPath/5.4/5.4.0029-0030.patch
git checkout v5.4.31
git format-patch --stdout v5.4.30 > $incrPath/5.4/5.4.0030-0031.patch
git checkout v5.4.32
git format-patch --stdout v5.4.31 > $incrPath/5.4/5.4.0031-0032.patch
git checkout v5.4.33
git format-patch --stdout v5.4.32 > $incrPath/5.4/5.4.0032-0033.patch
git checkout v5.4.34
git format-patch --stdout v5.4.33 > $incrPath/5.4/5.4.0033-0034.patch
git checkout v5.4.35
git format-patch --stdout v5.4.34 > $incrPath/5.4/5.4.0034-0035.patch
git checkout v5.4.36
git format-patch --stdout v5.4.35 > $incrPath/5.4/5.4.0035-0036.patch
git checkout v5.4.37
git format-patch --stdout v5.4.36 > $incrPath/5.4/5.4.0036-0037.patch
git checkout v5.4.38
git format-patch --stdout v5.4.37 > $incrPath/5.4/5.4.0037-0038.patch
git checkout v5.4.39
git format-patch --stdout v5.4.38 > $incrPath/5.4/5.4.0038-0039.patch
git checkout v5.4.40
git format-patch --stdout v5.4.39 > $incrPath/5.4/5.4.0039-0040.patch
git checkout v5.4.41
git format-patch --stdout v5.4.40 > $incrPath/5.4/5.4.0040-0041.patch
git checkout v5.4.42
git format-patch --stdout v5.4.41 > $incrPath/5.4/5.4.0041-0042.patch
git checkout v5.4.43
git format-patch --stdout v5.4.42 > $incrPath/5.4/5.4.0042-0043.patch
git checkout v5.4.44
git format-patch --stdout v5.4.43 > $incrPath/5.4/5.4.0043-0044.patch
git checkout v5.4.45
git format-patch --stdout v5.4.44 > $incrPath/5.4/5.4.0044-0045.patch
git checkout v5.4.46
git format-patch --stdout v5.4.45 > $incrPath/5.4/5.4.0045-0046.patch
git checkout v5.4.47
git format-patch --stdout v5.4.46 > $incrPath/5.4/5.4.0046-0047.patch
git checkout v5.4.48
git format-patch --stdout v5.4.47 > $incrPath/5.4/5.4.0047-0048.patch
git checkout v5.4.49
git format-patch --stdout v5.4.48 > $incrPath/5.4/5.4.0048-0049.patch
git checkout v5.4.50
git format-patch --stdout v5.4.49 > $incrPath/5.4/5.4.0049-0050.patch
git checkout v5.4.51
git format-patch --stdout v5.4.50 > $incrPath/5.4/5.4.0050-0051.patch
git checkout v5.4.52
git format-patch --stdout v5.4.51 > $incrPath/5.4/5.4.0051-0052.patch
git checkout v5.4.53
git format-patch --stdout v5.4.52 > $incrPath/5.4/5.4.0052-0053.patch
git checkout v5.4.54
git format-patch --stdout v5.4.53 > $incrPath/5.4/5.4.0053-0054.patch
git checkout v5.4.55
git format-patch --stdout v5.4.54 > $incrPath/5.4/5.4.0054-0055.patch
git checkout v5.4.56
git format-patch --stdout v5.4.55 > $incrPath/5.4/5.4.0055-0056.patch
git checkout v5.4.57
git format-patch --stdout v5.4.56 > $incrPath/5.4/5.4.0056-0057.patch
git checkout v5.4.58
git format-patch --stdout v5.4.57 > $incrPath/5.4/5.4.0057-0058.patch
git checkout v5.4.59
git format-patch --stdout v5.4.58 > $incrPath/5.4/5.4.0058-0059.patch
git checkout v5.4.60
git format-patch --stdout v5.4.59 > $incrPath/5.4/5.4.0059-0060.patch
git checkout v5.4.61
git format-patch --stdout v5.4.60 > $incrPath/5.4/5.4.0060-0061.patch
git checkout v5.4.62
git format-patch --stdout v5.4.61 > $incrPath/5.4/5.4.0061-0062.patch
git checkout v5.4.63
git format-patch --stdout v5.4.62 > $incrPath/5.4/5.4.0062-0063.patch
git checkout v5.4.64
git format-patch --stdout v5.4.63 > $incrPath/5.4/5.4.0063-0064.patch
git checkout v5.4.65
git format-patch --stdout v5.4.64 > $incrPath/5.4/5.4.0064-0065.patch
git checkout v5.4.66
git format-patch --stdout v5.4.65 > $incrPath/5.4/5.4.0065-0066.patch
git checkout v5.4.67
git format-patch --stdout v5.4.66 > $incrPath/5.4/5.4.0066-0067.patch
git checkout v5.4.68
git format-patch --stdout v5.4.67 > $incrPath/5.4/5.4.0067-0068.patch
git checkout v5.4.69
git format-patch --stdout v5.4.68 > $incrPath/5.4/5.4.0068-0069.patch
