#!/bin/sh
git checkout master;
git fetch orig;
git rebase orig/master;
git checkout -b $(date -uI);
git am ../cip-personal-tweaks.patch;
./scripts/import_stable.py;
git add -A && git commit -a -m 'Import data from stable branches';
./scripts/import_debian.py;
git add -A && git commit -a -m 'Import data from Debian';
./scripts/import_stable.py;
git add -A && git commit -a -m 'Import data from stable branches';
./scripts/import_ubuntu.py;
git add -A && git commit -a -m 'Import data from Ubuntu';
./scripts/import_stable.py;
git add -A && git commit -a -m 'Import data from stable branches';
