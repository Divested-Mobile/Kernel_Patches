#!/bin/bash
git checkout v4.19.2
git format-patch --stdout v4.19.1 > $incrPath/4.19/4.19.0001-0002.patch
git checkout v4.19.3
git format-patch --stdout v4.19.2 > $incrPath/4.19/4.19.0002-0003.patch
git checkout v4.19.4
git format-patch --stdout v4.19.3 > $incrPath/4.19/4.19.0003-0004.patch
git checkout v4.19.5
git format-patch --stdout v4.19.4 > $incrPath/4.19/4.19.0004-0005.patch
git checkout v4.19.6
git format-patch --stdout v4.19.5 > $incrPath/4.19/4.19.0005-0006.patch
git checkout v4.19.7
git format-patch --stdout v4.19.6 > $incrPath/4.19/4.19.0006-0007.patch
git checkout v4.19.8
git format-patch --stdout v4.19.7 > $incrPath/4.19/4.19.0007-0008.patch
git checkout v4.19.9
git format-patch --stdout v4.19.8 > $incrPath/4.19/4.19.0008-0009.patch
git checkout v4.19.10
git format-patch --stdout v4.19.9 > $incrPath/4.19/4.19.0009-0010.patch
git checkout v4.19.11
git format-patch --stdout v4.19.10 > $incrPath/4.19/4.19.0010-0011.patch
git checkout v4.19.12
git format-patch --stdout v4.19.11 > $incrPath/4.19/4.19.0011-0012.patch
git checkout v4.19.13
git format-patch --stdout v4.19.12 > $incrPath/4.19/4.19.0012-0013.patch
git checkout v4.19.14
git format-patch --stdout v4.19.13 > $incrPath/4.19/4.19.0013-0014.patch
git checkout v4.19.15
git format-patch --stdout v4.19.14 > $incrPath/4.19/4.19.0014-0015.patch
git checkout v4.19.16
git format-patch --stdout v4.19.15 > $incrPath/4.19/4.19.0015-0016.patch
git checkout v4.19.17
git format-patch --stdout v4.19.16 > $incrPath/4.19/4.19.0016-0017.patch
git checkout v4.19.18
git format-patch --stdout v4.19.17 > $incrPath/4.19/4.19.0017-0018.patch
git checkout v4.19.19
git format-patch --stdout v4.19.18 > $incrPath/4.19/4.19.0018-0019.patch
git checkout v4.19.20
git format-patch --stdout v4.19.19 > $incrPath/4.19/4.19.0019-0020.patch
git checkout v4.19.21
git format-patch --stdout v4.19.20 > $incrPath/4.19/4.19.0020-0021.patch
git checkout v4.19.22
git format-patch --stdout v4.19.21 > $incrPath/4.19/4.19.0021-0022.patch
git checkout v4.19.23
git format-patch --stdout v4.19.22 > $incrPath/4.19/4.19.0022-0023.patch
git checkout v4.19.24
git format-patch --stdout v4.19.23 > $incrPath/4.19/4.19.0023-0024.patch
git checkout v4.19.25
git format-patch --stdout v4.19.24 > $incrPath/4.19/4.19.0024-0025.patch
git checkout v4.19.26
git format-patch --stdout v4.19.25 > $incrPath/4.19/4.19.0025-0026.patch
git checkout v4.19.27
git format-patch --stdout v4.19.26 > $incrPath/4.19/4.19.0026-0027.patch
git checkout v4.19.28
git format-patch --stdout v4.19.27 > $incrPath/4.19/4.19.0027-0028.patch
git checkout v4.19.29
git format-patch --stdout v4.19.28 > $incrPath/4.19/4.19.0028-0029.patch
git checkout v4.19.30
git format-patch --stdout v4.19.29 > $incrPath/4.19/4.19.0029-0030.patch
git checkout v4.19.31
git format-patch --stdout v4.19.30 > $incrPath/4.19/4.19.0030-0031.patch
git checkout v4.19.32
git format-patch --stdout v4.19.31 > $incrPath/4.19/4.19.0031-0032.patch
git checkout v4.19.33
git format-patch --stdout v4.19.32 > $incrPath/4.19/4.19.0032-0033.patch
git checkout v4.19.34
git format-patch --stdout v4.19.33 > $incrPath/4.19/4.19.0033-0034.patch
git checkout v4.19.35
git format-patch --stdout v4.19.34 > $incrPath/4.19/4.19.0034-0035.patch
git checkout v4.19.36
git format-patch --stdout v4.19.35 > $incrPath/4.19/4.19.0035-0036.patch
git checkout v4.19.37
git format-patch --stdout v4.19.36 > $incrPath/4.19/4.19.0036-0037.patch
git checkout v4.19.38
git format-patch --stdout v4.19.37 > $incrPath/4.19/4.19.0037-0038.patch
git checkout v4.19.39
git format-patch --stdout v4.19.38 > $incrPath/4.19/4.19.0038-0039.patch
git checkout v4.19.40
git format-patch --stdout v4.19.39 > $incrPath/4.19/4.19.0039-0040.patch
git checkout v4.19.41
git format-patch --stdout v4.19.40 > $incrPath/4.19/4.19.0040-0041.patch
git checkout v4.19.42
git format-patch --stdout v4.19.41 > $incrPath/4.19/4.19.0041-0042.patch
git checkout v4.19.43
git format-patch --stdout v4.19.42 > $incrPath/4.19/4.19.0042-0043.patch
git checkout v4.19.44
git format-patch --stdout v4.19.43 > $incrPath/4.19/4.19.0043-0044.patch
git checkout v4.19.45
git format-patch --stdout v4.19.44 > $incrPath/4.19/4.19.0044-0045.patch
git checkout v4.19.46
git format-patch --stdout v4.19.45 > $incrPath/4.19/4.19.0045-0046.patch
git checkout v4.19.47
git format-patch --stdout v4.19.46 > $incrPath/4.19/4.19.0046-0047.patch
git checkout v4.19.48
git format-patch --stdout v4.19.47 > $incrPath/4.19/4.19.0047-0048.patch
git checkout v4.19.49
git format-patch --stdout v4.19.48 > $incrPath/4.19/4.19.0048-0049.patch
git checkout v4.19.50
git format-patch --stdout v4.19.49 > $incrPath/4.19/4.19.0049-0050.patch
git checkout v4.19.51
git format-patch --stdout v4.19.50 > $incrPath/4.19/4.19.0050-0051.patch
git checkout v4.19.52
git format-patch --stdout v4.19.51 > $incrPath/4.19/4.19.0051-0052.patch
git checkout v4.19.53
git format-patch --stdout v4.19.52 > $incrPath/4.19/4.19.0052-0053.patch
git checkout v4.19.54
git format-patch --stdout v4.19.53 > $incrPath/4.19/4.19.0053-0054.patch
git checkout v4.19.55
git format-patch --stdout v4.19.54 > $incrPath/4.19/4.19.0054-0055.patch
git checkout v4.19.56
git format-patch --stdout v4.19.55 > $incrPath/4.19/4.19.0055-0056.patch
git checkout v4.19.57
git format-patch --stdout v4.19.56 > $incrPath/4.19/4.19.0056-0057.patch
git checkout v4.19.58
git format-patch --stdout v4.19.57 > $incrPath/4.19/4.19.0057-0058.patch
git checkout v4.19.59
git format-patch --stdout v4.19.58 > $incrPath/4.19/4.19.0058-0059.patch
git checkout v4.19.60
git format-patch --stdout v4.19.59 > $incrPath/4.19/4.19.0059-0060.patch
git checkout v4.19.61
git format-patch --stdout v4.19.60 > $incrPath/4.19/4.19.0060-0061.patch
git checkout v4.19.62
git format-patch --stdout v4.19.61 > $incrPath/4.19/4.19.0061-0062.patch
git checkout v4.19.63
git format-patch --stdout v4.19.62 > $incrPath/4.19/4.19.0062-0063.patch
git checkout v4.19.64
git format-patch --stdout v4.19.63 > $incrPath/4.19/4.19.0063-0064.patch
git checkout v4.19.65
git format-patch --stdout v4.19.64 > $incrPath/4.19/4.19.0064-0065.patch
git checkout v4.19.66
git format-patch --stdout v4.19.65 > $incrPath/4.19/4.19.0065-0066.patch
git checkout v4.19.67
git format-patch --stdout v4.19.66 > $incrPath/4.19/4.19.0066-0067.patch
git checkout v4.19.68
git format-patch --stdout v4.19.67 > $incrPath/4.19/4.19.0067-0068.patch
git checkout v4.19.69
git format-patch --stdout v4.19.68 > $incrPath/4.19/4.19.0068-0069.patch
git checkout v4.19.70
git format-patch --stdout v4.19.69 > $incrPath/4.19/4.19.0069-0070.patch
git checkout v4.19.71
git format-patch --stdout v4.19.70 > $incrPath/4.19/4.19.0070-0071.patch
git checkout v4.19.72
git format-patch --stdout v4.19.71 > $incrPath/4.19/4.19.0071-0072.patch
git checkout v4.19.73
git format-patch --stdout v4.19.72 > $incrPath/4.19/4.19.0072-0073.patch
git checkout v4.19.74
git format-patch --stdout v4.19.73 > $incrPath/4.19/4.19.0073-0074.patch
git checkout v4.19.75
git format-patch --stdout v4.19.74 > $incrPath/4.19/4.19.0074-0075.patch
git checkout v4.19.76
git format-patch --stdout v4.19.75 > $incrPath/4.19/4.19.0075-0076.patch
git checkout v4.19.77
git format-patch --stdout v4.19.76 > $incrPath/4.19/4.19.0076-0077.patch
git checkout v4.19.78
git format-patch --stdout v4.19.77 > $incrPath/4.19/4.19.0077-0078.patch
git checkout v4.19.79
git format-patch --stdout v4.19.78 > $incrPath/4.19/4.19.0078-0079.patch
git checkout v4.19.80
git format-patch --stdout v4.19.79 > $incrPath/4.19/4.19.0079-0080.patch
git checkout v4.19.81
git format-patch --stdout v4.19.80 > $incrPath/4.19/4.19.0080-0081.patch
git checkout v4.19.82
git format-patch --stdout v4.19.81 > $incrPath/4.19/4.19.0081-0082.patch
git checkout v4.19.83
git format-patch --stdout v4.19.82 > $incrPath/4.19/4.19.0082-0083.patch
git checkout v4.19.84
git format-patch --stdout v4.19.83 > $incrPath/4.19/4.19.0083-0084.patch
git checkout v4.19.85
git format-patch --stdout v4.19.84 > $incrPath/4.19/4.19.0084-0085.patch
git checkout v4.19.86
git format-patch --stdout v4.19.85 > $incrPath/4.19/4.19.0085-0086.patch
git checkout v4.19.87
git format-patch --stdout v4.19.86 > $incrPath/4.19/4.19.0086-0087.patch
git checkout v4.19.88
git format-patch --stdout v4.19.87 > $incrPath/4.19/4.19.0087-0088.patch
git checkout v4.19.89
git format-patch --stdout v4.19.88 > $incrPath/4.19/4.19.0088-0089.patch
git checkout v4.19.90
git format-patch --stdout v4.19.89 > $incrPath/4.19/4.19.0089-0090.patch
git checkout v4.19.91
git format-patch --stdout v4.19.90 > $incrPath/4.19/4.19.0090-0091.patch
git checkout v4.19.92
git format-patch --stdout v4.19.91 > $incrPath/4.19/4.19.0091-0092.patch
git checkout v4.19.93
git format-patch --stdout v4.19.92 > $incrPath/4.19/4.19.0092-0093.patch
git checkout v4.19.94
git format-patch --stdout v4.19.93 > $incrPath/4.19/4.19.0093-0094.patch
git checkout v4.19.95
git format-patch --stdout v4.19.94 > $incrPath/4.19/4.19.0094-0095.patch
git checkout v4.19.96
git format-patch --stdout v4.19.95 > $incrPath/4.19/4.19.0095-0096.patch
git checkout v4.19.97
git format-patch --stdout v4.19.96 > $incrPath/4.19/4.19.0096-0097.patch
git checkout v4.19.98
git format-patch --stdout v4.19.97 > $incrPath/4.19/4.19.0097-0098.patch
git checkout v4.19.99
git format-patch --stdout v4.19.98 > $incrPath/4.19/4.19.0098-0099.patch
git checkout v4.19.100
git format-patch --stdout v4.19.99 > $incrPath/4.19/4.19.0099-0100.patch
git checkout v4.19.101
git format-patch --stdout v4.19.100 > $incrPath/4.19/4.19.0100-0101.patch
git checkout v4.19.102
git format-patch --stdout v4.19.101 > $incrPath/4.19/4.19.0101-0102.patch
git checkout v4.19.103
git format-patch --stdout v4.19.102 > $incrPath/4.19/4.19.0102-0103.patch
git checkout v4.19.104
git format-patch --stdout v4.19.103 > $incrPath/4.19/4.19.0103-0104.patch
git checkout v4.19.105
git format-patch --stdout v4.19.104 > $incrPath/4.19/4.19.0104-0105.patch
git checkout v4.19.106
git format-patch --stdout v4.19.105 > $incrPath/4.19/4.19.0105-0106.patch
git checkout v4.19.107
git format-patch --stdout v4.19.106 > $incrPath/4.19/4.19.0106-0107.patch
git checkout v4.19.108
git format-patch --stdout v4.19.107 > $incrPath/4.19/4.19.0107-0108.patch
git checkout v4.19.109
git format-patch --stdout v4.19.108 > $incrPath/4.19/4.19.0108-0109.patch
git checkout v4.19.110
git format-patch --stdout v4.19.109 > $incrPath/4.19/4.19.0109-0110.patch
git checkout v4.19.111
git format-patch --stdout v4.19.110 > $incrPath/4.19/4.19.0110-0111.patch
git checkout v4.19.112
git format-patch --stdout v4.19.111 > $incrPath/4.19/4.19.0111-0112.patch
git checkout v4.19.113
git format-patch --stdout v4.19.112 > $incrPath/4.19/4.19.0112-0113.patch
git checkout v4.19.114
git format-patch --stdout v4.19.113 > $incrPath/4.19/4.19.0113-0114.patch
git checkout v4.19.115
git format-patch --stdout v4.19.114 > $incrPath/4.19/4.19.0114-0115.patch
git checkout v4.19.116
git format-patch --stdout v4.19.115 > $incrPath/4.19/4.19.0115-0116.patch
git checkout v4.19.117
git format-patch --stdout v4.19.116 > $incrPath/4.19/4.19.0116-0117.patch
git checkout v4.19.118
git format-patch --stdout v4.19.117 > $incrPath/4.19/4.19.0117-0118.patch
git checkout v4.19.119
git format-patch --stdout v4.19.118 > $incrPath/4.19/4.19.0118-0119.patch
git checkout v4.19.120
git format-patch --stdout v4.19.119 > $incrPath/4.19/4.19.0119-0120.patch
git checkout v4.19.121
git format-patch --stdout v4.19.120 > $incrPath/4.19/4.19.0120-0121.patch
git checkout v4.19.122
git format-patch --stdout v4.19.121 > $incrPath/4.19/4.19.0121-0122.patch
git checkout v4.19.123
git format-patch --stdout v4.19.122 > $incrPath/4.19/4.19.0122-0123.patch
git checkout v4.19.124
git format-patch --stdout v4.19.123 > $incrPath/4.19/4.19.0123-0124.patch
git checkout v4.19.125
git format-patch --stdout v4.19.124 > $incrPath/4.19/4.19.0124-0125.patch
git checkout v4.19.126
git format-patch --stdout v4.19.125 > $incrPath/4.19/4.19.0125-0126.patch
git checkout v4.19.127
git format-patch --stdout v4.19.126 > $incrPath/4.19/4.19.0126-0127.patch
git checkout v4.19.128
git format-patch --stdout v4.19.127 > $incrPath/4.19/4.19.0127-0128.patch
git checkout v4.19.129
git format-patch --stdout v4.19.128 > $incrPath/4.19/4.19.0128-0129.patch
git checkout v4.19.130
git format-patch --stdout v4.19.129 > $incrPath/4.19/4.19.0129-0130.patch
git checkout v4.19.131
git format-patch --stdout v4.19.130 > $incrPath/4.19/4.19.0130-0131.patch
git checkout v4.19.132
git format-patch --stdout v4.19.131 > $incrPath/4.19/4.19.0131-0132.patch
git checkout v4.19.133
git format-patch --stdout v4.19.132 > $incrPath/4.19/4.19.0132-0133.patch
git checkout v4.19.134
git format-patch --stdout v4.19.133 > $incrPath/4.19/4.19.0133-0134.patch
git checkout v4.19.135
git format-patch --stdout v4.19.134 > $incrPath/4.19/4.19.0134-0135.patch
git checkout v4.19.136
git format-patch --stdout v4.19.135 > $incrPath/4.19/4.19.0135-0136.patch
git checkout v4.19.137
git format-patch --stdout v4.19.136 > $incrPath/4.19/4.19.0136-0137.patch
git checkout v4.19.138
git format-patch --stdout v4.19.137 > $incrPath/4.19/4.19.0137-0138.patch
git checkout v4.19.139
git format-patch --stdout v4.19.138 > $incrPath/4.19/4.19.0138-0139.patch
git checkout v4.19.140
git format-patch --stdout v4.19.139 > $incrPath/4.19/4.19.0139-0140.patch
git checkout v4.19.141
git format-patch --stdout v4.19.140 > $incrPath/4.19/4.19.0140-0141.patch
git checkout v4.19.142
git format-patch --stdout v4.19.141 > $incrPath/4.19/4.19.0141-0142.patch
git checkout v4.19.143
git format-patch --stdout v4.19.142 > $incrPath/4.19/4.19.0142-0143.patch
git checkout v4.19.144
git format-patch --stdout v4.19.143 > $incrPath/4.19/4.19.0143-0144.patch
git checkout v4.19.145
git format-patch --stdout v4.19.144 > $incrPath/4.19/4.19.0144-0145.patch
git checkout v4.19.146
git format-patch --stdout v4.19.145 > $incrPath/4.19/4.19.0145-0146.patch
git checkout v4.19.147
git format-patch --stdout v4.19.146 > $incrPath/4.19/4.19.0146-0147.patch
git checkout v4.19.148
git format-patch --stdout v4.19.147 > $incrPath/4.19/4.19.0147-0148.patch
git checkout v4.19.149
git format-patch --stdout v4.19.148 > $incrPath/4.19/4.19.0148-0149.patch
