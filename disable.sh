#!/bin/sh
mv CVE-2013-2891/^3.11/0001.patch CVE-2013-2891/^3.11/0001.patch.disabled;
mv CVE-2016-0819/ANY/0001.patch CVE-2016-0819/ANY/0001.patch.disabled;
mv CVE-2016-1583/3.4/0005.patch CVE-2016-1583/3.4/0005.patch.disabled;
mv CVE-2016-10208/^4.9.8/0001.patch CVE-2016-10208/^4.9.8/0001.patch.disabled;
mv CVE-2017-0794/3.10/0001.patch CVE-2017-0794/3.10/0001.patch.disabled;
mv CVE-2017-16USB/ANY/0007.patch CVE-2017-16USB/ANY/0007.patch.disabled
mv CVE-2018-9513/3.18+/0001.patch CVE-2018-9513/3.18+/0001.patch.disabled;
mv CVE-2019-2324/3.10/0001.patch CVE-2019-2324/3.10/0001.patch.disabled;
mv CVE-2019-13631/3.4/0008.patch CVE-2019-13631/3.4/0008.patch.disabled; #requires CONFIG_DYNAMIC_DEBUG
mv CVE-2020-0305/^5.5/0002.patch CVE-2020-0305/^5.5/0002.patch.disabled;
mv CVE-2020-0305/3.18/0001.patch CVE-2020-0305/3.18/0001.patch.disabled;
mv CVE-2021-3428/3.18/0002.patch CVE-2021-3428/3.18/0002.patch.disabled;
rename CVE-2020-36386/*/*.patch patch patch.disabled;
mv CVE-2017-0576/3.4/0002.patch CVE-2017-0576/3.4/0002.patch.disabled;
mv CVE-2016-3935/3.4/0002.patch CVE-2016-3935/3.4/0002.patch.disabled;
mv CVE-2015-8940/3.4/0002.patch CVE-2015-8940/3.4/0002.patch.disabled;
mv CVE-2018-11878/prima/0001.patch CVE-2018-11878/prima/0001.patch.disabled;
mv CVE-2017-5972/3.4/0003.patch CVE-2017-5972/3.4/0003.patch.disabled;
mv CVE-2017-5972/ANY/0001.patch CVE-2017-5972/ANY/0001.patch.disabled;
mv CVE-2019-2214/3.4/0004.patch CVE-2019-2214/3.4/0004.patch.disabled;
mv CVE-2021-20317/^5.3/0001.patch CVE-2021-20317/^5.3/0001.patch.disabled; #breaks qcom event timer
mv CVE-2019-19449/^5.9/0001.patch CVE-2019-19449/^5.9/0001.patch.disabled;
