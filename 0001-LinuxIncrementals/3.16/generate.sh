#!/bin/bash
git checkout v3.16.2
git format-patch --stdout v3.16.1 > $incrPath/3.16/3.16.0001-0002.patch
git checkout v3.16.3
git format-patch --stdout v3.16.2 > $incrPath/3.16/3.16.0002-0003.patch
git checkout v3.16.4
git format-patch --stdout v3.16.3 > $incrPath/3.16/3.16.0003-0004.patch
git checkout v3.16.5
git format-patch --stdout v3.16.4 > $incrPath/3.16/3.16.0004-0005.patch
git checkout v3.16.6
git format-patch --stdout v3.16.5 > $incrPath/3.16/3.16.0005-0006.patch
git checkout v3.16.7
git format-patch --stdout v3.16.6 > $incrPath/3.16/3.16.0006-0007.patch
git checkout v3.16.36
git format-patch --stdout v3.16.35 > $incrPath/3.16/3.16.0035-0036.patch
git checkout v3.16.37
git format-patch --stdout v3.16.36 > $incrPath/3.16/3.16.0036-0037.patch
git checkout v3.16.38
git format-patch --stdout v3.16.37 > $incrPath/3.16/3.16.0037-0038.patch
git checkout v3.16.39
git format-patch --stdout v3.16.38 > $incrPath/3.16/3.16.0038-0039.patch
git checkout v3.16.40
git format-patch --stdout v3.16.39 > $incrPath/3.16/3.16.0039-0040.patch
git checkout v3.16.41
git format-patch --stdout v3.16.40 > $incrPath/3.16/3.16.0040-0041.patch
git checkout v3.16.42
git format-patch --stdout v3.16.41 > $incrPath/3.16/3.16.0041-0042.patch
git checkout v3.16.43
git format-patch --stdout v3.16.42 > $incrPath/3.16/3.16.0042-0043.patch
git checkout v3.16.44
git format-patch --stdout v3.16.43 > $incrPath/3.16/3.16.0043-0044.patch
git checkout v3.16.45
git format-patch --stdout v3.16.44 > $incrPath/3.16/3.16.0044-0045.patch
git checkout v3.16.46
git format-patch --stdout v3.16.45 > $incrPath/3.16/3.16.0045-0046.patch
git checkout v3.16.47
git format-patch --stdout v3.16.46 > $incrPath/3.16/3.16.0046-0047.patch
git checkout v3.16.48
git format-patch --stdout v3.16.47 > $incrPath/3.16/3.16.0047-0048.patch
git checkout v3.16.49
git format-patch --stdout v3.16.48 > $incrPath/3.16/3.16.0048-0049.patch
git checkout v3.16.50
git format-patch --stdout v3.16.49 > $incrPath/3.16/3.16.0049-0050.patch
git checkout v3.16.51
git format-patch --stdout v3.16.50 > $incrPath/3.16/3.16.0050-0051.patch
git checkout v3.16.52
git format-patch --stdout v3.16.51 > $incrPath/3.16/3.16.0051-0052.patch
git checkout v3.16.53
git format-patch --stdout v3.16.52 > $incrPath/3.16/3.16.0052-0053.patch
git checkout v3.16.54
git format-patch --stdout v3.16.53 > $incrPath/3.16/3.16.0053-0054.patch
git checkout v3.16.55
git format-patch --stdout v3.16.54 > $incrPath/3.16/3.16.0054-0055.patch
git checkout v3.16.56
git format-patch --stdout v3.16.55 > $incrPath/3.16/3.16.0055-0056.patch
git checkout v3.16.57
git format-patch --stdout v3.16.56 > $incrPath/3.16/3.16.0056-0057.patch
git checkout v3.16.58
git format-patch --stdout v3.16.57 > $incrPath/3.16/3.16.0057-0058.patch
git checkout v3.16.59
git format-patch --stdout v3.16.58 > $incrPath/3.16/3.16.0058-0059.patch
git checkout v3.16.60
git format-patch --stdout v3.16.59 > $incrPath/3.16/3.16.0059-0060.patch
git checkout v3.16.61
git format-patch --stdout v3.16.60 > $incrPath/3.16/3.16.0060-0061.patch
git checkout v3.16.62
git format-patch --stdout v3.16.61 > $incrPath/3.16/3.16.0061-0062.patch
git checkout v3.16.63
git format-patch --stdout v3.16.62 > $incrPath/3.16/3.16.0062-0063.patch
git checkout v3.16.64
git format-patch --stdout v3.16.63 > $incrPath/3.16/3.16.0063-0064.patch
git checkout v3.16.65
git format-patch --stdout v3.16.64 > $incrPath/3.16/3.16.0064-0065.patch
git checkout v3.16.66
git format-patch --stdout v3.16.65 > $incrPath/3.16/3.16.0065-0066.patch
git checkout v3.16.67
git format-patch --stdout v3.16.66 > $incrPath/3.16/3.16.0066-0067.patch
git checkout v3.16.68
git format-patch --stdout v3.16.67 > $incrPath/3.16/3.16.0067-0068.patch
git checkout v3.16.69
git format-patch --stdout v3.16.68 > $incrPath/3.16/3.16.0068-0069.patch
git checkout v3.16.70
git format-patch --stdout v3.16.69 > $incrPath/3.16/3.16.0069-0070.patch
git checkout v3.16.71
git format-patch --stdout v3.16.70 > $incrPath/3.16/3.16.0070-0071.patch
git checkout v3.16.72
git format-patch --stdout v3.16.71 > $incrPath/3.16/3.16.0071-0072.patch
git checkout v3.16.73
git format-patch --stdout v3.16.72 > $incrPath/3.16/3.16.0072-0073.patch
git checkout v3.16.74
git format-patch --stdout v3.16.73 > $incrPath/3.16/3.16.0073-0074.patch
git checkout v3.16.75
git format-patch --stdout v3.16.74 > $incrPath/3.16/3.16.0074-0075.patch
git checkout v3.16.76
git format-patch --stdout v3.16.75 > $incrPath/3.16/3.16.0075-0076.patch
git checkout v3.16.77
git format-patch --stdout v3.16.76 > $incrPath/3.16/3.16.0076-0077.patch
git checkout v3.16.78
git format-patch --stdout v3.16.77 > $incrPath/3.16/3.16.0077-0078.patch
git checkout v3.16.79
git format-patch --stdout v3.16.78 > $incrPath/3.16/3.16.0078-0079.patch
git checkout v3.16.80
git format-patch --stdout v3.16.79 > $incrPath/3.16/3.16.0079-0080.patch
git checkout v3.16.81
git format-patch --stdout v3.16.80 > $incrPath/3.16/3.16.0080-0081.patch
git checkout v3.16.82
git format-patch --stdout v3.16.81 > $incrPath/3.16/3.16.0081-0082.patch
git checkout v3.16.83
git format-patch --stdout v3.16.82 > $incrPath/3.16/3.16.0082-0083.patch
git checkout v3.16.84
git format-patch --stdout v3.16.83 > $incrPath/3.16/3.16.0083-0084.patch
git checkout v3.16.85
git format-patch --stdout v3.16.84 > $incrPath/3.16/3.16.0084-0085.patch
