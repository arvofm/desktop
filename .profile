#!/bin/sh

export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="qutebrowser"

[ "$(tty)" = "/dev/tty1" ] && startx
