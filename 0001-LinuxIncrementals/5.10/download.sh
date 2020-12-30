#!/bin/bash
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/incr/patch-5.10.1-2.xz -O - | xz -d > 5.10.0001-0002.patch
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/incr/patch-5.10.2-3.xz -O - | xz -d > 5.10.0002-0003.patch
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/incr/patch-5.10.3-4.xz -O - | xz -d > 5.10.0003-0004.patch
