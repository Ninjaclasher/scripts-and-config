#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xrdb .Xresources
setxkbmap -option compose:ralt
# Disable insert
xmodmap -e "keycode 118 ="

eval $(/usr/bin/gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

exec /usr/bin/i3
