#!/bin/sh

sudo apt-get install -y ubuntu-mate-desktop
sudo apt-get install -y tigervnc-standalone-server

vncserver :10
vncserver -kill :10

cp $HOME/git/necst/config/.vnc-xstartup $HOME/.vnc/xstartup
cp $HOME/git/necst/config/vnc.conf $HOME/.vnc/

echo "unset DBUS_SESSION_BUS_ADDRESS" >> $HOME/.vnc/xstartup
echo "exec /usr/bin/mate-session &" >> $HOME/.vnc/xstartup
