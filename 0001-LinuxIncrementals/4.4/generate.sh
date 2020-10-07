#!/bin/bash
git checkout v4.4.2
git format-patch --stdout v4.4.1 > $incrPath/4.4/4.4.0001-0002.patch
git checkout v4.4.3
git format-patch --stdout v4.4.2 > $incrPath/4.4/4.4.0002-0003.patch
git checkout v4.4.4
git format-patch --stdout v4.4.3 > $incrPath/4.4/4.4.0003-0004.patch
git checkout v4.4.5
git format-patch --stdout v4.4.4 > $incrPath/4.4/4.4.0004-0005.patch
git checkout v4.4.6
git format-patch --stdout v4.4.5 > $incrPath/4.4/4.4.0005-0006.patch
git checkout v4.4.7
git format-patch --stdout v4.4.6 > $incrPath/4.4/4.4.0006-0007.patch
git checkout v4.4.8
git format-patch --stdout v4.4.7 > $incrPath/4.4/4.4.0007-0008.patch
git checkout v4.4.9
git format-patch --stdout v4.4.8 > $incrPath/4.4/4.4.0008-0009.patch
git checkout v4.4.10
git format-patch --stdout v4.4.9 > $incrPath/4.4/4.4.0009-0010.patch
git checkout v4.4.11
git format-patch --stdout v4.4.10 > $incrPath/4.4/4.4.0010-0011.patch
git checkout v4.4.12
git format-patch --stdout v4.4.11 > $incrPath/4.4/4.4.0011-0012.patch
git checkout v4.4.13
git format-patch --stdout v4.4.12 > $incrPath/4.4/4.4.0012-0013.patch
git checkout v4.4.14
git format-patch --stdout v4.4.13 > $incrPath/4.4/4.4.0013-0014.patch
git checkout v4.4.15
git format-patch --stdout v4.4.14 > $incrPath/4.4/4.4.0014-0015.patch
git checkout v4.4.16
git format-patch --stdout v4.4.15 > $incrPath/4.4/4.4.0015-0016.patch
git checkout v4.4.17
git format-patch --stdout v4.4.16 > $incrPath/4.4/4.4.0016-0017.patch
git checkout v4.4.18
git format-patch --stdout v4.4.17 > $incrPath/4.4/4.4.0017-0018.patch
git checkout v4.4.19
git format-patch --stdout v4.4.18 > $incrPath/4.4/4.4.0018-0019.patch
git checkout v4.4.20
git format-patch --stdout v4.4.19 > $incrPath/4.4/4.4.0019-0020.patch
git checkout v4.4.21
git format-patch --stdout v4.4.20 > $incrPath/4.4/4.4.0020-0021.patch
git checkout v4.4.22
git format-patch --stdout v4.4.21 > $incrPath/4.4/4.4.0021-0022.patch
git checkout v4.4.23
git format-patch --stdout v4.4.22 > $incrPath/4.4/4.4.0022-0023.patch
git checkout v4.4.24
git format-patch --stdout v4.4.23 > $incrPath/4.4/4.4.0023-0024.patch
git checkout v4.4.25
git format-patch --stdout v4.4.24 > $incrPath/4.4/4.4.0024-0025.patch
git checkout v4.4.26
git format-patch --stdout v4.4.25 > $incrPath/4.4/4.4.0025-0026.patch
git checkout v4.4.27
git format-patch --stdout v4.4.26 > $incrPath/4.4/4.4.0026-0027.patch
git checkout v4.4.28
git format-patch --stdout v4.4.27 > $incrPath/4.4/4.4.0027-0028.patch
git checkout v4.4.29
git format-patch --stdout v4.4.28 > $incrPath/4.4/4.4.0028-0029.patch
git checkout v4.4.30
git format-patch --stdout v4.4.29 > $incrPath/4.4/4.4.0029-0030.patch
git checkout v4.4.31
git format-patch --stdout v4.4.30 > $incrPath/4.4/4.4.0030-0031.patch
git checkout v4.4.32
git format-patch --stdout v4.4.31 > $incrPath/4.4/4.4.0031-0032.patch
git checkout v4.4.33
git format-patch --stdout v4.4.32 > $incrPath/4.4/4.4.0032-0033.patch
git checkout v4.4.34
git format-patch --stdout v4.4.33 > $incrPath/4.4/4.4.0033-0034.patch
git checkout v4.4.35
git format-patch --stdout v4.4.34 > $incrPath/4.4/4.4.0034-0035.patch
git checkout v4.4.36
git format-patch --stdout v4.4.35 > $incrPath/4.4/4.4.0035-0036.patch
git checkout v4.4.37
git format-patch --stdout v4.4.36 > $incrPath/4.4/4.4.0036-0037.patch
git checkout v4.4.38
git format-patch --stdout v4.4.37 > $incrPath/4.4/4.4.0037-0038.patch
git checkout v4.4.39
git format-patch --stdout v4.4.38 > $incrPath/4.4/4.4.0038-0039.patch
git checkout v4.4.40
git format-patch --stdout v4.4.39 > $incrPath/4.4/4.4.0039-0040.patch
git checkout v4.4.41
git format-patch --stdout v4.4.40 > $incrPath/4.4/4.4.0040-0041.patch
git checkout v4.4.42
git format-patch --stdout v4.4.41 > $incrPath/4.4/4.4.0041-0042.patch
git checkout v4.4.43
git format-patch --stdout v4.4.42 > $incrPath/4.4/4.4.0042-0043.patch
git checkout v4.4.44
git format-patch --stdout v4.4.43 > $incrPath/4.4/4.4.0043-0044.patch
git checkout v4.4.45
git format-patch --stdout v4.4.44 > $incrPath/4.4/4.4.0044-0045.patch
git checkout v4.4.46
git format-patch --stdout v4.4.45 > $incrPath/4.4/4.4.0045-0046.patch
git checkout v4.4.47
git format-patch --stdout v4.4.46 > $incrPath/4.4/4.4.0046-0047.patch
git checkout v4.4.48
git format-patch --stdout v4.4.47 > $incrPath/4.4/4.4.0047-0048.patch
git checkout v4.4.49
git format-patch --stdout v4.4.48 > $incrPath/4.4/4.4.0048-0049.patch
git checkout v4.4.50
git format-patch --stdout v4.4.49 > $incrPath/4.4/4.4.0049-0050.patch
git checkout v4.4.51
git format-patch --stdout v4.4.50 > $incrPath/4.4/4.4.0050-0051.patch
git checkout v4.4.52
git format-patch --stdout v4.4.51 > $incrPath/4.4/4.4.0051-0052.patch
git checkout v4.4.53
git format-patch --stdout v4.4.52 > $incrPath/4.4/4.4.0052-0053.patch
git checkout v4.4.54
git format-patch --stdout v4.4.53 > $incrPath/4.4/4.4.0053-0054.patch
git checkout v4.4.55
git format-patch --stdout v4.4.54 > $incrPath/4.4/4.4.0054-0055.patch
git checkout v4.4.56
git format-patch --stdout v4.4.55 > $incrPath/4.4/4.4.0055-0056.patch
git checkout v4.4.57
git format-patch --stdout v4.4.56 > $incrPath/4.4/4.4.0056-0057.patch
git checkout v4.4.58
git format-patch --stdout v4.4.57 > $incrPath/4.4/4.4.0057-0058.patch
git checkout v4.4.59
git format-patch --stdout v4.4.58 > $incrPath/4.4/4.4.0058-0059.patch
git checkout v4.4.60
git format-patch --stdout v4.4.59 > $incrPath/4.4/4.4.0059-0060.patch
git checkout v4.4.61
git format-patch --stdout v4.4.60 > $incrPath/4.4/4.4.0060-0061.patch
git checkout v4.4.62
git format-patch --stdout v4.4.61 > $incrPath/4.4/4.4.0061-0062.patch
git checkout v4.4.63
git format-patch --stdout v4.4.62 > $incrPath/4.4/4.4.0062-0063.patch
git checkout v4.4.64
git format-patch --stdout v4.4.63 > $incrPath/4.4/4.4.0063-0064.patch
git checkout v4.4.65
git format-patch --stdout v4.4.64 > $incrPath/4.4/4.4.0064-0065.patch
git checkout v4.4.66
git format-patch --stdout v4.4.65 > $incrPath/4.4/4.4.0065-0066.patch
git checkout v4.4.67
git format-patch --stdout v4.4.66 > $incrPath/4.4/4.4.0066-0067.patch
git checkout v4.4.68
git format-patch --stdout v4.4.67 > $incrPath/4.4/4.4.0067-0068.patch
git checkout v4.4.69
git format-patch --stdout v4.4.68 > $incrPath/4.4/4.4.0068-0069.patch
git checkout v4.4.70
git format-patch --stdout v4.4.69 > $incrPath/4.4/4.4.0069-0070.patch
git checkout v4.4.71
git format-patch --stdout v4.4.70 > $incrPath/4.4/4.4.0070-0071.patch
git checkout v4.4.72
git format-patch --stdout v4.4.71 > $incrPath/4.4/4.4.0071-0072.patch
git checkout v4.4.73
git format-patch --stdout v4.4.72 > $incrPath/4.4/4.4.0072-0073.patch
git checkout v4.4.74
git format-patch --stdout v4.4.73 > $incrPath/4.4/4.4.0073-0074.patch
git checkout v4.4.75
git format-patch --stdout v4.4.74 > $incrPath/4.4/4.4.0074-0075.patch
git checkout v4.4.76
git format-patch --stdout v4.4.75 > $incrPath/4.4/4.4.0075-0076.patch
git checkout v4.4.77
git format-patch --stdout v4.4.76 > $incrPath/4.4/4.4.0076-0077.patch
git checkout v4.4.78
git format-patch --stdout v4.4.77 > $incrPath/4.4/4.4.0077-0078.patch
git checkout v4.4.79
git format-patch --stdout v4.4.78 > $incrPath/4.4/4.4.0078-0079.patch
git checkout v4.4.80
git format-patch --stdout v4.4.79 > $incrPath/4.4/4.4.0079-0080.patch
git checkout v4.4.81
git format-patch --stdout v4.4.80 > $incrPath/4.4/4.4.0080-0081.patch
git checkout v4.4.82
git format-patch --stdout v4.4.81 > $incrPath/4.4/4.4.0081-0082.patch
git checkout v4.4.83
git format-patch --stdout v4.4.82 > $incrPath/4.4/4.4.0082-0083.patch
git checkout v4.4.84
git format-patch --stdout v4.4.83 > $incrPath/4.4/4.4.0083-0084.patch
git checkout v4.4.85
git format-patch --stdout v4.4.84 > $incrPath/4.4/4.4.0084-0085.patch
git checkout v4.4.86
git format-patch --stdout v4.4.85 > $incrPath/4.4/4.4.0085-0086.patch
git checkout v4.4.87
git format-patch --stdout v4.4.86 > $incrPath/4.4/4.4.0086-0087.patch
git checkout v4.4.88
git format-patch --stdout v4.4.87 > $incrPath/4.4/4.4.0087-0088.patch
git checkout v4.4.89
git format-patch --stdout v4.4.88 > $incrPath/4.4/4.4.0088-0089.patch
git checkout v4.4.90
git format-patch --stdout v4.4.89 > $incrPath/4.4/4.4.0089-0090.patch
git checkout v4.4.91
git format-patch --stdout v4.4.90 > $incrPath/4.4/4.4.0090-0091.patch
git checkout v4.4.92
git format-patch --stdout v4.4.91 > $incrPath/4.4/4.4.0091-0092.patch
git checkout v4.4.93
git format-patch --stdout v4.4.92 > $incrPath/4.4/4.4.0092-0093.patch
git checkout v4.4.94
git format-patch --stdout v4.4.93 > $incrPath/4.4/4.4.0093-0094.patch
git checkout v4.4.95
git format-patch --stdout v4.4.94 > $incrPath/4.4/4.4.0094-0095.patch
git checkout v4.4.96
git format-patch --stdout v4.4.95 > $incrPath/4.4/4.4.0095-0096.patch
git checkout v4.4.97
git format-patch --stdout v4.4.96 > $incrPath/4.4/4.4.0096-0097.patch
git checkout v4.4.98
git format-patch --stdout v4.4.97 > $incrPath/4.4/4.4.0097-0098.patch
git checkout v4.4.99
git format-patch --stdout v4.4.98 > $incrPath/4.4/4.4.0098-0099.patch
git checkout v4.4.100
git format-patch --stdout v4.4.99 > $incrPath/4.4/4.4.0099-0100.patch
git checkout v4.4.101
git format-patch --stdout v4.4.100 > $incrPath/4.4/4.4.0100-0101.patch
git checkout v4.4.102
git format-patch --stdout v4.4.101 > $incrPath/4.4/4.4.0101-0102.patch
git checkout v4.4.103
git format-patch --stdout v4.4.102 > $incrPath/4.4/4.4.0102-0103.patch
git checkout v4.4.104
git format-patch --stdout v4.4.103 > $incrPath/4.4/4.4.0103-0104.patch
git checkout v4.4.105
git format-patch --stdout v4.4.104 > $incrPath/4.4/4.4.0104-0105.patch
git checkout v4.4.106
git format-patch --stdout v4.4.105 > $incrPath/4.4/4.4.0105-0106.patch
git checkout v4.4.107
git format-patch --stdout v4.4.106 > $incrPath/4.4/4.4.0106-0107.patch
git checkout v4.4.108
git format-patch --stdout v4.4.107 > $incrPath/4.4/4.4.0107-0108.patch
git checkout v4.4.109
git format-patch --stdout v4.4.108 > $incrPath/4.4/4.4.0108-0109.patch
git checkout v4.4.110
git format-patch --stdout v4.4.109 > $incrPath/4.4/4.4.0109-0110.patch
git checkout v4.4.111
git format-patch --stdout v4.4.110 > $incrPath/4.4/4.4.0110-0111.patch
git checkout v4.4.112
git format-patch --stdout v4.4.111 > $incrPath/4.4/4.4.0111-0112.patch
git checkout v4.4.113
git format-patch --stdout v4.4.112 > $incrPath/4.4/4.4.0112-0113.patch
git checkout v4.4.114
git format-patch --stdout v4.4.113 > $incrPath/4.4/4.4.0113-0114.patch
git checkout v4.4.115
git format-patch --stdout v4.4.114 > $incrPath/4.4/4.4.0114-0115.patch
git checkout v4.4.116
git format-patch --stdout v4.4.115 > $incrPath/4.4/4.4.0115-0116.patch
git checkout v4.4.117
git format-patch --stdout v4.4.116 > $incrPath/4.4/4.4.0116-0117.patch
git checkout v4.4.118
git format-patch --stdout v4.4.117 > $incrPath/4.4/4.4.0117-0118.patch
git checkout v4.4.119
git format-patch --stdout v4.4.118 > $incrPath/4.4/4.4.0118-0119.patch
git checkout v4.4.120
git format-patch --stdout v4.4.119 > $incrPath/4.4/4.4.0119-0120.patch
git checkout v4.4.121
git format-patch --stdout v4.4.120 > $incrPath/4.4/4.4.0120-0121.patch
git checkout v4.4.122
git format-patch --stdout v4.4.121 > $incrPath/4.4/4.4.0121-0122.patch
git checkout v4.4.123
git format-patch --stdout v4.4.122 > $incrPath/4.4/4.4.0122-0123.patch
git checkout v4.4.124
git format-patch --stdout v4.4.123 > $incrPath/4.4/4.4.0123-0124.patch
git checkout v4.4.125
git format-patch --stdout v4.4.124 > $incrPath/4.4/4.4.0124-0125.patch
git checkout v4.4.126
git format-patch --stdout v4.4.125 > $incrPath/4.4/4.4.0125-0126.patch
git checkout v4.4.127
git format-patch --stdout v4.4.126 > $incrPath/4.4/4.4.0126-0127.patch
git checkout v4.4.128
git format-patch --stdout v4.4.127 > $incrPath/4.4/4.4.0127-0128.patch
git checkout v4.4.129
git format-patch --stdout v4.4.128 > $incrPath/4.4/4.4.0128-0129.patch
git checkout v4.4.130
git format-patch --stdout v4.4.129 > $incrPath/4.4/4.4.0129-0130.patch
git checkout v4.4.131
git format-patch --stdout v4.4.130 > $incrPath/4.4/4.4.0130-0131.patch
git checkout v4.4.132
git format-patch --stdout v4.4.131 > $incrPath/4.4/4.4.0131-0132.patch
git checkout v4.4.133
git format-patch --stdout v4.4.132 > $incrPath/4.4/4.4.0132-0133.patch
git checkout v4.4.134
git format-patch --stdout v4.4.133 > $incrPath/4.4/4.4.0133-0134.patch
git checkout v4.4.135
git format-patch --stdout v4.4.134 > $incrPath/4.4/4.4.0134-0135.patch
git checkout v4.4.136
git format-patch --stdout v4.4.135 > $incrPath/4.4/4.4.0135-0136.patch
git checkout v4.4.137
git format-patch --stdout v4.4.136 > $incrPath/4.4/4.4.0136-0137.patch
git checkout v4.4.138
git format-patch --stdout v4.4.137 > $incrPath/4.4/4.4.0137-0138.patch
git checkout v4.4.139
git format-patch --stdout v4.4.138 > $incrPath/4.4/4.4.0138-0139.patch
git checkout v4.4.140
git format-patch --stdout v4.4.139 > $incrPath/4.4/4.4.0139-0140.patch
git checkout v4.4.141
git format-patch --stdout v4.4.140 > $incrPath/4.4/4.4.0140-0141.patch
git checkout v4.4.142
git format-patch --stdout v4.4.141 > $incrPath/4.4/4.4.0141-0142.patch
git checkout v4.4.143
git format-patch --stdout v4.4.142 > $incrPath/4.4/4.4.0142-0143.patch
git checkout v4.4.144
git format-patch --stdout v4.4.143 > $incrPath/4.4/4.4.0143-0144.patch
git checkout v4.4.145
git format-patch --stdout v4.4.144 > $incrPath/4.4/4.4.0144-0145.patch
git checkout v4.4.146
git format-patch --stdout v4.4.145 > $incrPath/4.4/4.4.0145-0146.patch
git checkout v4.4.147
git format-patch --stdout v4.4.146 > $incrPath/4.4/4.4.0146-0147.patch
git checkout v4.4.148
git format-patch --stdout v4.4.147 > $incrPath/4.4/4.4.0147-0148.patch
git checkout v4.4.149
git format-patch --stdout v4.4.148 > $incrPath/4.4/4.4.0148-0149.patch
git checkout v4.4.150
git format-patch --stdout v4.4.149 > $incrPath/4.4/4.4.0149-0150.patch
git checkout v4.4.151
git format-patch --stdout v4.4.150 > $incrPath/4.4/4.4.0150-0151.patch
git checkout v4.4.152
git format-patch --stdout v4.4.151 > $incrPath/4.4/4.4.0151-0152.patch
git checkout v4.4.153
git format-patch --stdout v4.4.152 > $incrPath/4.4/4.4.0152-0153.patch
git checkout v4.4.154
git format-patch --stdout v4.4.153 > $incrPath/4.4/4.4.0153-0154.patch
git checkout v4.4.155
git format-patch --stdout v4.4.154 > $incrPath/4.4/4.4.0154-0155.patch
git checkout v4.4.156
git format-patch --stdout v4.4.155 > $incrPath/4.4/4.4.0155-0156.patch
git checkout v4.4.157
git format-patch --stdout v4.4.156 > $incrPath/4.4/4.4.0156-0157.patch
git checkout v4.4.158
git format-patch --stdout v4.4.157 > $incrPath/4.4/4.4.0157-0158.patch
git checkout v4.4.159
git format-patch --stdout v4.4.158 > $incrPath/4.4/4.4.0158-0159.patch
git checkout v4.4.160
git format-patch --stdout v4.4.159 > $incrPath/4.4/4.4.0159-0160.patch
git checkout v4.4.161
git format-patch --stdout v4.4.160 > $incrPath/4.4/4.4.0160-0161.patch
git checkout v4.4.162
git format-patch --stdout v4.4.161 > $incrPath/4.4/4.4.0161-0162.patch
git checkout v4.4.163
git format-patch --stdout v4.4.162 > $incrPath/4.4/4.4.0162-0163.patch
git checkout v4.4.164
git format-patch --stdout v4.4.163 > $incrPath/4.4/4.4.0163-0164.patch
git checkout v4.4.165
git format-patch --stdout v4.4.164 > $incrPath/4.4/4.4.0164-0165.patch
git checkout v4.4.166
git format-patch --stdout v4.4.165 > $incrPath/4.4/4.4.0165-0166.patch
git checkout v4.4.167
git format-patch --stdout v4.4.166 > $incrPath/4.4/4.4.0166-0167.patch
git checkout v4.4.168
git format-patch --stdout v4.4.167 > $incrPath/4.4/4.4.0167-0168.patch
git checkout v4.4.169
git format-patch --stdout v4.4.168 > $incrPath/4.4/4.4.0168-0169.patch
git checkout v4.4.170
git format-patch --stdout v4.4.169 > $incrPath/4.4/4.4.0169-0170.patch
git checkout v4.4.171
git format-patch --stdout v4.4.170 > $incrPath/4.4/4.4.0170-0171.patch
git checkout v4.4.172
git format-patch --stdout v4.4.171 > $incrPath/4.4/4.4.0171-0172.patch
git checkout v4.4.173
git format-patch --stdout v4.4.172 > $incrPath/4.4/4.4.0172-0173.patch
git checkout v4.4.174
git format-patch --stdout v4.4.173 > $incrPath/4.4/4.4.0173-0174.patch
git checkout v4.4.175
git format-patch --stdout v4.4.174 > $incrPath/4.4/4.4.0174-0175.patch
git checkout v4.4.176
git format-patch --stdout v4.4.175 > $incrPath/4.4/4.4.0175-0176.patch
git checkout v4.4.177
git format-patch --stdout v4.4.176 > $incrPath/4.4/4.4.0176-0177.patch
git checkout v4.4.178
git format-patch --stdout v4.4.177 > $incrPath/4.4/4.4.0177-0178.patch
git checkout v4.4.179
git format-patch --stdout v4.4.178 > $incrPath/4.4/4.4.0178-0179.patch
git checkout v4.4.180
git format-patch --stdout v4.4.179 > $incrPath/4.4/4.4.0179-0180.patch
git checkout v4.4.181
git format-patch --stdout v4.4.180 > $incrPath/4.4/4.4.0180-0181.patch
git checkout v4.4.182
git format-patch --stdout v4.4.181 > $incrPath/4.4/4.4.0181-0182.patch
git checkout v4.4.183
git format-patch --stdout v4.4.182 > $incrPath/4.4/4.4.0182-0183.patch
git checkout v4.4.184
git format-patch --stdout v4.4.183 > $incrPath/4.4/4.4.0183-0184.patch
git checkout v4.4.185
git format-patch --stdout v4.4.184 > $incrPath/4.4/4.4.0184-0185.patch
git checkout v4.4.186
git format-patch --stdout v4.4.185 > $incrPath/4.4/4.4.0185-0186.patch
git checkout v4.4.187
git format-patch --stdout v4.4.186 > $incrPath/4.4/4.4.0186-0187.patch
git checkout v4.4.188
git format-patch --stdout v4.4.187 > $incrPath/4.4/4.4.0187-0188.patch
git checkout v4.4.189
git format-patch --stdout v4.4.188 > $incrPath/4.4/4.4.0188-0189.patch
git checkout v4.4.190
git format-patch --stdout v4.4.189 > $incrPath/4.4/4.4.0189-0190.patch
git checkout v4.4.191
git format-patch --stdout v4.4.190 > $incrPath/4.4/4.4.0190-0191.patch
git checkout v4.4.192
git format-patch --stdout v4.4.191 > $incrPath/4.4/4.4.0191-0192.patch
git checkout v4.4.193
git format-patch --stdout v4.4.192 > $incrPath/4.4/4.4.0192-0193.patch
git checkout v4.4.194
git format-patch --stdout v4.4.193 > $incrPath/4.4/4.4.0193-0194.patch
git checkout v4.4.195
git format-patch --stdout v4.4.194 > $incrPath/4.4/4.4.0194-0195.patch
git checkout v4.4.196
git format-patch --stdout v4.4.195 > $incrPath/4.4/4.4.0195-0196.patch
git checkout v4.4.197
git format-patch --stdout v4.4.196 > $incrPath/4.4/4.4.0196-0197.patch
git checkout v4.4.198
git format-patch --stdout v4.4.197 > $incrPath/4.4/4.4.0197-0198.patch
git checkout v4.4.199
git format-patch --stdout v4.4.198 > $incrPath/4.4/4.4.0198-0199.patch
git checkout v4.4.200
git format-patch --stdout v4.4.199 > $incrPath/4.4/4.4.0199-0200.patch
git checkout v4.4.201
git format-patch --stdout v4.4.200 > $incrPath/4.4/4.4.0200-0201.patch
git checkout v4.4.202
git format-patch --stdout v4.4.201 > $incrPath/4.4/4.4.0201-0202.patch
git checkout v4.4.203
git format-patch --stdout v4.4.202 > $incrPath/4.4/4.4.0202-0203.patch
git checkout v4.4.204
git format-patch --stdout v4.4.203 > $incrPath/4.4/4.4.0203-0204.patch
git checkout v4.4.205
git format-patch --stdout v4.4.204 > $incrPath/4.4/4.4.0204-0205.patch
git checkout v4.4.206
git format-patch --stdout v4.4.205 > $incrPath/4.4/4.4.0205-0206.patch
git checkout v4.4.207
git format-patch --stdout v4.4.206 > $incrPath/4.4/4.4.0206-0207.patch
git checkout v4.4.208
git format-patch --stdout v4.4.207 > $incrPath/4.4/4.4.0207-0208.patch
git checkout v4.4.209
git format-patch --stdout v4.4.208 > $incrPath/4.4/4.4.0208-0209.patch
git checkout v4.4.210
git format-patch --stdout v4.4.209 > $incrPath/4.4/4.4.0209-0210.patch
git checkout v4.4.211
git format-patch --stdout v4.4.210 > $incrPath/4.4/4.4.0210-0211.patch
git checkout v4.4.212
git format-patch --stdout v4.4.211 > $incrPath/4.4/4.4.0211-0212.patch
git checkout v4.4.213
git format-patch --stdout v4.4.212 > $incrPath/4.4/4.4.0212-0213.patch
git checkout v4.4.214
git format-patch --stdout v4.4.213 > $incrPath/4.4/4.4.0213-0214.patch
git checkout v4.4.215
git format-patch --stdout v4.4.214 > $incrPath/4.4/4.4.0214-0215.patch
git checkout v4.4.216
git format-patch --stdout v4.4.215 > $incrPath/4.4/4.4.0215-0216.patch
git checkout v4.4.217
git format-patch --stdout v4.4.216 > $incrPath/4.4/4.4.0216-0217.patch
git checkout v4.4.218
git format-patch --stdout v4.4.217 > $incrPath/4.4/4.4.0217-0218.patch
git checkout v4.4.219
git format-patch --stdout v4.4.218 > $incrPath/4.4/4.4.0218-0219.patch
git checkout v4.4.220
git format-patch --stdout v4.4.219 > $incrPath/4.4/4.4.0219-0220.patch
git checkout v4.4.221
git format-patch --stdout v4.4.220 > $incrPath/4.4/4.4.0220-0221.patch
git checkout v4.4.222
git format-patch --stdout v4.4.221 > $incrPath/4.4/4.4.0221-0222.patch
git checkout v4.4.223
git format-patch --stdout v4.4.222 > $incrPath/4.4/4.4.0222-0223.patch
git checkout v4.4.224
git format-patch --stdout v4.4.223 > $incrPath/4.4/4.4.0223-0224.patch
git checkout v4.4.225
git format-patch --stdout v4.4.224 > $incrPath/4.4/4.4.0224-0225.patch
git checkout v4.4.226
git format-patch --stdout v4.4.225 > $incrPath/4.4/4.4.0225-0226.patch
git checkout v4.4.227
git format-patch --stdout v4.4.226 > $incrPath/4.4/4.4.0226-0227.patch
git checkout v4.4.228
git format-patch --stdout v4.4.227 > $incrPath/4.4/4.4.0227-0228.patch
git checkout v4.4.229
git format-patch --stdout v4.4.228 > $incrPath/4.4/4.4.0228-0229.patch
git checkout v4.4.230
git format-patch --stdout v4.4.229 > $incrPath/4.4/4.4.0229-0230.patch
git checkout v4.4.231
git format-patch --stdout v4.4.230 > $incrPath/4.4/4.4.0230-0231.patch
git checkout v4.4.232
git format-patch --stdout v4.4.231 > $incrPath/4.4/4.4.0231-0232.patch
git checkout v4.4.233
git format-patch --stdout v4.4.232 > $incrPath/4.4/4.4.0232-0233.patch
git checkout v4.4.234
git format-patch --stdout v4.4.233 > $incrPath/4.4/4.4.0233-0234.patch
git checkout v4.4.235
git format-patch --stdout v4.4.234 > $incrPath/4.4/4.4.0234-0235.patch
git checkout v4.4.236
git format-patch --stdout v4.4.235 > $incrPath/4.4/4.4.0235-0236.patch
git checkout v4.4.237
git format-patch --stdout v4.4.236 > $incrPath/4.4/4.4.0236-0237.patch
git checkout v4.4.238
git format-patch --stdout v4.4.237 > $incrPath/4.4/4.4.0237-0238.patch
