#!/bin/bash
git checkout v3.4.2
git format-patch --stdout v3.4.1 > $incrPath/3.4/3.4.0001-0002.patch
git checkout v3.4.3
git format-patch --stdout v3.4.2 > $incrPath/3.4/3.4.0002-0003.patch
git checkout v3.4.4
git format-patch --stdout v3.4.3 > $incrPath/3.4/3.4.0003-0004.patch
git checkout v3.4.5
git format-patch --stdout v3.4.4 > $incrPath/3.4/3.4.0004-0005.patch
git checkout v3.4.6
git format-patch --stdout v3.4.5 > $incrPath/3.4/3.4.0005-0006.patch
git checkout v3.4.7
git format-patch --stdout v3.4.6 > $incrPath/3.4/3.4.0006-0007.patch
git checkout v3.4.8
git format-patch --stdout v3.4.7 > $incrPath/3.4/3.4.0007-0008.patch
git checkout v3.4.9
git format-patch --stdout v3.4.8 > $incrPath/3.4/3.4.0008-0009.patch
git checkout v3.4.10
git format-patch --stdout v3.4.9 > $incrPath/3.4/3.4.0009-0010.patch
git checkout v3.4.11
git format-patch --stdout v3.4.10 > $incrPath/3.4/3.4.0010-0011.patch
git checkout v3.4.12
git format-patch --stdout v3.4.11 > $incrPath/3.4/3.4.0011-0012.patch
git checkout v3.4.13
git format-patch --stdout v3.4.12 > $incrPath/3.4/3.4.0012-0013.patch
git checkout v3.4.14
git format-patch --stdout v3.4.13 > $incrPath/3.4/3.4.0013-0014.patch
git checkout v3.4.15
git format-patch --stdout v3.4.14 > $incrPath/3.4/3.4.0014-0015.patch
git checkout v3.4.16
git format-patch --stdout v3.4.15 > $incrPath/3.4/3.4.0015-0016.patch
git checkout v3.4.17
git format-patch --stdout v3.4.16 > $incrPath/3.4/3.4.0016-0017.patch
git checkout v3.4.18
git format-patch --stdout v3.4.17 > $incrPath/3.4/3.4.0017-0018.patch
git checkout v3.4.19
git format-patch --stdout v3.4.18 > $incrPath/3.4/3.4.0018-0019.patch
git checkout v3.4.20
git format-patch --stdout v3.4.19 > $incrPath/3.4/3.4.0019-0020.patch
git checkout v3.4.21
git format-patch --stdout v3.4.20 > $incrPath/3.4/3.4.0020-0021.patch
git checkout v3.4.22
git format-patch --stdout v3.4.21 > $incrPath/3.4/3.4.0021-0022.patch
git checkout v3.4.23
git format-patch --stdout v3.4.22 > $incrPath/3.4/3.4.0022-0023.patch
git checkout v3.4.24
git format-patch --stdout v3.4.23 > $incrPath/3.4/3.4.0023-0024.patch
git checkout v3.4.25
git format-patch --stdout v3.4.24 > $incrPath/3.4/3.4.0024-0025.patch
git checkout v3.4.26
git format-patch --stdout v3.4.25 > $incrPath/3.4/3.4.0025-0026.patch
git checkout v3.4.27
git format-patch --stdout v3.4.26 > $incrPath/3.4/3.4.0026-0027.patch
git checkout v3.4.28
git format-patch --stdout v3.4.27 > $incrPath/3.4/3.4.0027-0028.patch
git checkout v3.4.29
git format-patch --stdout v3.4.28 > $incrPath/3.4/3.4.0028-0029.patch
git checkout v3.4.30
git format-patch --stdout v3.4.29 > $incrPath/3.4/3.4.0029-0030.patch
git checkout v3.4.31
git format-patch --stdout v3.4.30 > $incrPath/3.4/3.4.0030-0031.patch
git checkout v3.4.32
git format-patch --stdout v3.4.31 > $incrPath/3.4/3.4.0031-0032.patch
git checkout v3.4.33
git format-patch --stdout v3.4.32 > $incrPath/3.4/3.4.0032-0033.patch
git checkout v3.4.34
git format-patch --stdout v3.4.33 > $incrPath/3.4/3.4.0033-0034.patch
git checkout v3.4.35
git format-patch --stdout v3.4.34 > $incrPath/3.4/3.4.0034-0035.patch
git checkout v3.4.36
git format-patch --stdout v3.4.35 > $incrPath/3.4/3.4.0035-0036.patch
git checkout v3.4.37
git format-patch --stdout v3.4.36 > $incrPath/3.4/3.4.0036-0037.patch
git checkout v3.4.38
git format-patch --stdout v3.4.37 > $incrPath/3.4/3.4.0037-0038.patch
git checkout v3.4.39
git format-patch --stdout v3.4.38 > $incrPath/3.4/3.4.0038-0039.patch
git checkout v3.4.40
git format-patch --stdout v3.4.39 > $incrPath/3.4/3.4.0039-0040.patch
git checkout v3.4.41
git format-patch --stdout v3.4.40 > $incrPath/3.4/3.4.0040-0041.patch
git checkout v3.4.42
git format-patch --stdout v3.4.41 > $incrPath/3.4/3.4.0041-0042.patch
git checkout v3.4.43
git format-patch --stdout v3.4.42 > $incrPath/3.4/3.4.0042-0043.patch
git checkout v3.4.44
git format-patch --stdout v3.4.43 > $incrPath/3.4/3.4.0043-0044.patch
git checkout v3.4.45
git format-patch --stdout v3.4.44 > $incrPath/3.4/3.4.0044-0045.patch
git checkout v3.4.46
git format-patch --stdout v3.4.45 > $incrPath/3.4/3.4.0045-0046.patch
git checkout v3.4.47
git format-patch --stdout v3.4.46 > $incrPath/3.4/3.4.0046-0047.patch
git checkout v3.4.48
git format-patch --stdout v3.4.47 > $incrPath/3.4/3.4.0047-0048.patch
git checkout v3.4.49
git format-patch --stdout v3.4.48 > $incrPath/3.4/3.4.0048-0049.patch
git checkout v3.4.50
git format-patch --stdout v3.4.49 > $incrPath/3.4/3.4.0049-0050.patch
git checkout v3.4.51
git format-patch --stdout v3.4.50 > $incrPath/3.4/3.4.0050-0051.patch
git checkout v3.4.52
git format-patch --stdout v3.4.51 > $incrPath/3.4/3.4.0051-0052.patch
git checkout v3.4.53
git format-patch --stdout v3.4.52 > $incrPath/3.4/3.4.0052-0053.patch
git checkout v3.4.54
git format-patch --stdout v3.4.53 > $incrPath/3.4/3.4.0053-0054.patch
git checkout v3.4.55
git format-patch --stdout v3.4.54 > $incrPath/3.4/3.4.0054-0055.patch
git checkout v3.4.56
git format-patch --stdout v3.4.55 > $incrPath/3.4/3.4.0055-0056.patch
git checkout v3.4.57
git format-patch --stdout v3.4.56 > $incrPath/3.4/3.4.0056-0057.patch
git checkout v3.4.58
git format-patch --stdout v3.4.57 > $incrPath/3.4/3.4.0057-0058.patch
git checkout v3.4.59
git format-patch --stdout v3.4.58 > $incrPath/3.4/3.4.0058-0059.patch
git checkout v3.4.60
git format-patch --stdout v3.4.59 > $incrPath/3.4/3.4.0059-0060.patch
git checkout v3.4.61
git format-patch --stdout v3.4.60 > $incrPath/3.4/3.4.0060-0061.patch
git checkout v3.4.62
git format-patch --stdout v3.4.61 > $incrPath/3.4/3.4.0061-0062.patch
git checkout v3.4.63
git format-patch --stdout v3.4.62 > $incrPath/3.4/3.4.0062-0063.patch
git checkout v3.4.64
git format-patch --stdout v3.4.63 > $incrPath/3.4/3.4.0063-0064.patch
git checkout v3.4.65
git format-patch --stdout v3.4.64 > $incrPath/3.4/3.4.0064-0065.patch
git checkout v3.4.66
git format-patch --stdout v3.4.65 > $incrPath/3.4/3.4.0065-0066.patch
git checkout v3.4.67
git format-patch --stdout v3.4.66 > $incrPath/3.4/3.4.0066-0067.patch
git checkout v3.4.68
git format-patch --stdout v3.4.67 > $incrPath/3.4/3.4.0067-0068.patch
git checkout v3.4.69
git format-patch --stdout v3.4.68 > $incrPath/3.4/3.4.0068-0069.patch
git checkout v3.4.70
git format-patch --stdout v3.4.69 > $incrPath/3.4/3.4.0069-0070.patch
git checkout v3.4.71
git format-patch --stdout v3.4.70 > $incrPath/3.4/3.4.0070-0071.patch
git checkout v3.4.72
git format-patch --stdout v3.4.71 > $incrPath/3.4/3.4.0071-0072.patch
git checkout v3.4.73
git format-patch --stdout v3.4.72 > $incrPath/3.4/3.4.0072-0073.patch
git checkout v3.4.74
git format-patch --stdout v3.4.73 > $incrPath/3.4/3.4.0073-0074.patch
git checkout v3.4.75
git format-patch --stdout v3.4.74 > $incrPath/3.4/3.4.0074-0075.patch
git checkout v3.4.76
git format-patch --stdout v3.4.75 > $incrPath/3.4/3.4.0075-0076.patch
git checkout v3.4.77
git format-patch --stdout v3.4.76 > $incrPath/3.4/3.4.0076-0077.patch
git checkout v3.4.78
git format-patch --stdout v3.4.77 > $incrPath/3.4/3.4.0077-0078.patch
git checkout v3.4.79
git format-patch --stdout v3.4.78 > $incrPath/3.4/3.4.0078-0079.patch
git checkout v3.4.80
git format-patch --stdout v3.4.79 > $incrPath/3.4/3.4.0079-0080.patch
git checkout v3.4.81
git format-patch --stdout v3.4.80 > $incrPath/3.4/3.4.0080-0081.patch
git checkout v3.4.82
git format-patch --stdout v3.4.81 > $incrPath/3.4/3.4.0081-0082.patch
git checkout v3.4.83
git format-patch --stdout v3.4.82 > $incrPath/3.4/3.4.0082-0083.patch
git checkout v3.4.84
git format-patch --stdout v3.4.83 > $incrPath/3.4/3.4.0083-0084.patch
git checkout v3.4.85
git format-patch --stdout v3.4.84 > $incrPath/3.4/3.4.0084-0085.patch
git checkout v3.4.86
git format-patch --stdout v3.4.85 > $incrPath/3.4/3.4.0085-0086.patch
git checkout v3.4.87
git format-patch --stdout v3.4.86 > $incrPath/3.4/3.4.0086-0087.patch
git checkout v3.4.88
git format-patch --stdout v3.4.87 > $incrPath/3.4/3.4.0087-0088.patch
git checkout v3.4.89
git format-patch --stdout v3.4.88 > $incrPath/3.4/3.4.0088-0089.patch
git checkout v3.4.90
git format-patch --stdout v3.4.89 > $incrPath/3.4/3.4.0089-0090.patch
git checkout v3.4.91
git format-patch --stdout v3.4.90 > $incrPath/3.4/3.4.0090-0091.patch
git checkout v3.4.92
git format-patch --stdout v3.4.91 > $incrPath/3.4/3.4.0091-0092.patch
git checkout v3.4.93
git format-patch --stdout v3.4.92 > $incrPath/3.4/3.4.0092-0093.patch
git checkout v3.4.94
git format-patch --stdout v3.4.93 > $incrPath/3.4/3.4.0093-0094.patch
git checkout v3.4.95
git format-patch --stdout v3.4.94 > $incrPath/3.4/3.4.0094-0095.patch
git checkout v3.4.96
git format-patch --stdout v3.4.95 > $incrPath/3.4/3.4.0095-0096.patch
git checkout v3.4.97
git format-patch --stdout v3.4.96 > $incrPath/3.4/3.4.0096-0097.patch
git checkout v3.4.98
git format-patch --stdout v3.4.97 > $incrPath/3.4/3.4.0097-0098.patch
git checkout v3.4.99
git format-patch --stdout v3.4.98 > $incrPath/3.4/3.4.0098-0099.patch
git checkout v3.4.100
git format-patch --stdout v3.4.99 > $incrPath/3.4/3.4.0099-0100.patch
git checkout v3.4.101
git format-patch --stdout v3.4.100 > $incrPath/3.4/3.4.0100-0101.patch
git checkout v3.4.102
git format-patch --stdout v3.4.101 > $incrPath/3.4/3.4.0101-0102.patch
git checkout v3.4.103
git format-patch --stdout v3.4.102 > $incrPath/3.4/3.4.0102-0103.patch
git checkout v3.4.104
git format-patch --stdout v3.4.103 > $incrPath/3.4/3.4.0103-0104.patch
git checkout v3.4.105
git format-patch --stdout v3.4.104 > $incrPath/3.4/3.4.0104-0105.patch
git checkout v3.4.106
git format-patch --stdout v3.4.105 > $incrPath/3.4/3.4.0105-0106.patch
git checkout v3.4.107
git format-patch --stdout v3.4.106 > $incrPath/3.4/3.4.0106-0107.patch
git checkout v3.4.108
git format-patch --stdout v3.4.107 > $incrPath/3.4/3.4.0107-0108.patch
git checkout v3.4.109
git format-patch --stdout v3.4.108 > $incrPath/3.4/3.4.0108-0109.patch
git checkout v3.4.110
git format-patch --stdout v3.4.109 > $incrPath/3.4/3.4.0109-0110.patch
git checkout v3.4.111
git format-patch --stdout v3.4.110 > $incrPath/3.4/3.4.0110-0111.patch
git checkout v3.4.112
git format-patch --stdout v3.4.111 > $incrPath/3.4/3.4.0111-0112.patch
git checkout v3.4.113
git format-patch --stdout v3.4.112 > $incrPath/3.4/3.4.0112-0113.patch
