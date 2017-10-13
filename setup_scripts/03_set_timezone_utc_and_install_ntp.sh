#! /bin/sh

sudo timedatectl set-timezone UTC

sudo apt-get install ntp -y
sudo cp $HOME/git/necst/config/etc-ntp.conf.nagoya /etc/ntp.conf
sudo systemctl restart ntp

ntpq -p

