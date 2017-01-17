#!/usr/bin/env bash
set -eu

[[ -z "$(pgrep i3lock)" ]] || exit
xset dpms force off
i3lock -n -u -t -i ${HOME}/.config/i3lock/lock.png
