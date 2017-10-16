#! /bin/sh

# .bashrc
cp $HOME/git/necst/config/.bashrc $HOME/.bashrc

# vnc
vncserver :20
vncserver -kill :20
cp $HOME/git/necst/config/.vnc-xstartup $HOME/.vnc/xstartup

