#!/usr/bin/env bash
set -e
tmpImageFile=/tmp/screenlocked.png

[[ -z "$(pgrep i3lock)" ]] || exit

maim ${tmpImageFile}
mogrify -scale 10% -scale 1000% ${tmpImageFile}
i3lock -i ${tmpImageFile}

sleep 600
pgrep i3lock && xset dpms force off
