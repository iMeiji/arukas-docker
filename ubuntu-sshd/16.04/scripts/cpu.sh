killall cpulimit
cpulimit -e firefox -l 40 > /dev/null 2>&1 &
cpulimit -e /usr/lib/firefox/plugin-container -l 40 > /dev/null 2>&1 &
