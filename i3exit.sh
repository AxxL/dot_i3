#!/bin/sh

lock() {
    i3lock -i ~/Bilder/jyrmakP.png -c 1b1b1b
    # i3lock -i ~/Bilder/Space_Aurora.jpg -c 1b1b1b
    # i3lock -i ~/Bilder/Great_Wave_off_Kanagawa.png -c 1b1b1b
}

myexit() {
    i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        # i3-msg exit
        myexit
        ;;
    suspend)
        lock && systemctl suspend
        ;;
    hibernate)
        lock && systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0