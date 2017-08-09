killall cpulimit
cpulimit -e firefox-esr -l 40 > /dev/null 2>&1 &
cpulimit -e /usr/lib/firefox-esr/plugin-container -l 40 > /dev/null 2>&1 &
