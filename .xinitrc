#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap


# merge in defaults and keymaps

[ -f $sysresources ] && xrdb -merge $sysresources

[ -f $sysmodmap ] && xmodmap $sysmodmap

[ -f "$userresources" ] && xrdb -merge "$userresources"

[ -f "$usermodmap" ] && xmodmap "$usermodmap"


# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


# personal defaults

numlockx on
xset r rate 195 23
setxkbmap -layout tr
export SCRIPTS_DIR="$HOME/.scripts"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_HOME="$HOME/.config"
export JAVA_HOME="$HOME/.local/external/java/jdk8u345-full"
export PATH="${PATH}:${JAVA_HOME}/bin:${SCRIPTS_DIR}"


# some initials
slstatus &
~/.fehbg &
batsignal -b -w 20 -c 10 -d 5 -W 'Battery Warning' -C 'Plug The Laptop' -F 'Charged' -M dunstify -b &
xscreensaver --no-splash &
dbus-run-session pulseaudio &
mpd $HOME/.config/mpd/mpd.conf &
picom &
sxhkd &
exec dwm
