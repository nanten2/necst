#! /bin/sh

sudo cp /etc/apt/sources.list /etc/apt/sources.list.original
# for raspberry pi
sudo sed -i.bak -e "s%http://[^ ]\+%http://jp.archive.ubuntu.com/ports/%g" /etc/apt/sources.list

sudo apt-get update
sudo apt-get upgrade -y
