FROM       ubuntu:16.04
MAINTAINER Aleksandar Diklic "https://github.com/rastasheep"

RUN apt-get update

RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd

RUN echo 'root:root' |chpasswd

RUN sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

EXPOSE 22

# My custom
WORKDIR /root/

RUN echo 'deb http://archive.ubuntu.com/ubuntu/ xenial-security multiverse' >> /etc/apt/sources.list
RUN echo 'deb-src http://archive.ubuntu.com/ubuntu/ xenial-security multiverse' >> /etc/apt/sources.list

RUN apt-get update && apt-get install m2crypto git vim  mtr vnstat supervisor curl wget cron -y 
	
RUN apt-get install -y \
	firefox \
	lxde-core \
	lxterminal \
	tightvncserver \
	xrdp \
	proxychains \
	cpulimit \
	flashplugin-nonfree

RUN wget https://addons.mozilla.org/firefox/downloads/latest/vagex-firefox-add-on/addon-321174-latest.xpi \
	&& wget https://www.ebesucher.com/data/firefoxaddon/latest.xpi
	
	
# xvnc server porst, if $DISPLAY=:1 port will be 5901	
EXPOSE 15900	
	

ADD scripts /root
	
RUN chmod a+x /root/*.sh  
RUN echo '*/1 * * * * root bash /root/check.sh' >> /etc/crontab
RUN service cron restart

CMD    ["/usr/sbin/sshd", "-D"]
