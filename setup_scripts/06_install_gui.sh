#! /bin/sh

sudo apt-get install -y ubuntu-desktop 
sudo apt-get install -y gnome-session-flashback 

sudo apt-get install -y vnc4server

vncserver :10
vncserver -kill :10

cp $HOME/git/necst/config/.vnc-xstartup $HOME/.vnc/xstartup


