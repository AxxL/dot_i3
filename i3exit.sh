#!/bin/sh

lock() {
    i3lock -i ~/Bilder/jyrmakP.png -c 1b1b1b
    # i3lock -i ~/Bilder/Space_Aurora.jpg -c 1b1b1b
    # i3lock -i ~/Bilder/Great_Wave_off_Kanagawa.png -c 1b1b1b
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        i3-msg exit
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
