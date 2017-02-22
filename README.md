# arukas-docker

自用docker

* `imeiji/arukas-docker:centos` [![](https://images.microbadger.com/badges/version/imeiji/arukas-docker:centos.svg)](https://hub.docker.com/r/imeiji/arukas-docker/ "Get your own version badge on microbadger.com")[![](https://images.microbadger.com/badges/image/imeiji/arukas-docker:centos.svg)](https://microbadger.com/images/imeiji/arukas-docker:centos "Get your own image badge on microbadger.com")

* `imeiji/arukas-docker:ubuntu` [![](https://images.microbadger.com/badges/version/imeiji/arukas-docker:ubuntu.svg)](https://hub.docker.com/r/imeiji/arukas-docker/ "Get your own version badge on microbadger.com")[![](https://images.microbadger.com/badges/image/imeiji/arukas-docker:ubuntu.svg)](https://microbadger.com/images/imeiji/arukas-docker:ubuntu "Get your own image badge on microbadger.com")

* `imeiji/arukas-docker:debian` [![](https://images.microbadger.com/badges/version/imeiji/arukas-docker:debian.svg)](https://hub.docker.com/r/imeiji/arukas-docker/ "Get your own version badge on microbadger.com")[![](https://images.microbadger.com/badges/image/imeiji/arukas-docker:debian.svg)](https://microbadger.com/images/imeiji/arukas-docker:debian "Get your own image badge on microbadger.com")

## centos-xfce-vnc

基于[consol/centos-xfce-vnc](https://github.com/ConSol/docker-headless-vnc-container), 包含以下软件

```
* Desktop environment [**Xfce4**](http://www.xfce.org)
* VNC-Server (default VNC port `5901`)
* [**noVNC**](https://github.com/kanaka/noVNC) - HTML5 VNC client (default http port `6901`)
* Java JRE 8
* Browsers:
  * Mozilla Firefox + Java Plugin
  * Google Chrome (Java-Plugin is no longer supported)
* Flash-plugin
* cpulimit
```

使用方法

![c.jpg](https://ooo.0o0.ooo/2017/02/12/58a01fdab75f5.jpg)

=> connect via **VNC viewer localhost:5901**, default password: `vncpassword`

=> connect via **noVNC HTML5 client**: [http://localhost:6901/vnc_auto.html?password=vncpassword](https://github.com/ConSol/docker-headless-vnc-container/blob/master)

## ubuntu-sshd

基于 [ubuntu-sshd](https://github.com/rastasheep/ubuntu-sshd), 包含以下软件, 2个脚本, 方便XX

```
* ubuntu:16.04
* openssh
* Desktop environment [**lxde**](http://www.xfce.org)
* VNC-Server (default VNC port `15900`)
* Mozilla Firefox + Flash Plugin
* cpulimit
等等
```

使用方法

![u.jpg](https://ooo.0o0.ooo/2017/02/22/58ad438e9378b.jpg)


默认用户密码都是 `root`  

连接ssh后, 执行 `tightvncserver :10000` 输入密码

接着连接vnc, 对应15900端口, 然后就没有然后了

## debian-ssh

基于 [debian-ssh](https://hub.docker.com/r/itscaro/debian-ssh/), 基本上与上面的ubuntu-sshd相同, 推荐使用这个  

使用方法

![d.jpg](https://ooo.0o0.ooo/2017/02/22/58ad41ceeb578.jpg)

默认用户密码都是 `root`  

连接ssh后, 执行 `tightvncserver :10000` 输入密码

接着连接vnc, 对应15900端口, 然后就没有然后了