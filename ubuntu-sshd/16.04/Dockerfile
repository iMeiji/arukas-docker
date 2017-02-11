FROM       ubuntu:16.04
MAINTAINER Aleksandar Diklic "https://github.com/rastasheep"

RUN apt-get update

RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd

RUN echo 'root:root' |chpasswd

RUN sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

EXPOSE 22

#####################
WORKDIR /root/

RUN echo 'deb http://archive.ubuntu.com/ubuntu/ xenial-security multiverse' >> /etc/apt/sources.list
RUN echo 'deb-src http://archive.ubuntu.com/ubuntu/ xenial-security multiverse' >> /etc/apt/sources.list

RUN apt-get update && apt-get upgrade -y \
	&& apt-get install m2crypto git vim  mtr vnstat supervisor curl wget cron -y \
	&& apt-get install xorg lxde-core tightvncserver firefox proxychains cpulimit -y \
	&& apt-get install flashplugin-nonfree -y

RUN wget https://addons.mozilla.org/firefox/downloads/latest/vagex-firefox-add-on \
	&& wget https://www.ebesucher.com/data/firefoxaddon/latest.xpi
	
RUN 
cat > vnc.sh <<-EOF
#!/bin/sh
rm -rf /root/.vnc/*.log
tightvncserver :10000
killall firefox > /dev/null 2>&1
export DISPLAY=localhost:10000.0
/usr/lib/firefox/firefox
EOF
	
<<<<<<< HEAD
RUN 
cat > check.sh <<-EOF
#!/bin/bash
if ps -ef|grep "firefox"|grep -v "grep"
then
	echo "ff is running!" `date` >> /var/log/check.log
else
	echo "ff is topped!"  `date` >> /var/log/check.log
	/root/vnc.sh
fi
EOF
=======
RUN cat > check.sh <<-EOF
	#!/bin/bash
	if ps -ef|grep "firefox"|grep -v "grep"
	then
		echo "ff is running!" `date` >> /var/log/check.log
	else
		echo "ff is topped!"  `date` >> /var/log/check.log
    		/root/vnc.sh
	fi
	EOF
>>>>>>> origin/master
	
RUN chmod a+x /root/*.sh  
RUN echo '*/1 * * * * root bash /root/check.sh' >> /etc/crontab
RUN service cron restart

CMD    ["/usr/sbin/sshd", "-D"]
