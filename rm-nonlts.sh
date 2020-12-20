#!/bin/sh
rmVersion() {
	if [ -n "$1" ]; then
		awk -i inplace '!/Link - '$1' - https/' Kernel_CVE_Patch_List.txt;
		awk -i inplace '!/Link - '$1' - https/' CIP.txt
		rm -rfv CVE*/$1;
	fi;
}

rmVersions() {
	#5.10 LTS
	rmVersion 5\.9;
	rmVersion 5\.8;
	rmVersion 5\.7;
	rmVersion 5\.6;
	rmVersion 5\.5;
	#5.4 LTS
	rmVersion 5\.3;
	rmVersion 5\.2;
	rmVersion 5\.1;
	rmVersion 5\.0;
	rmVersion 4\.20;
	#4.19 LTS
	rmVersion 4\.18;
	rmVersion 4\.17;
	rmVersion 4\.16;
	rmVersion 4\.15;
	#4.14 LTS
	rmVersion 4\.13;
	rmVersion 4\.12;
	rmVersion 4\.11;
	rmVersion 4\.10;
	#4.9 LTS
	rmVersion 4\.8;
	rmVersion 4\.7;
	rmVersion 4\.6;
	rmVersion 4\.5;
	#4.4 LTS
	rmVersion 4\.3;
	rmVersion 4\.2;
	#4.1 LTS
	rmVersion 4\.0;
	rmVersion 3\.19;
	#3.18 LTS
	rmVersion 3\.17;
	#3.16 LTS
	rmVersion 3\.15;
	#3.14 LTS
	rmVersion 3\.13;
	#3.12 LTS
	rmVersion 3\.11;
	#3.10 LTS
	rmVersion 3\.9;
	rmVersion 3\.8;
	rmVersion 3\.7;
	rmVersion 3\.6;
	rmVersion 3\.5;
	#3.4 LTS
	rmVersion 3\.3;
	#3.2 LTS
	rmVersion 3\.1;
	#3.0 LTS
}
