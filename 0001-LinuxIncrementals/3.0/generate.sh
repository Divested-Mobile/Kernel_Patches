#!/bin/bash
git checkout v3.0.2
git format-patch --stdout v3.0.1 > $incrPath/3.0/3.0.0001-0002.patch
git checkout v3.0.3
git format-patch --stdout v3.0.2 > $incrPath/3.0/3.0.0002-0003.patch
git checkout v3.0.4
git format-patch --stdout v3.0.3 > $incrPath/3.0/3.0.0003-0004.patch
git checkout v3.0.5
git format-patch --stdout v3.0.4 > $incrPath/3.0/3.0.0004-0005.patch
git checkout v3.0.6
git format-patch --stdout v3.0.5 > $incrPath/3.0/3.0.0005-0006.patch
git checkout v3.0.7
git format-patch --stdout v3.0.6 > $incrPath/3.0/3.0.0006-0007.patch
git checkout v3.0.8
git format-patch --stdout v3.0.7 > $incrPath/3.0/3.0.0007-0008.patch
git checkout v3.0.9
git format-patch --stdout v3.0.8 > $incrPath/3.0/3.0.0008-0009.patch
git checkout v3.0.10
git format-patch --stdout v3.0.9 > $incrPath/3.0/3.0.0009-0010.patch
git checkout v3.0.11
git format-patch --stdout v3.0.10 > $incrPath/3.0/3.0.0010-0011.patch
git checkout v3.0.12
git format-patch --stdout v3.0.11 > $incrPath/3.0/3.0.0011-0012.patch
git checkout v3.0.13
git format-patch --stdout v3.0.12 > $incrPath/3.0/3.0.0012-0013.patch
git checkout v3.0.14
git format-patch --stdout v3.0.13 > $incrPath/3.0/3.0.0013-0014.patch
git checkout v3.0.15
git format-patch --stdout v3.0.14 > $incrPath/3.0/3.0.0014-0015.patch
git checkout v3.0.16
git format-patch --stdout v3.0.15 > $incrPath/3.0/3.0.0015-0016.patch
git checkout v3.0.17
git format-patch --stdout v3.0.16 > $incrPath/3.0/3.0.0016-0017.patch
git checkout v3.0.18
git format-patch --stdout v3.0.17 > $incrPath/3.0/3.0.0017-0018.patch
git checkout v3.0.19
git format-patch --stdout v3.0.18 > $incrPath/3.0/3.0.0018-0019.patch
git checkout v3.0.20
git format-patch --stdout v3.0.19 > $incrPath/3.0/3.0.0019-0020.patch
git checkout v3.0.21
git format-patch --stdout v3.0.20 > $incrPath/3.0/3.0.0020-0021.patch
git checkout v3.0.22
git format-patch --stdout v3.0.21 > $incrPath/3.0/3.0.0021-0022.patch
git checkout v3.0.23
git format-patch --stdout v3.0.22 > $incrPath/3.0/3.0.0022-0023.patch
git checkout v3.0.24
git format-patch --stdout v3.0.23 > $incrPath/3.0/3.0.0023-0024.patch
git checkout v3.0.25
git format-patch --stdout v3.0.24 > $incrPath/3.0/3.0.0024-0025.patch
git checkout v3.0.26
git format-patch --stdout v3.0.25 > $incrPath/3.0/3.0.0025-0026.patch
git checkout v3.0.27
git format-patch --stdout v3.0.26 > $incrPath/3.0/3.0.0026-0027.patch
git checkout v3.0.28
git format-patch --stdout v3.0.27 > $incrPath/3.0/3.0.0027-0028.patch
git checkout v3.0.29
git format-patch --stdout v3.0.28 > $incrPath/3.0/3.0.0028-0029.patch
git checkout v3.0.30
git format-patch --stdout v3.0.29 > $incrPath/3.0/3.0.0029-0030.patch
git checkout v3.0.31
git format-patch --stdout v3.0.30 > $incrPath/3.0/3.0.0030-0031.patch
git checkout v3.0.32
git format-patch --stdout v3.0.31 > $incrPath/3.0/3.0.0031-0032.patch
git checkout v3.0.33
git format-patch --stdout v3.0.32 > $incrPath/3.0/3.0.0032-0033.patch
git checkout v3.0.34
git format-patch --stdout v3.0.33 > $incrPath/3.0/3.0.0033-0034.patch
git checkout v3.0.35
git format-patch --stdout v3.0.34 > $incrPath/3.0/3.0.0034-0035.patch
git checkout v3.0.36
git format-patch --stdout v3.0.35 > $incrPath/3.0/3.0.0035-0036.patch
git checkout v3.0.37
git format-patch --stdout v3.0.36 > $incrPath/3.0/3.0.0036-0037.patch
git checkout v3.0.38
git format-patch --stdout v3.0.37 > $incrPath/3.0/3.0.0037-0038.patch
git checkout v3.0.39
git format-patch --stdout v3.0.38 > $incrPath/3.0/3.0.0038-0039.patch
git checkout v3.0.40
git format-patch --stdout v3.0.39 > $incrPath/3.0/3.0.0039-0040.patch
git checkout v3.0.41
git format-patch --stdout v3.0.40 > $incrPath/3.0/3.0.0040-0041.patch
git checkout v3.0.42
git format-patch --stdout v3.0.41 > $incrPath/3.0/3.0.0041-0042.patch
git checkout v3.0.43
git format-patch --stdout v3.0.42 > $incrPath/3.0/3.0.0042-0043.patch
git checkout v3.0.44
git format-patch --stdout v3.0.43 > $incrPath/3.0/3.0.0043-0044.patch
git checkout v3.0.45
git format-patch --stdout v3.0.44 > $incrPath/3.0/3.0.0044-0045.patch
git checkout v3.0.46
git format-patch --stdout v3.0.45 > $incrPath/3.0/3.0.0045-0046.patch
git checkout v3.0.47
git format-patch --stdout v3.0.46 > $incrPath/3.0/3.0.0046-0047.patch
git checkout v3.0.48
git format-patch --stdout v3.0.47 > $incrPath/3.0/3.0.0047-0048.patch
git checkout v3.0.49
git format-patch --stdout v3.0.48 > $incrPath/3.0/3.0.0048-0049.patch
git checkout v3.0.50
git format-patch --stdout v3.0.49 > $incrPath/3.0/3.0.0049-0050.patch
git checkout v3.0.51
git format-patch --stdout v3.0.50 > $incrPath/3.0/3.0.0050-0051.patch
git checkout v3.0.52
git format-patch --stdout v3.0.51 > $incrPath/3.0/3.0.0051-0052.patch
git checkout v3.0.53
git format-patch --stdout v3.0.52 > $incrPath/3.0/3.0.0052-0053.patch
git checkout v3.0.54
git format-patch --stdout v3.0.53 > $incrPath/3.0/3.0.0053-0054.patch
git checkout v3.0.55
git format-patch --stdout v3.0.54 > $incrPath/3.0/3.0.0054-0055.patch
git checkout v3.0.56
git format-patch --stdout v3.0.55 > $incrPath/3.0/3.0.0055-0056.patch
git checkout v3.0.57
git format-patch --stdout v3.0.56 > $incrPath/3.0/3.0.0056-0057.patch
git checkout v3.0.58
git format-patch --stdout v3.0.57 > $incrPath/3.0/3.0.0057-0058.patch
git checkout v3.0.59
git format-patch --stdout v3.0.58 > $incrPath/3.0/3.0.0058-0059.patch
git checkout v3.0.60
git format-patch --stdout v3.0.59 > $incrPath/3.0/3.0.0059-0060.patch
git checkout v3.0.61
git format-patch --stdout v3.0.60 > $incrPath/3.0/3.0.0060-0061.patch
git checkout v3.0.62
git format-patch --stdout v3.0.61 > $incrPath/3.0/3.0.0061-0062.patch
git checkout v3.0.63
git format-patch --stdout v3.0.62 > $incrPath/3.0/3.0.0062-0063.patch
git checkout v3.0.64
git format-patch --stdout v3.0.63 > $incrPath/3.0/3.0.0063-0064.patch
git checkout v3.0.65
git format-patch --stdout v3.0.64 > $incrPath/3.0/3.0.0064-0065.patch
git checkout v3.0.66
git format-patch --stdout v3.0.65 > $incrPath/3.0/3.0.0065-0066.patch
git checkout v3.0.67
git format-patch --stdout v3.0.66 > $incrPath/3.0/3.0.0066-0067.patch
git checkout v3.0.68
git format-patch --stdout v3.0.67 > $incrPath/3.0/3.0.0067-0068.patch
git checkout v3.0.69
git format-patch --stdout v3.0.68 > $incrPath/3.0/3.0.0068-0069.patch
git checkout v3.0.70
git format-patch --stdout v3.0.69 > $incrPath/3.0/3.0.0069-0070.patch
git checkout v3.0.71
git format-patch --stdout v3.0.70 > $incrPath/3.0/3.0.0070-0071.patch
git checkout v3.0.72
git format-patch --stdout v3.0.71 > $incrPath/3.0/3.0.0071-0072.patch
git checkout v3.0.73
git format-patch --stdout v3.0.72 > $incrPath/3.0/3.0.0072-0073.patch
git checkout v3.0.74
git format-patch --stdout v3.0.73 > $incrPath/3.0/3.0.0073-0074.patch
git checkout v3.0.75
git format-patch --stdout v3.0.74 > $incrPath/3.0/3.0.0074-0075.patch
git checkout v3.0.76
git format-patch --stdout v3.0.75 > $incrPath/3.0/3.0.0075-0076.patch
git checkout v3.0.77
git format-patch --stdout v3.0.76 > $incrPath/3.0/3.0.0076-0077.patch
git checkout v3.0.78
git format-patch --stdout v3.0.77 > $incrPath/3.0/3.0.0077-0078.patch
git checkout v3.0.79
git format-patch --stdout v3.0.78 > $incrPath/3.0/3.0.0078-0079.patch
git checkout v3.0.80
git format-patch --stdout v3.0.79 > $incrPath/3.0/3.0.0079-0080.patch
git checkout v3.0.81
git format-patch --stdout v3.0.80 > $incrPath/3.0/3.0.0080-0081.patch
git checkout v3.0.82
git format-patch --stdout v3.0.81 > $incrPath/3.0/3.0.0081-0082.patch
git checkout v3.0.83
git format-patch --stdout v3.0.82 > $incrPath/3.0/3.0.0082-0083.patch
git checkout v3.0.84
git format-patch --stdout v3.0.83 > $incrPath/3.0/3.0.0083-0084.patch
git checkout v3.0.85
git format-patch --stdout v3.0.84 > $incrPath/3.0/3.0.0084-0085.patch
git checkout v3.0.86
git format-patch --stdout v3.0.85 > $incrPath/3.0/3.0.0085-0086.patch
git checkout v3.0.87
git format-patch --stdout v3.0.86 > $incrPath/3.0/3.0.0086-0087.patch
git checkout v3.0.88
git format-patch --stdout v3.0.87 > $incrPath/3.0/3.0.0087-0088.patch
git checkout v3.0.89
git format-patch --stdout v3.0.88 > $incrPath/3.0/3.0.0088-0089.patch
git checkout v3.0.90
git format-patch --stdout v3.0.89 > $incrPath/3.0/3.0.0089-0090.patch
git checkout v3.0.91
git format-patch --stdout v3.0.90 > $incrPath/3.0/3.0.0090-0091.patch
git checkout v3.0.92
git format-patch --stdout v3.0.91 > $incrPath/3.0/3.0.0091-0092.patch
git checkout v3.0.93
git format-patch --stdout v3.0.92 > $incrPath/3.0/3.0.0092-0093.patch
git checkout v3.0.94
git format-patch --stdout v3.0.93 > $incrPath/3.0/3.0.0093-0094.patch
git checkout v3.0.95
git format-patch --stdout v3.0.94 > $incrPath/3.0/3.0.0094-0095.patch
git checkout v3.0.96
git format-patch --stdout v3.0.95 > $incrPath/3.0/3.0.0095-0096.patch
git checkout v3.0.97
git format-patch --stdout v3.0.96 > $incrPath/3.0/3.0.0096-0097.patch
git checkout v3.0.98
git format-patch --stdout v3.0.97 > $incrPath/3.0/3.0.0097-0098.patch
git checkout v3.0.99
git format-patch --stdout v3.0.98 > $incrPath/3.0/3.0.0098-0099.patch
git checkout v3.0.100
git format-patch --stdout v3.0.99 > $incrPath/3.0/3.0.0099-0100.patch
git checkout v3.0.101
git format-patch --stdout v3.0.100 > $incrPath/3.0/3.0.0100-0101.patch
