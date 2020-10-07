#!/bin/bash
git checkout v3.10.2
git format-patch --stdout v3.10.1 > $incrPath/3.10/3.10.0001-0002.patch
git checkout v3.10.3
git format-patch --stdout v3.10.2 > $incrPath/3.10/3.10.0002-0003.patch
git checkout v3.10.4
git format-patch --stdout v3.10.3 > $incrPath/3.10/3.10.0003-0004.patch
git checkout v3.10.5
git format-patch --stdout v3.10.4 > $incrPath/3.10/3.10.0004-0005.patch
git checkout v3.10.6
git format-patch --stdout v3.10.5 > $incrPath/3.10/3.10.0005-0006.patch
git checkout v3.10.7
git format-patch --stdout v3.10.6 > $incrPath/3.10/3.10.0006-0007.patch
git checkout v3.10.8
git format-patch --stdout v3.10.7 > $incrPath/3.10/3.10.0007-0008.patch
git checkout v3.10.9
git format-patch --stdout v3.10.8 > $incrPath/3.10/3.10.0008-0009.patch
git checkout v3.10.10
git format-patch --stdout v3.10.9 > $incrPath/3.10/3.10.0009-0010.patch
git checkout v3.10.11
git format-patch --stdout v3.10.10 > $incrPath/3.10/3.10.0010-0011.patch
git checkout v3.10.12
git format-patch --stdout v3.10.11 > $incrPath/3.10/3.10.0011-0012.patch
git checkout v3.10.13
git format-patch --stdout v3.10.12 > $incrPath/3.10/3.10.0012-0013.patch
git checkout v3.10.14
git format-patch --stdout v3.10.13 > $incrPath/3.10/3.10.0013-0014.patch
git checkout v3.10.15
git format-patch --stdout v3.10.14 > $incrPath/3.10/3.10.0014-0015.patch
git checkout v3.10.16
git format-patch --stdout v3.10.15 > $incrPath/3.10/3.10.0015-0016.patch
git checkout v3.10.17
git format-patch --stdout v3.10.16 > $incrPath/3.10/3.10.0016-0017.patch
git checkout v3.10.18
git format-patch --stdout v3.10.17 > $incrPath/3.10/3.10.0017-0018.patch
git checkout v3.10.19
git format-patch --stdout v3.10.18 > $incrPath/3.10/3.10.0018-0019.patch
git checkout v3.10.20
git format-patch --stdout v3.10.19 > $incrPath/3.10/3.10.0019-0020.patch
git checkout v3.10.21
git format-patch --stdout v3.10.20 > $incrPath/3.10/3.10.0020-0021.patch
git checkout v3.10.22
git format-patch --stdout v3.10.21 > $incrPath/3.10/3.10.0021-0022.patch
git checkout v3.10.23
git format-patch --stdout v3.10.22 > $incrPath/3.10/3.10.0022-0023.patch
git checkout v3.10.24
git format-patch --stdout v3.10.23 > $incrPath/3.10/3.10.0023-0024.patch
git checkout v3.10.25
git format-patch --stdout v3.10.24 > $incrPath/3.10/3.10.0024-0025.patch
git checkout v3.10.26
git format-patch --stdout v3.10.25 > $incrPath/3.10/3.10.0025-0026.patch
git checkout v3.10.27
git format-patch --stdout v3.10.26 > $incrPath/3.10/3.10.0026-0027.patch
git checkout v3.10.28
git format-patch --stdout v3.10.27 > $incrPath/3.10/3.10.0027-0028.patch
git checkout v3.10.29
git format-patch --stdout v3.10.28 > $incrPath/3.10/3.10.0028-0029.patch
git checkout v3.10.30
git format-patch --stdout v3.10.29 > $incrPath/3.10/3.10.0029-0030.patch
git checkout v3.10.31
git format-patch --stdout v3.10.30 > $incrPath/3.10/3.10.0030-0031.patch
git checkout v3.10.32
git format-patch --stdout v3.10.31 > $incrPath/3.10/3.10.0031-0032.patch
git checkout v3.10.33
git format-patch --stdout v3.10.32 > $incrPath/3.10/3.10.0032-0033.patch
git checkout v3.10.34
git format-patch --stdout v3.10.33 > $incrPath/3.10/3.10.0033-0034.patch
git checkout v3.10.35
git format-patch --stdout v3.10.34 > $incrPath/3.10/3.10.0034-0035.patch
git checkout v3.10.36
git format-patch --stdout v3.10.35 > $incrPath/3.10/3.10.0035-0036.patch
git checkout v3.10.37
git format-patch --stdout v3.10.36 > $incrPath/3.10/3.10.0036-0037.patch
git checkout v3.10.38
git format-patch --stdout v3.10.37 > $incrPath/3.10/3.10.0037-0038.patch
git checkout v3.10.39
git format-patch --stdout v3.10.38 > $incrPath/3.10/3.10.0038-0039.patch
git checkout v3.10.40
git format-patch --stdout v3.10.39 > $incrPath/3.10/3.10.0039-0040.patch
git checkout v3.10.41
git format-patch --stdout v3.10.40 > $incrPath/3.10/3.10.0040-0041.patch
git checkout v3.10.42
git format-patch --stdout v3.10.41 > $incrPath/3.10/3.10.0041-0042.patch
git checkout v3.10.43
git format-patch --stdout v3.10.42 > $incrPath/3.10/3.10.0042-0043.patch
git checkout v3.10.44
git format-patch --stdout v3.10.43 > $incrPath/3.10/3.10.0043-0044.patch
git checkout v3.10.45
git format-patch --stdout v3.10.44 > $incrPath/3.10/3.10.0044-0045.patch
git checkout v3.10.46
git format-patch --stdout v3.10.45 > $incrPath/3.10/3.10.0045-0046.patch
git checkout v3.10.47
git format-patch --stdout v3.10.46 > $incrPath/3.10/3.10.0046-0047.patch
git checkout v3.10.48
git format-patch --stdout v3.10.47 > $incrPath/3.10/3.10.0047-0048.patch
git checkout v3.10.49
git format-patch --stdout v3.10.48 > $incrPath/3.10/3.10.0048-0049.patch
git checkout v3.10.50
git format-patch --stdout v3.10.49 > $incrPath/3.10/3.10.0049-0050.patch
git checkout v3.10.51
git format-patch --stdout v3.10.50 > $incrPath/3.10/3.10.0050-0051.patch
git checkout v3.10.52
git format-patch --stdout v3.10.51 > $incrPath/3.10/3.10.0051-0052.patch
git checkout v3.10.53
git format-patch --stdout v3.10.52 > $incrPath/3.10/3.10.0052-0053.patch
git checkout v3.10.54
git format-patch --stdout v3.10.53 > $incrPath/3.10/3.10.0053-0054.patch
git checkout v3.10.55
git format-patch --stdout v3.10.54 > $incrPath/3.10/3.10.0054-0055.patch
git checkout v3.10.56
git format-patch --stdout v3.10.55 > $incrPath/3.10/3.10.0055-0056.patch
git checkout v3.10.57
git format-patch --stdout v3.10.56 > $incrPath/3.10/3.10.0056-0057.patch
git checkout v3.10.58
git format-patch --stdout v3.10.57 > $incrPath/3.10/3.10.0057-0058.patch
git checkout v3.10.59
git format-patch --stdout v3.10.58 > $incrPath/3.10/3.10.0058-0059.patch
git checkout v3.10.60
git format-patch --stdout v3.10.59 > $incrPath/3.10/3.10.0059-0060.patch
git checkout v3.10.61
git format-patch --stdout v3.10.60 > $incrPath/3.10/3.10.0060-0061.patch
git checkout v3.10.62
git format-patch --stdout v3.10.61 > $incrPath/3.10/3.10.0061-0062.patch
git checkout v3.10.63
git format-patch --stdout v3.10.62 > $incrPath/3.10/3.10.0062-0063.patch
git checkout v3.10.64
git format-patch --stdout v3.10.63 > $incrPath/3.10/3.10.0063-0064.patch
git checkout v3.10.65
git format-patch --stdout v3.10.64 > $incrPath/3.10/3.10.0064-0065.patch
git checkout v3.10.66
git format-patch --stdout v3.10.65 > $incrPath/3.10/3.10.0065-0066.patch
git checkout v3.10.67
git format-patch --stdout v3.10.66 > $incrPath/3.10/3.10.0066-0067.patch
git checkout v3.10.68
git format-patch --stdout v3.10.67 > $incrPath/3.10/3.10.0067-0068.patch
git checkout v3.10.69
git format-patch --stdout v3.10.68 > $incrPath/3.10/3.10.0068-0069.patch
git checkout v3.10.70
git format-patch --stdout v3.10.69 > $incrPath/3.10/3.10.0069-0070.patch
git checkout v3.10.71
git format-patch --stdout v3.10.70 > $incrPath/3.10/3.10.0070-0071.patch
git checkout v3.10.72
git format-patch --stdout v3.10.71 > $incrPath/3.10/3.10.0071-0072.patch
git checkout v3.10.73
git format-patch --stdout v3.10.72 > $incrPath/3.10/3.10.0072-0073.patch
git checkout v3.10.74
git format-patch --stdout v3.10.73 > $incrPath/3.10/3.10.0073-0074.patch
git checkout v3.10.75
git format-patch --stdout v3.10.74 > $incrPath/3.10/3.10.0074-0075.patch
git checkout v3.10.76
git format-patch --stdout v3.10.75 > $incrPath/3.10/3.10.0075-0076.patch
git checkout v3.10.77
git format-patch --stdout v3.10.76 > $incrPath/3.10/3.10.0076-0077.patch
git checkout v3.10.78
git format-patch --stdout v3.10.77 > $incrPath/3.10/3.10.0077-0078.patch
git checkout v3.10.79
git format-patch --stdout v3.10.78 > $incrPath/3.10/3.10.0078-0079.patch
git checkout v3.10.80
git format-patch --stdout v3.10.79 > $incrPath/3.10/3.10.0079-0080.patch
git checkout v3.10.81
git format-patch --stdout v3.10.80 > $incrPath/3.10/3.10.0080-0081.patch
git checkout v3.10.82
git format-patch --stdout v3.10.81 > $incrPath/3.10/3.10.0081-0082.patch
git checkout v3.10.83
git format-patch --stdout v3.10.82 > $incrPath/3.10/3.10.0082-0083.patch
git checkout v3.10.84
git format-patch --stdout v3.10.83 > $incrPath/3.10/3.10.0083-0084.patch
git checkout v3.10.85
git format-patch --stdout v3.10.84 > $incrPath/3.10/3.10.0084-0085.patch
git checkout v3.10.86
git format-patch --stdout v3.10.85 > $incrPath/3.10/3.10.0085-0086.patch
git checkout v3.10.87
git format-patch --stdout v3.10.86 > $incrPath/3.10/3.10.0086-0087.patch
git checkout v3.10.88
git format-patch --stdout v3.10.87 > $incrPath/3.10/3.10.0087-0088.patch
git checkout v3.10.89
git format-patch --stdout v3.10.88 > $incrPath/3.10/3.10.0088-0089.patch
git checkout v3.10.90
git format-patch --stdout v3.10.89 > $incrPath/3.10/3.10.0089-0090.patch
git checkout v3.10.91
git format-patch --stdout v3.10.90 > $incrPath/3.10/3.10.0090-0091.patch
git checkout v3.10.92
git format-patch --stdout v3.10.91 > $incrPath/3.10/3.10.0091-0092.patch
git checkout v3.10.93
git format-patch --stdout v3.10.92 > $incrPath/3.10/3.10.0092-0093.patch
git checkout v3.10.94
git format-patch --stdout v3.10.93 > $incrPath/3.10/3.10.0093-0094.patch
git checkout v3.10.95
git format-patch --stdout v3.10.94 > $incrPath/3.10/3.10.0094-0095.patch
git checkout v3.10.96
git format-patch --stdout v3.10.95 > $incrPath/3.10/3.10.0095-0096.patch
git checkout v3.10.97
git format-patch --stdout v3.10.96 > $incrPath/3.10/3.10.0096-0097.patch
git checkout v3.10.98
git format-patch --stdout v3.10.97 > $incrPath/3.10/3.10.0097-0098.patch
git checkout v3.10.99
git format-patch --stdout v3.10.98 > $incrPath/3.10/3.10.0098-0099.patch
git checkout v3.10.100
git format-patch --stdout v3.10.99 > $incrPath/3.10/3.10.0099-0100.patch
git checkout v3.10.101
git format-patch --stdout v3.10.100 > $incrPath/3.10/3.10.0100-0101.patch
git checkout v3.10.102
git format-patch --stdout v3.10.101 > $incrPath/3.10/3.10.0101-0102.patch
git checkout v3.10.103
git format-patch --stdout v3.10.102 > $incrPath/3.10/3.10.0102-0103.patch
git checkout v3.10.104
git format-patch --stdout v3.10.103 > $incrPath/3.10/3.10.0103-0104.patch
git checkout v3.10.105
git format-patch --stdout v3.10.104 > $incrPath/3.10/3.10.0104-0105.patch
git checkout v3.10.106
git format-patch --stdout v3.10.105 > $incrPath/3.10/3.10.0105-0106.patch
git checkout v3.10.107
git format-patch --stdout v3.10.106 > $incrPath/3.10/3.10.0106-0107.patch
git checkout v3.10.108
git format-patch --stdout v3.10.107 > $incrPath/3.10/3.10.0107-0108.patch
