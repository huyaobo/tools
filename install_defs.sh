#!/bin/bash

#sudo apt-get install libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-dev g++-multilib  libc6-dev-i386  -y
sudo apt-get install -y git git-core gnupg flex bison gperf build-essential libncurses5-dev:i386
#sudo apt-get install tofrodos python-markdown libxml2-utils xsltproc zlib1g-dev:i386  -y
#sudo apt-get install dpkg-dev libsdl1.2-dev libesd0-deva -y
sudo apt-get install zip curl zlib1g-dev gcc-multilib g++-multilib  -y
#sudo apt-get install lib32ncurses5-dev x11proto-core-dev libx11-dev  -y
#sudo apt-get install libgl1-mesa-dev libxml2-utils xsltproc unzip m4 -y
#sudo apt-get install lib32z-dev libncurses5-dev ccache -y


#for ubuntu 18.04 install android compile env
ubuntu_version=`lsb_release -a 2>/dev/null  | awk  '/Release/{print $2}'`
if [ "$ubuntu_version" = "18.04" ]
then
	echo "install android compile env for Ubuntu 18.04"
	sudo apt install -y axel git ccache automake flex lzop bison \
		gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386 \
		g++-multilib python-networkx libxml2-utils bzip2 libbz2-dev \
		libbz2-1.0 libghc-bzlib-dev squashfs-tools pngcrush \
		schedtool dpkg-dev liblz4-tool make optipng maven libssl-dev \
		pwgen libswitch-perl policycoreutils libxml-sax-base-perl \
		libxml-simple-perl bc libc6-dev-i386 lib32ncurses5-dev \
		x11proto-core-dev libx11-dev lib32z-dev libgl1-mesa-dev \
		xsltproc unzip m4  uuid-dev
fi


#install open jdk 1.8
sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt-get update
sudo apt-get install openjdk-8-jdk -y


sudo apt install vim vim-gui-common git gitk gitg htop minicom tmux cmake lftp meld net-tools curl -y

# inputs
sudo apt install fcitx fcitx-bin fcitx-config-common fcitx-table fcitx-table-wubi fcitx-ui-qimpanel fcitx-table-wubi-large fcitx-table-emoji -y

#update kernel defs
#sudo apt install libncurses5-dev libssl-dev  -y
#sudo apt install zlibc minizip -y
#sudo apt install openssl build-essential -y
#sudo apt install libidn11-dev libidn11 -y

# swith Desktop Manager between gdm3 and LightDM
# sudo dpkg-reconfigure gdm3

#python
sudo apt install python python-pip -y
# sudo apt install python-pip
# python -m pip install requests
# python -m pip install configparser
# for systrace
pip install six

# tools
sudo apt install openssh-server -y
sudo apt install unity-tweak-tool -y

# Electron def
#sudo apt install npm -y

# exvim defs
sudo apt install exuberant-ctags cscope id-utils silversearcher-ag gawk  -y

# a eye protect tool
sudo apt install redshift* -y
# safe eye
sudo add-apt-repository ppa:slgobinath/safeeyes -y
sudo apt update
sudo apt install safeeyes -y

#media
sudo apt install vlc -y

# shell
#sudo apt install tcsh
sudo apt install zsh -y
sudo apt install fonts-powerline -y

# misc
sudo apt install rar -y
sudo apt install p7zip-full  -y
sudo apt install apt-file -y
#sysstat include: pidstat,sar,mpstat
sudo apt install sysstat -y
# sudo install latest version from https://github.com/flameshot-org/flameshot
# wget https://github.com/flameshot-org/flameshot/releases/download/v0.10.2/flameshot-0.10.2-1.ubuntu-18.04.amd64.deb
# sudo apt install flameshot -y
sudo dpkg -i flameshot-0.10.2-1.ubuntu-18.04.amd64.deb

# qemu env:
#x84-64
sudo apt install flex bison libssl-dev libelf-dev debootstrap qemu-system dwarves qemu-kvm qemu-system-x86 -y
#arm64
sudo apt install qemu qemu-system qemu-user qemu-system-aarch64 -y

#arm64-raspberry-pi-eqmu
sudo apt install qemu-system-arm qemu-system libncurses5-dev qemu-user qemu-system-aarch64 -y
sudo apt install gcc-aarch64-linux-gnu -y
