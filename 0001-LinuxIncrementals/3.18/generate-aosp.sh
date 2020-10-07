#!/bin/bash
#git clone https://android.googlesource.com/kernel/common.git -b android-3.18 android-3.18
git checkout ASB-2019-08-05_3.18
git format-patch --stdout ASB-2019-07-05_3.18 > $incrPath/3.18/3.18.0140-0141.patch
git checkout ASB-2019-09-05_3.18
git format-patch --stdout ASB-2019-08-05_3.18 > $incrPath/3.18/3.18.0141-0142.patch
git checkout ASB-2019-10-05_3.18
git format-patch --stdout ASB-2019-09-05_3.18 > $incrPath/3.18/3.18.0142-0143.patch
git checkout ASB-2019-11-05_3.18
git format-patch --stdout ASB-2019-10-05_3.18 > $incrPath/3.18/3.18.0143-0144.patch
git checkout ASB-2019-12-05_3.18
git format-patch --stdout ASB-2019-11-05_3.18 > $incrPath/3.18/3.18.0144-0145.patch
git checkout ASB-2020-01-05_3.18
git format-patch --stdout ASB-2019-12-05_3.18 > $incrPath/3.18/3.18.0145-0146.patch
git checkout ASB-2020-02-05_3.18
git format-patch --stdout ASB-2020-01-05_3.18 > $incrPath/3.18/3.18.0146-0147.patch
git checkout ASB-2020-04-05_3.18
git format-patch --stdout ASB-2020-02-05_3.18 > $incrPath/3.18/3.18.0147-0148.patch
git checkout ASB-2020-05-05_3.18
git format-patch --stdout ASB-2020-04-05_3.18 > $incrPath/3.18/3.18.0148-0149.patch
git checkout ASB-2020-06-05_3.18
git format-patch --stdout ASB-2020-05-05_3.18 > $incrPath/3.18/3.18.0149-0150.patch
git checkout ASB-2020-07-05_3.18
git format-patch --stdout ASB-2020-06-05_3.18 > $incrPath/3.18/3.18.0150-0151.patch
git checkout ASB-2020-08-05_3.18
git format-patch --stdout ASB-2020-07-05_3.18 > $incrPath/3.18/3.18.0151-0152.patch
git checkout ASB-2020-09-05_3.18
git format-patch --stdout ASB-2020-08-05_3.18 > $incrPath/3.18/3.18.0152-0153.patch
git checkout ASB-2020-10-05_3.18
git format-patch --stdout ASB-2020-09-05_3.18 > $incrPath/3.18/3.18.0153-0154.patch
