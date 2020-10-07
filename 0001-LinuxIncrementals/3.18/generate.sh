#!/bin/bash
git checkout v3.18.2
git format-patch --stdout v3.18.1 > $incrPath/3.18/3.18.0001-0002.patch
git checkout v3.18.3
git format-patch --stdout v3.18.2 > $incrPath/3.18/3.18.0002-0003.patch
git checkout v3.18.4
git format-patch --stdout v3.18.3 > $incrPath/3.18/3.18.0003-0004.patch
git checkout v3.18.5
git format-patch --stdout v3.18.4 > $incrPath/3.18/3.18.0004-0005.patch
git checkout v3.18.6
git format-patch --stdout v3.18.5 > $incrPath/3.18/3.18.0005-0006.patch
git checkout v3.18.7
git format-patch --stdout v3.18.6 > $incrPath/3.18/3.18.0006-0007.patch
git checkout v3.18.8
git format-patch --stdout v3.18.7 > $incrPath/3.18/3.18.0007-0008.patch
git checkout v3.18.9
git format-patch --stdout v3.18.8 > $incrPath/3.18/3.18.0008-0009.patch
git checkout v3.18.10
git format-patch --stdout v3.18.9 > $incrPath/3.18/3.18.0009-0010.patch
git checkout v3.18.11
git format-patch --stdout v3.18.10 > $incrPath/3.18/3.18.0010-0011.patch
git checkout v3.18.12
git format-patch --stdout v3.18.11 > $incrPath/3.18/3.18.0011-0012.patch
git checkout v3.18.13
git format-patch --stdout v3.18.12 > $incrPath/3.18/3.18.0012-0013.patch
git checkout v3.18.14
git format-patch --stdout v3.18.13 > $incrPath/3.18/3.18.0013-0014.patch
git checkout v3.18.15
git format-patch --stdout v3.18.14 > $incrPath/3.18/3.18.0014-0015.patch
git checkout v3.18.16
git format-patch --stdout v3.18.15 > $incrPath/3.18/3.18.0015-0016.patch
git checkout v3.18.17
git format-patch --stdout v3.18.16 > $incrPath/3.18/3.18.0016-0017.patch
git checkout v3.18.18
git format-patch --stdout v3.18.17 > $incrPath/3.18/3.18.0017-0018.patch
git checkout v3.18.19
git format-patch --stdout v3.18.18 > $incrPath/3.18/3.18.0018-0019.patch
git checkout v3.18.20
git format-patch --stdout v3.18.19 > $incrPath/3.18/3.18.0019-0020.patch
git checkout v3.18.21
git format-patch --stdout v3.18.20 > $incrPath/3.18/3.18.0020-0021.patch
git checkout v3.18.22
git format-patch --stdout v3.18.21 > $incrPath/3.18/3.18.0021-0022.patch
git checkout v3.18.23
git format-patch --stdout v3.18.22 > $incrPath/3.18/3.18.0022-0023.patch
git checkout v3.18.24
git format-patch --stdout v3.18.23 > $incrPath/3.18/3.18.0023-0024.patch
git checkout v3.18.25
git format-patch --stdout v3.18.24 > $incrPath/3.18/3.18.0024-0025.patch
git checkout v3.18.26
git format-patch --stdout v3.18.25 > $incrPath/3.18/3.18.0025-0026.patch
git checkout v3.18.27
git format-patch --stdout v3.18.26 > $incrPath/3.18/3.18.0026-0027.patch
git checkout v3.18.28
git format-patch --stdout v3.18.27 > $incrPath/3.18/3.18.0027-0028.patch
git checkout v3.18.29
git format-patch --stdout v3.18.28 > $incrPath/3.18/3.18.0028-0029.patch
git checkout v3.18.30
git format-patch --stdout v3.18.29 > $incrPath/3.18/3.18.0029-0030.patch
git checkout v3.18.31
git format-patch --stdout v3.18.30 > $incrPath/3.18/3.18.0030-0031.patch
git checkout v3.18.32
git format-patch --stdout v3.18.31 > $incrPath/3.18/3.18.0031-0032.patch
git checkout v3.18.33
git format-patch --stdout v3.18.32 > $incrPath/3.18/3.18.0032-0033.patch
git checkout v3.18.34
git format-patch --stdout v3.18.33 > $incrPath/3.18/3.18.0033-0034.patch
git checkout v3.18.35
git format-patch --stdout v3.18.34 > $incrPath/3.18/3.18.0034-0035.patch
git checkout v3.18.36
git format-patch --stdout v3.18.35 > $incrPath/3.18/3.18.0035-0036.patch
git checkout v3.18.37
git format-patch --stdout v3.18.36 > $incrPath/3.18/3.18.0036-0037.patch
git checkout v3.18.38
git format-patch --stdout v3.18.37 > $incrPath/3.18/3.18.0037-0038.patch
git checkout v3.18.39
git format-patch --stdout v3.18.38 > $incrPath/3.18/3.18.0038-0039.patch
git checkout v3.18.40
git format-patch --stdout v3.18.39 > $incrPath/3.18/3.18.0039-0040.patch
git checkout v3.18.41
git format-patch --stdout v3.18.40 > $incrPath/3.18/3.18.0040-0041.patch
git checkout v3.18.42
git format-patch --stdout v3.18.41 > $incrPath/3.18/3.18.0041-0042.patch
git checkout v3.18.43
git format-patch --stdout v3.18.42 > $incrPath/3.18/3.18.0042-0043.patch
git checkout v3.18.44
git format-patch --stdout v3.18.43 > $incrPath/3.18/3.18.0043-0044.patch
git checkout v3.18.45
git format-patch --stdout v3.18.44 > $incrPath/3.18/3.18.0044-0045.patch
git checkout v3.18.46
git format-patch --stdout v3.18.45 > $incrPath/3.18/3.18.0045-0046.patch
git checkout v3.18.47
git format-patch --stdout v3.18.46 > $incrPath/3.18/3.18.0046-0047.patch
git checkout v3.18.48
git format-patch --stdout v3.18.47 > $incrPath/3.18/3.18.0047-0048.patch
git checkout v3.18.49
git format-patch --stdout v3.18.48 > $incrPath/3.18/3.18.0048-0049.patch
git checkout v3.18.50
git format-patch --stdout v3.18.49 > $incrPath/3.18/3.18.0049-0050.patch
git checkout v3.18.51
git format-patch --stdout v3.18.50 > $incrPath/3.18/3.18.0050-0051.patch
git checkout v3.18.52
git format-patch --stdout v3.18.51 > $incrPath/3.18/3.18.0051-0052.patch
git checkout v3.18.53
git format-patch --stdout v3.18.52 > $incrPath/3.18/3.18.0052-0053.patch
git checkout v3.18.54
git format-patch --stdout v3.18.53 > $incrPath/3.18/3.18.0053-0054.patch
git checkout v3.18.55
git format-patch --stdout v3.18.54 > $incrPath/3.18/3.18.0054-0055.patch
git checkout v3.18.56
git format-patch --stdout v3.18.55 > $incrPath/3.18/3.18.0055-0056.patch
git checkout v3.18.57
git format-patch --stdout v3.18.56 > $incrPath/3.18/3.18.0056-0057.patch
git checkout v3.18.58
git format-patch --stdout v3.18.57 > $incrPath/3.18/3.18.0057-0058.patch
git checkout v3.18.59
git format-patch --stdout v3.18.58 > $incrPath/3.18/3.18.0058-0059.patch
git checkout v3.18.60
git format-patch --stdout v3.18.59 > $incrPath/3.18/3.18.0059-0060.patch
git checkout v3.18.61
git format-patch --stdout v3.18.60 > $incrPath/3.18/3.18.0060-0061.patch
git checkout v3.18.62
git format-patch --stdout v3.18.61 > $incrPath/3.18/3.18.0061-0062.patch
git checkout v3.18.63
git format-patch --stdout v3.18.62 > $incrPath/3.18/3.18.0062-0063.patch
git checkout v3.18.64
git format-patch --stdout v3.18.63 > $incrPath/3.18/3.18.0063-0064.patch
git checkout v3.18.65
git format-patch --stdout v3.18.64 > $incrPath/3.18/3.18.0064-0065.patch
git checkout v3.18.66
git format-patch --stdout v3.18.65 > $incrPath/3.18/3.18.0065-0066.patch
git checkout v3.18.67
git format-patch --stdout v3.18.66 > $incrPath/3.18/3.18.0066-0067.patch
git checkout v3.18.68
git format-patch --stdout v3.18.67 > $incrPath/3.18/3.18.0067-0068.patch
git checkout v3.18.69
git format-patch --stdout v3.18.68 > $incrPath/3.18/3.18.0068-0069.patch
git checkout v3.18.70
git format-patch --stdout v3.18.69 > $incrPath/3.18/3.18.0069-0070.patch
git checkout v3.18.71
git format-patch --stdout v3.18.70 > $incrPath/3.18/3.18.0070-0071.patch
git checkout v3.18.72
git format-patch --stdout v3.18.71 > $incrPath/3.18/3.18.0071-0072.patch
git checkout v3.18.73
git format-patch --stdout v3.18.72 > $incrPath/3.18/3.18.0072-0073.patch
git checkout v3.18.74
git format-patch --stdout v3.18.73 > $incrPath/3.18/3.18.0073-0074.patch
git checkout v3.18.75
git format-patch --stdout v3.18.74 > $incrPath/3.18/3.18.0074-0075.patch
git checkout v3.18.76
git format-patch --stdout v3.18.75 > $incrPath/3.18/3.18.0075-0076.patch
git checkout v3.18.77
git format-patch --stdout v3.18.76 > $incrPath/3.18/3.18.0076-0077.patch
git checkout v3.18.78
git format-patch --stdout v3.18.77 > $incrPath/3.18/3.18.0077-0078.patch
git checkout v3.18.79
git format-patch --stdout v3.18.78 > $incrPath/3.18/3.18.0078-0079.patch
git checkout v3.18.80
git format-patch --stdout v3.18.79 > $incrPath/3.18/3.18.0079-0080.patch
git checkout v3.18.81
git format-patch --stdout v3.18.80 > $incrPath/3.18/3.18.0080-0081.patch
git checkout v3.18.82
git format-patch --stdout v3.18.81 > $incrPath/3.18/3.18.0081-0082.patch
git checkout v3.18.83
git format-patch --stdout v3.18.82 > $incrPath/3.18/3.18.0082-0083.patch
git checkout v3.18.84
git format-patch --stdout v3.18.83 > $incrPath/3.18/3.18.0083-0084.patch
git checkout v3.18.85
git format-patch --stdout v3.18.84 > $incrPath/3.18/3.18.0084-0085.patch
git checkout v3.18.86
git format-patch --stdout v3.18.85 > $incrPath/3.18/3.18.0085-0086.patch
git checkout v3.18.87
git format-patch --stdout v3.18.86 > $incrPath/3.18/3.18.0086-0087.patch
git checkout v3.18.88
git format-patch --stdout v3.18.87 > $incrPath/3.18/3.18.0087-0088.patch
git checkout v3.18.89
git format-patch --stdout v3.18.88 > $incrPath/3.18/3.18.0088-0089.patch
git checkout v3.18.90
git format-patch --stdout v3.18.89 > $incrPath/3.18/3.18.0089-0090.patch
git checkout v3.18.91
git format-patch --stdout v3.18.90 > $incrPath/3.18/3.18.0090-0091.patch
git checkout v3.18.92
git format-patch --stdout v3.18.91 > $incrPath/3.18/3.18.0091-0092.patch
git checkout v3.18.93
git format-patch --stdout v3.18.92 > $incrPath/3.18/3.18.0092-0093.patch
git checkout v3.18.94
git format-patch --stdout v3.18.93 > $incrPath/3.18/3.18.0093-0094.patch
git checkout v3.18.95
git format-patch --stdout v3.18.94 > $incrPath/3.18/3.18.0094-0095.patch
git checkout v3.18.96
git format-patch --stdout v3.18.95 > $incrPath/3.18/3.18.0095-0096.patch
git checkout v3.18.97
git format-patch --stdout v3.18.96 > $incrPath/3.18/3.18.0096-0097.patch
git checkout v3.18.98
git format-patch --stdout v3.18.97 > $incrPath/3.18/3.18.0097-0098.patch
git checkout v3.18.99
git format-patch --stdout v3.18.98 > $incrPath/3.18/3.18.0098-0099.patch
git checkout v3.18.100
git format-patch --stdout v3.18.99 > $incrPath/3.18/3.18.0099-0100.patch
git checkout v3.18.101
git format-patch --stdout v3.18.100 > $incrPath/3.18/3.18.0100-0101.patch
git checkout v3.18.102
git format-patch --stdout v3.18.101 > $incrPath/3.18/3.18.0101-0102.patch
git checkout v3.18.103
git format-patch --stdout v3.18.102 > $incrPath/3.18/3.18.0102-0103.patch
git checkout v3.18.104
git format-patch --stdout v3.18.103 > $incrPath/3.18/3.18.0103-0104.patch
git checkout v3.18.105
git format-patch --stdout v3.18.104 > $incrPath/3.18/3.18.0104-0105.patch
git checkout v3.18.106
git format-patch --stdout v3.18.105 > $incrPath/3.18/3.18.0105-0106.patch
git checkout v3.18.107
git format-patch --stdout v3.18.106 > $incrPath/3.18/3.18.0106-0107.patch
git checkout v3.18.108
git format-patch --stdout v3.18.107 > $incrPath/3.18/3.18.0107-0108.patch
git checkout v3.18.109
git format-patch --stdout v3.18.108 > $incrPath/3.18/3.18.0108-0109.patch
git checkout v3.18.110
git format-patch --stdout v3.18.109 > $incrPath/3.18/3.18.0109-0110.patch
git checkout v3.18.111
git format-patch --stdout v3.18.110 > $incrPath/3.18/3.18.0110-0111.patch
git checkout v3.18.112
git format-patch --stdout v3.18.111 > $incrPath/3.18/3.18.0111-0112.patch
git checkout v3.18.113
git format-patch --stdout v3.18.112 > $incrPath/3.18/3.18.0112-0113.patch
git checkout v3.18.114
git format-patch --stdout v3.18.113 > $incrPath/3.18/3.18.0113-0114.patch
git checkout v3.18.115
git format-patch --stdout v3.18.114 > $incrPath/3.18/3.18.0114-0115.patch
git checkout v3.18.116
git format-patch --stdout v3.18.115 > $incrPath/3.18/3.18.0115-0116.patch
git checkout v3.18.117
git format-patch --stdout v3.18.116 > $incrPath/3.18/3.18.0116-0117.patch
git checkout v3.18.118
git format-patch --stdout v3.18.117 > $incrPath/3.18/3.18.0117-0118.patch
git checkout v3.18.119
git format-patch --stdout v3.18.118 > $incrPath/3.18/3.18.0118-0119.patch
git checkout v3.18.120
git format-patch --stdout v3.18.119 > $incrPath/3.18/3.18.0119-0120.patch
git checkout v3.18.121
git format-patch --stdout v3.18.120 > $incrPath/3.18/3.18.0120-0121.patch
git checkout v3.18.122
git format-patch --stdout v3.18.121 > $incrPath/3.18/3.18.0121-0122.patch
git checkout v3.18.123
git format-patch --stdout v3.18.122 > $incrPath/3.18/3.18.0122-0123.patch
git checkout v3.18.124
git format-patch --stdout v3.18.123 > $incrPath/3.18/3.18.0123-0124.patch
git checkout v3.18.125
git format-patch --stdout v3.18.124 > $incrPath/3.18/3.18.0124-0125.patch
git checkout v3.18.126
git format-patch --stdout v3.18.125 > $incrPath/3.18/3.18.0125-0126.patch
git checkout v3.18.127
git format-patch --stdout v3.18.126 > $incrPath/3.18/3.18.0126-0127.patch
git checkout v3.18.128
git format-patch --stdout v3.18.127 > $incrPath/3.18/3.18.0127-0128.patch
git checkout v3.18.129
git format-patch --stdout v3.18.128 > $incrPath/3.18/3.18.0128-0129.patch
git checkout v3.18.130
git format-patch --stdout v3.18.129 > $incrPath/3.18/3.18.0129-0130.patch
git checkout v3.18.131
git format-patch --stdout v3.18.130 > $incrPath/3.18/3.18.0130-0131.patch
git checkout v3.18.132
git format-patch --stdout v3.18.131 > $incrPath/3.18/3.18.0131-0132.patch
git checkout v3.18.133
git format-patch --stdout v3.18.132 > $incrPath/3.18/3.18.0132-0133.patch
git checkout v3.18.134
git format-patch --stdout v3.18.133 > $incrPath/3.18/3.18.0133-0134.patch
git checkout v3.18.135
git format-patch --stdout v3.18.134 > $incrPath/3.18/3.18.0134-0135.patch
git checkout v3.18.136
git format-patch --stdout v3.18.135 > $incrPath/3.18/3.18.0135-0136.patch
git checkout v3.18.137
git format-patch --stdout v3.18.136 > $incrPath/3.18/3.18.0136-0137.patch
git checkout v3.18.138
git format-patch --stdout v3.18.137 > $incrPath/3.18/3.18.0137-0138.patch
git checkout v3.18.139
git format-patch --stdout v3.18.138 > $incrPath/3.18/3.18.0138-0139.patch
git checkout v3.18.140
git format-patch --stdout v3.18.139 > $incrPath/3.18/3.18.0139-0140.patch
