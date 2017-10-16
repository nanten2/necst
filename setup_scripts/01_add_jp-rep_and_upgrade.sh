#! /bin/sh

sudo cp /etc/apt/sources.list /etc/apt/sources.list.original
sudo sed -i.bak -e "s%http://[^ ]\+%http://ftp.jaist.ac.jp/pub/Linux/ubuntu/%g" /etc/apt/sources.list

sudo apt-get update
sudo apt-get upgrade -y
