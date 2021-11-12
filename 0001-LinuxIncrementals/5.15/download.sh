#!/bin/bash
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/incr/patch-5.15.1-2.xz -O - | xz -d > 5.15.0001-0002.patch
