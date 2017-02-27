From consol/centos-xfce-vnc:latest

WORKDIR /root/
RUN wget http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm \
&& rpm -ivh adobe-release-x86_64-1.0-1.noarch.rpm \
&& rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux \
&& yum install flash-plugin -y \
&& yum install cpulimit vixie-cron crontabs -y

ADD scripts /root

RUN chmod a+x /root/*.sh  
RUN echo '*/1 * * * * root bash /root/check.sh' >> /etc/crontab
RUN service cron restart