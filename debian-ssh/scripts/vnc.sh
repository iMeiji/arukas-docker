#!/bin/sh
rm -rf /root/.vnc/*.log
tightvncserver :10000
killall firefox-esr > /dev/null 2>&1
killall /usr/lib/firefox-esr/crashreporter > /dev/null 2>&1
export DISPLAY=localhost:10000.0
/usr/lib/firefox-esr/firefox-esr