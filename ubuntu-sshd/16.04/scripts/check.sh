#!/bin/bash
if ps -ef|grep "/usr/lib/firefox/firefox"|grep -v "grep"
	then
	echo "ff is running!" `date` >> /var/log/check.log
else
	echo "ff is topped!"  `date` >> /var/log/check.log
	/root/vnc.sh
fi