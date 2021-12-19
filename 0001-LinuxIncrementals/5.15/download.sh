#!/bin/bash
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/incr/patch-5.15.1-2.xz -O - | xz -d > 5.15.0001-0002.patch
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/incr/patch-5.15.2-3.xz -O - | xz -d > 5.15.0002-0003.patch
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/incr/patch-5.15.3-4.xz -O - | xz -d > 5.15.0003-0004.patch
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/incr/patch-5.15.4-5.xz -O - | xz -d > 5.15.0004-0005.patch
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/incr/patch-5.15.5-6.xz -O - | xz -d > 5.15.0005-0006.patch
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/incr/patch-5.15.6-7.xz -O - | xz -d > 5.15.0006-0007.patch
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/incr/patch-5.15.7-8.xz -O - | xz -d > 5.15.0007-0008.patch
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/incr/patch-5.15.8-9.xz -O - | xz -d > 5.15.0008-0009.patch
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/incr/patch-5.15.9-10.xz -O - | xz -d > 5.15.0009-0010.patch
