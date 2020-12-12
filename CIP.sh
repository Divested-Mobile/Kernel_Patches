#!/bin/sh
java -jar "$DOS_BINARY_PATCHER" scraper "$1" > CIP.tmp.1;
echo "CVE-0000-0000" >> CIP.tmp.1;
echo "#The above line must be the last line" >> CIP.tmp.1;
java -jar "$DOS_BINARY_PATCHER" sort CIP.tmp.1 > CIP.tmp.2;
echo "CVE-0000-0000" >> CIP.tmp.2;
echo "#The above line must be the last line" >> CIP.tmp.2;
echo "#Last checked "$(date -uI) > CIP.tmp.3;
cat CIP.tmp.2 >> CIP.tmp.3;
#mv CIP.txt CIP.txt.bak;
mv CIP.tmp.3 CIP.txt;
rm CIP.tmp.1 CIP.tmp.2;
echo "Please manually sync CIP.txt with Kernel_CVE_Patch_List.txt";
