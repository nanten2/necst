#! /bin/sh

# .bashrc
cp $HOME/.bashrc $HOME/.bashrc.original
cp $HOME/git/necst/config/.bashrc_melodic $HOME/.bashrc

# vnc
vncserver :20
vncserver -kill :20
cp $HOME/git/necst/config/.vnc-xstartup $HOME/.vnc/xstartup

