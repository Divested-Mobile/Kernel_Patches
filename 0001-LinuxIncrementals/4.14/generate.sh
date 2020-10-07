#!/bin/bash
git checkout v4.14.2
git format-patch --stdout v4.14.1 > $incrPath/4.14/4.14.0001-0002.patch
git checkout v4.14.3
git format-patch --stdout v4.14.2 > $incrPath/4.14/4.14.0002-0003.patch
git checkout v4.14.4
git format-patch --stdout v4.14.3 > $incrPath/4.14/4.14.0003-0004.patch
git checkout v4.14.5
git format-patch --stdout v4.14.4 > $incrPath/4.14/4.14.0004-0005.patch
git checkout v4.14.6
git format-patch --stdout v4.14.5 > $incrPath/4.14/4.14.0005-0006.patch
git checkout v4.14.7
git format-patch --stdout v4.14.6 > $incrPath/4.14/4.14.0006-0007.patch
git checkout v4.14.8
git format-patch --stdout v4.14.7 > $incrPath/4.14/4.14.0007-0008.patch
git checkout v4.14.9
git format-patch --stdout v4.14.8 > $incrPath/4.14/4.14.0008-0009.patch
git checkout v4.14.10
git format-patch --stdout v4.14.9 > $incrPath/4.14/4.14.0009-0010.patch
git checkout v4.14.11
git format-patch --stdout v4.14.10 > $incrPath/4.14/4.14.0010-0011.patch
git checkout v4.14.12
git format-patch --stdout v4.14.11 > $incrPath/4.14/4.14.0011-0012.patch
git checkout v4.14.13
git format-patch --stdout v4.14.12 > $incrPath/4.14/4.14.0012-0013.patch
git checkout v4.14.14
git format-patch --stdout v4.14.13 > $incrPath/4.14/4.14.0013-0014.patch
git checkout v4.14.15
git format-patch --stdout v4.14.14 > $incrPath/4.14/4.14.0014-0015.patch
git checkout v4.14.16
git format-patch --stdout v4.14.15 > $incrPath/4.14/4.14.0015-0016.patch
git checkout v4.14.17
git format-patch --stdout v4.14.16 > $incrPath/4.14/4.14.0016-0017.patch
git checkout v4.14.18
git format-patch --stdout v4.14.17 > $incrPath/4.14/4.14.0017-0018.patch
git checkout v4.14.19
git format-patch --stdout v4.14.18 > $incrPath/4.14/4.14.0018-0019.patch
git checkout v4.14.20
git format-patch --stdout v4.14.19 > $incrPath/4.14/4.14.0019-0020.patch
git checkout v4.14.21
git format-patch --stdout v4.14.20 > $incrPath/4.14/4.14.0020-0021.patch
git checkout v4.14.22
git format-patch --stdout v4.14.21 > $incrPath/4.14/4.14.0021-0022.patch
git checkout v4.14.23
git format-patch --stdout v4.14.22 > $incrPath/4.14/4.14.0022-0023.patch
git checkout v4.14.24
git format-patch --stdout v4.14.23 > $incrPath/4.14/4.14.0023-0024.patch
git checkout v4.14.25
git format-patch --stdout v4.14.24 > $incrPath/4.14/4.14.0024-0025.patch
git checkout v4.14.26
git format-patch --stdout v4.14.25 > $incrPath/4.14/4.14.0025-0026.patch
git checkout v4.14.27
git format-patch --stdout v4.14.26 > $incrPath/4.14/4.14.0026-0027.patch
git checkout v4.14.28
git format-patch --stdout v4.14.27 > $incrPath/4.14/4.14.0027-0028.patch
git checkout v4.14.29
git format-patch --stdout v4.14.28 > $incrPath/4.14/4.14.0028-0029.patch
git checkout v4.14.30
git format-patch --stdout v4.14.29 > $incrPath/4.14/4.14.0029-0030.patch
git checkout v4.14.31
git format-patch --stdout v4.14.30 > $incrPath/4.14/4.14.0030-0031.patch
git checkout v4.14.32
git format-patch --stdout v4.14.31 > $incrPath/4.14/4.14.0031-0032.patch
git checkout v4.14.33
git format-patch --stdout v4.14.32 > $incrPath/4.14/4.14.0032-0033.patch
git checkout v4.14.34
git format-patch --stdout v4.14.33 > $incrPath/4.14/4.14.0033-0034.patch
git checkout v4.14.35
git format-patch --stdout v4.14.34 > $incrPath/4.14/4.14.0034-0035.patch
git checkout v4.14.36
git format-patch --stdout v4.14.35 > $incrPath/4.14/4.14.0035-0036.patch
git checkout v4.14.37
git format-patch --stdout v4.14.36 > $incrPath/4.14/4.14.0036-0037.patch
git checkout v4.14.38
git format-patch --stdout v4.14.37 > $incrPath/4.14/4.14.0037-0038.patch
git checkout v4.14.39
git format-patch --stdout v4.14.38 > $incrPath/4.14/4.14.0038-0039.patch
git checkout v4.14.40
git format-patch --stdout v4.14.39 > $incrPath/4.14/4.14.0039-0040.patch
git checkout v4.14.41
git format-patch --stdout v4.14.40 > $incrPath/4.14/4.14.0040-0041.patch
git checkout v4.14.42
git format-patch --stdout v4.14.41 > $incrPath/4.14/4.14.0041-0042.patch
git checkout v4.14.43
git format-patch --stdout v4.14.42 > $incrPath/4.14/4.14.0042-0043.patch
git checkout v4.14.44
git format-patch --stdout v4.14.43 > $incrPath/4.14/4.14.0043-0044.patch
git checkout v4.14.45
git format-patch --stdout v4.14.44 > $incrPath/4.14/4.14.0044-0045.patch
git checkout v4.14.46
git format-patch --stdout v4.14.45 > $incrPath/4.14/4.14.0045-0046.patch
git checkout v4.14.47
git format-patch --stdout v4.14.46 > $incrPath/4.14/4.14.0046-0047.patch
git checkout v4.14.48
git format-patch --stdout v4.14.47 > $incrPath/4.14/4.14.0047-0048.patch
git checkout v4.14.49
git format-patch --stdout v4.14.48 > $incrPath/4.14/4.14.0048-0049.patch
git checkout v4.14.50
git format-patch --stdout v4.14.49 > $incrPath/4.14/4.14.0049-0050.patch
git checkout v4.14.51
git format-patch --stdout v4.14.50 > $incrPath/4.14/4.14.0050-0051.patch
git checkout v4.14.52
git format-patch --stdout v4.14.51 > $incrPath/4.14/4.14.0051-0052.patch
git checkout v4.14.53
git format-patch --stdout v4.14.52 > $incrPath/4.14/4.14.0052-0053.patch
git checkout v4.14.54
git format-patch --stdout v4.14.53 > $incrPath/4.14/4.14.0053-0054.patch
git checkout v4.14.55
git format-patch --stdout v4.14.54 > $incrPath/4.14/4.14.0054-0055.patch
git checkout v4.14.56
git format-patch --stdout v4.14.55 > $incrPath/4.14/4.14.0055-0056.patch
git checkout v4.14.57
git format-patch --stdout v4.14.56 > $incrPath/4.14/4.14.0056-0057.patch
git checkout v4.14.58
git format-patch --stdout v4.14.57 > $incrPath/4.14/4.14.0057-0058.patch
git checkout v4.14.59
git format-patch --stdout v4.14.58 > $incrPath/4.14/4.14.0058-0059.patch
git checkout v4.14.60
git format-patch --stdout v4.14.59 > $incrPath/4.14/4.14.0059-0060.patch
git checkout v4.14.61
git format-patch --stdout v4.14.60 > $incrPath/4.14/4.14.0060-0061.patch
git checkout v4.14.62
git format-patch --stdout v4.14.61 > $incrPath/4.14/4.14.0061-0062.patch
git checkout v4.14.63
git format-patch --stdout v4.14.62 > $incrPath/4.14/4.14.0062-0063.patch
git checkout v4.14.64
git format-patch --stdout v4.14.63 > $incrPath/4.14/4.14.0063-0064.patch
git checkout v4.14.65
git format-patch --stdout v4.14.64 > $incrPath/4.14/4.14.0064-0065.patch
git checkout v4.14.66
git format-patch --stdout v4.14.65 > $incrPath/4.14/4.14.0065-0066.patch
git checkout v4.14.67
git format-patch --stdout v4.14.66 > $incrPath/4.14/4.14.0066-0067.patch
git checkout v4.14.68
git format-patch --stdout v4.14.67 > $incrPath/4.14/4.14.0067-0068.patch
git checkout v4.14.69
git format-patch --stdout v4.14.68 > $incrPath/4.14/4.14.0068-0069.patch
git checkout v4.14.70
git format-patch --stdout v4.14.69 > $incrPath/4.14/4.14.0069-0070.patch
git checkout v4.14.71
git format-patch --stdout v4.14.70 > $incrPath/4.14/4.14.0070-0071.patch
git checkout v4.14.72
git format-patch --stdout v4.14.71 > $incrPath/4.14/4.14.0071-0072.patch
git checkout v4.14.73
git format-patch --stdout v4.14.72 > $incrPath/4.14/4.14.0072-0073.patch
git checkout v4.14.74
git format-patch --stdout v4.14.73 > $incrPath/4.14/4.14.0073-0074.patch
git checkout v4.14.75
git format-patch --stdout v4.14.74 > $incrPath/4.14/4.14.0074-0075.patch
git checkout v4.14.76
git format-patch --stdout v4.14.75 > $incrPath/4.14/4.14.0075-0076.patch
git checkout v4.14.77
git format-patch --stdout v4.14.76 > $incrPath/4.14/4.14.0076-0077.patch
git checkout v4.14.78
git format-patch --stdout v4.14.77 > $incrPath/4.14/4.14.0077-0078.patch
git checkout v4.14.79
git format-patch --stdout v4.14.78 > $incrPath/4.14/4.14.0078-0079.patch
git checkout v4.14.80
git format-patch --stdout v4.14.79 > $incrPath/4.14/4.14.0079-0080.patch
git checkout v4.14.81
git format-patch --stdout v4.14.80 > $incrPath/4.14/4.14.0080-0081.patch
git checkout v4.14.82
git format-patch --stdout v4.14.81 > $incrPath/4.14/4.14.0081-0082.patch
git checkout v4.14.83
git format-patch --stdout v4.14.82 > $incrPath/4.14/4.14.0082-0083.patch
git checkout v4.14.84
git format-patch --stdout v4.14.83 > $incrPath/4.14/4.14.0083-0084.patch
git checkout v4.14.85
git format-patch --stdout v4.14.84 > $incrPath/4.14/4.14.0084-0085.patch
git checkout v4.14.86
git format-patch --stdout v4.14.85 > $incrPath/4.14/4.14.0085-0086.patch
git checkout v4.14.87
git format-patch --stdout v4.14.86 > $incrPath/4.14/4.14.0086-0087.patch
git checkout v4.14.88
git format-patch --stdout v4.14.87 > $incrPath/4.14/4.14.0087-0088.patch
git checkout v4.14.89
git format-patch --stdout v4.14.88 > $incrPath/4.14/4.14.0088-0089.patch
git checkout v4.14.90
git format-patch --stdout v4.14.89 > $incrPath/4.14/4.14.0089-0090.patch
git checkout v4.14.91
git format-patch --stdout v4.14.90 > $incrPath/4.14/4.14.0090-0091.patch
git checkout v4.14.92
git format-patch --stdout v4.14.91 > $incrPath/4.14/4.14.0091-0092.patch
git checkout v4.14.93
git format-patch --stdout v4.14.92 > $incrPath/4.14/4.14.0092-0093.patch
git checkout v4.14.94
git format-patch --stdout v4.14.93 > $incrPath/4.14/4.14.0093-0094.patch
git checkout v4.14.95
git format-patch --stdout v4.14.94 > $incrPath/4.14/4.14.0094-0095.patch
git checkout v4.14.96
git format-patch --stdout v4.14.95 > $incrPath/4.14/4.14.0095-0096.patch
git checkout v4.14.97
git format-patch --stdout v4.14.96 > $incrPath/4.14/4.14.0096-0097.patch
git checkout v4.14.98
git format-patch --stdout v4.14.97 > $incrPath/4.14/4.14.0097-0098.patch
git checkout v4.14.99
git format-patch --stdout v4.14.98 > $incrPath/4.14/4.14.0098-0099.patch
git checkout v4.14.100
git format-patch --stdout v4.14.99 > $incrPath/4.14/4.14.0099-0100.patch
git checkout v4.14.101
git format-patch --stdout v4.14.100 > $incrPath/4.14/4.14.0100-0101.patch
git checkout v4.14.102
git format-patch --stdout v4.14.101 > $incrPath/4.14/4.14.0101-0102.patch
git checkout v4.14.103
git format-patch --stdout v4.14.102 > $incrPath/4.14/4.14.0102-0103.patch
git checkout v4.14.104
git format-patch --stdout v4.14.103 > $incrPath/4.14/4.14.0103-0104.patch
git checkout v4.14.105
git format-patch --stdout v4.14.104 > $incrPath/4.14/4.14.0104-0105.patch
git checkout v4.14.106
git format-patch --stdout v4.14.105 > $incrPath/4.14/4.14.0105-0106.patch
git checkout v4.14.107
git format-patch --stdout v4.14.106 > $incrPath/4.14/4.14.0106-0107.patch
git checkout v4.14.108
git format-patch --stdout v4.14.107 > $incrPath/4.14/4.14.0107-0108.patch
git checkout v4.14.109
git format-patch --stdout v4.14.108 > $incrPath/4.14/4.14.0108-0109.patch
git checkout v4.14.110
git format-patch --stdout v4.14.109 > $incrPath/4.14/4.14.0109-0110.patch
git checkout v4.14.111
git format-patch --stdout v4.14.110 > $incrPath/4.14/4.14.0110-0111.patch
git checkout v4.14.112
git format-patch --stdout v4.14.111 > $incrPath/4.14/4.14.0111-0112.patch
git checkout v4.14.113
git format-patch --stdout v4.14.112 > $incrPath/4.14/4.14.0112-0113.patch
git checkout v4.14.114
git format-patch --stdout v4.14.113 > $incrPath/4.14/4.14.0113-0114.patch
git checkout v4.14.115
git format-patch --stdout v4.14.114 > $incrPath/4.14/4.14.0114-0115.patch
git checkout v4.14.116
git format-patch --stdout v4.14.115 > $incrPath/4.14/4.14.0115-0116.patch
git checkout v4.14.117
git format-patch --stdout v4.14.116 > $incrPath/4.14/4.14.0116-0117.patch
git checkout v4.14.118
git format-patch --stdout v4.14.117 > $incrPath/4.14/4.14.0117-0118.patch
git checkout v4.14.119
git format-patch --stdout v4.14.118 > $incrPath/4.14/4.14.0118-0119.patch
git checkout v4.14.120
git format-patch --stdout v4.14.119 > $incrPath/4.14/4.14.0119-0120.patch
git checkout v4.14.121
git format-patch --stdout v4.14.120 > $incrPath/4.14/4.14.0120-0121.patch
git checkout v4.14.122
git format-patch --stdout v4.14.121 > $incrPath/4.14/4.14.0121-0122.patch
git checkout v4.14.123
git format-patch --stdout v4.14.122 > $incrPath/4.14/4.14.0122-0123.patch
git checkout v4.14.124
git format-patch --stdout v4.14.123 > $incrPath/4.14/4.14.0123-0124.patch
git checkout v4.14.125
git format-patch --stdout v4.14.124 > $incrPath/4.14/4.14.0124-0125.patch
git checkout v4.14.126
git format-patch --stdout v4.14.125 > $incrPath/4.14/4.14.0125-0126.patch
git checkout v4.14.127
git format-patch --stdout v4.14.126 > $incrPath/4.14/4.14.0126-0127.patch
git checkout v4.14.128
git format-patch --stdout v4.14.127 > $incrPath/4.14/4.14.0127-0128.patch
git checkout v4.14.129
git format-patch --stdout v4.14.128 > $incrPath/4.14/4.14.0128-0129.patch
git checkout v4.14.130
git format-patch --stdout v4.14.129 > $incrPath/4.14/4.14.0129-0130.patch
git checkout v4.14.131
git format-patch --stdout v4.14.130 > $incrPath/4.14/4.14.0130-0131.patch
git checkout v4.14.132
git format-patch --stdout v4.14.131 > $incrPath/4.14/4.14.0131-0132.patch
git checkout v4.14.133
git format-patch --stdout v4.14.132 > $incrPath/4.14/4.14.0132-0133.patch
git checkout v4.14.134
git format-patch --stdout v4.14.133 > $incrPath/4.14/4.14.0133-0134.patch
git checkout v4.14.135
git format-patch --stdout v4.14.134 > $incrPath/4.14/4.14.0134-0135.patch
git checkout v4.14.136
git format-patch --stdout v4.14.135 > $incrPath/4.14/4.14.0135-0136.patch
git checkout v4.14.137
git format-patch --stdout v4.14.136 > $incrPath/4.14/4.14.0136-0137.patch
git checkout v4.14.138
git format-patch --stdout v4.14.137 > $incrPath/4.14/4.14.0137-0138.patch
git checkout v4.14.139
git format-patch --stdout v4.14.138 > $incrPath/4.14/4.14.0138-0139.patch
git checkout v4.14.140
git format-patch --stdout v4.14.139 > $incrPath/4.14/4.14.0139-0140.patch
git checkout v4.14.141
git format-patch --stdout v4.14.140 > $incrPath/4.14/4.14.0140-0141.patch
git checkout v4.14.142
git format-patch --stdout v4.14.141 > $incrPath/4.14/4.14.0141-0142.patch
git checkout v4.14.143
git format-patch --stdout v4.14.142 > $incrPath/4.14/4.14.0142-0143.patch
git checkout v4.14.144
git format-patch --stdout v4.14.143 > $incrPath/4.14/4.14.0143-0144.patch
git checkout v4.14.145
git format-patch --stdout v4.14.144 > $incrPath/4.14/4.14.0144-0145.patch
git checkout v4.14.146
git format-patch --stdout v4.14.145 > $incrPath/4.14/4.14.0145-0146.patch
git checkout v4.14.147
git format-patch --stdout v4.14.146 > $incrPath/4.14/4.14.0146-0147.patch
git checkout v4.14.148
git format-patch --stdout v4.14.147 > $incrPath/4.14/4.14.0147-0148.patch
git checkout v4.14.149
git format-patch --stdout v4.14.148 > $incrPath/4.14/4.14.0148-0149.patch
git checkout v4.14.150
git format-patch --stdout v4.14.149 > $incrPath/4.14/4.14.0149-0150.patch
git checkout v4.14.151
git format-patch --stdout v4.14.150 > $incrPath/4.14/4.14.0150-0151.patch
git checkout v4.14.152
git format-patch --stdout v4.14.151 > $incrPath/4.14/4.14.0151-0152.patch
git checkout v4.14.153
git format-patch --stdout v4.14.152 > $incrPath/4.14/4.14.0152-0153.patch
git checkout v4.14.154
git format-patch --stdout v4.14.153 > $incrPath/4.14/4.14.0153-0154.patch
git checkout v4.14.155
git format-patch --stdout v4.14.154 > $incrPath/4.14/4.14.0154-0155.patch
git checkout v4.14.156
git format-patch --stdout v4.14.155 > $incrPath/4.14/4.14.0155-0156.patch
git checkout v4.14.157
git format-patch --stdout v4.14.156 > $incrPath/4.14/4.14.0156-0157.patch
git checkout v4.14.158
git format-patch --stdout v4.14.157 > $incrPath/4.14/4.14.0157-0158.patch
git checkout v4.14.159
git format-patch --stdout v4.14.158 > $incrPath/4.14/4.14.0158-0159.patch
git checkout v4.14.160
git format-patch --stdout v4.14.159 > $incrPath/4.14/4.14.0159-0160.patch
git checkout v4.14.161
git format-patch --stdout v4.14.160 > $incrPath/4.14/4.14.0160-0161.patch
git checkout v4.14.162
git format-patch --stdout v4.14.161 > $incrPath/4.14/4.14.0161-0162.patch
git checkout v4.14.163
git format-patch --stdout v4.14.162 > $incrPath/4.14/4.14.0162-0163.patch
git checkout v4.14.164
git format-patch --stdout v4.14.163 > $incrPath/4.14/4.14.0163-0164.patch
git checkout v4.14.165
git format-patch --stdout v4.14.164 > $incrPath/4.14/4.14.0164-0165.patch
git checkout v4.14.166
git format-patch --stdout v4.14.165 > $incrPath/4.14/4.14.0165-0166.patch
git checkout v4.14.167
git format-patch --stdout v4.14.166 > $incrPath/4.14/4.14.0166-0167.patch
git checkout v4.14.168
git format-patch --stdout v4.14.167 > $incrPath/4.14/4.14.0167-0168.patch
git checkout v4.14.169
git format-patch --stdout v4.14.168 > $incrPath/4.14/4.14.0168-0169.patch
git checkout v4.14.170
git format-patch --stdout v4.14.169 > $incrPath/4.14/4.14.0169-0170.patch
git checkout v4.14.171
git format-patch --stdout v4.14.170 > $incrPath/4.14/4.14.0170-0171.patch
git checkout v4.14.172
git format-patch --stdout v4.14.171 > $incrPath/4.14/4.14.0171-0172.patch
git checkout v4.14.173
git format-patch --stdout v4.14.172 > $incrPath/4.14/4.14.0172-0173.patch
git checkout v4.14.174
git format-patch --stdout v4.14.173 > $incrPath/4.14/4.14.0173-0174.patch
git checkout v4.14.175
git format-patch --stdout v4.14.174 > $incrPath/4.14/4.14.0174-0175.patch
git checkout v4.14.176
git format-patch --stdout v4.14.175 > $incrPath/4.14/4.14.0175-0176.patch
git checkout v4.14.177
git format-patch --stdout v4.14.176 > $incrPath/4.14/4.14.0176-0177.patch
git checkout v4.14.178
git format-patch --stdout v4.14.177 > $incrPath/4.14/4.14.0177-0178.patch
git checkout v4.14.179
git format-patch --stdout v4.14.178 > $incrPath/4.14/4.14.0178-0179.patch
git checkout v4.14.180
git format-patch --stdout v4.14.179 > $incrPath/4.14/4.14.0179-0180.patch
git checkout v4.14.181
git format-patch --stdout v4.14.180 > $incrPath/4.14/4.14.0180-0181.patch
git checkout v4.14.182
git format-patch --stdout v4.14.181 > $incrPath/4.14/4.14.0181-0182.patch
git checkout v4.14.183
git format-patch --stdout v4.14.182 > $incrPath/4.14/4.14.0182-0183.patch
git checkout v4.14.184
git format-patch --stdout v4.14.183 > $incrPath/4.14/4.14.0183-0184.patch
git checkout v4.14.185
git format-patch --stdout v4.14.184 > $incrPath/4.14/4.14.0184-0185.patch
git checkout v4.14.186
git format-patch --stdout v4.14.185 > $incrPath/4.14/4.14.0185-0186.patch
git checkout v4.14.187
git format-patch --stdout v4.14.186 > $incrPath/4.14/4.14.0186-0187.patch
git checkout v4.14.188
git format-patch --stdout v4.14.187 > $incrPath/4.14/4.14.0187-0188.patch
git checkout v4.14.189
git format-patch --stdout v4.14.188 > $incrPath/4.14/4.14.0188-0189.patch
git checkout v4.14.190
git format-patch --stdout v4.14.189 > $incrPath/4.14/4.14.0189-0190.patch
git checkout v4.14.191
git format-patch --stdout v4.14.190 > $incrPath/4.14/4.14.0190-0191.patch
git checkout v4.14.192
git format-patch --stdout v4.14.191 > $incrPath/4.14/4.14.0191-0192.patch
git checkout v4.14.193
git format-patch --stdout v4.14.192 > $incrPath/4.14/4.14.0192-0193.patch
git checkout v4.14.194
git format-patch --stdout v4.14.193 > $incrPath/4.14/4.14.0193-0194.patch
git checkout v4.14.195
git format-patch --stdout v4.14.194 > $incrPath/4.14/4.14.0194-0195.patch
git checkout v4.14.196
git format-patch --stdout v4.14.195 > $incrPath/4.14/4.14.0195-0196.patch
git checkout v4.14.197
git format-patch --stdout v4.14.196 > $incrPath/4.14/4.14.0196-0197.patch
git checkout v4.14.198
git format-patch --stdout v4.14.197 > $incrPath/4.14/4.14.0197-0198.patch
git checkout v4.14.199
git format-patch --stdout v4.14.198 > $incrPath/4.14/4.14.0198-0199.patch
git checkout v4.14.200
git format-patch --stdout v4.14.199 > $incrPath/4.14/4.14.0199-0200.patch
