#!/bin/bash

if [ -z "$@" ]; then
    echo -en "   Shutdown\n"
    echo -en "󰍂   Logout\n"
    echo -en "⏾   Suspend\n"
    echo -en "󰜉   Reboot\n"
else
    if [ "$1" = "   Shutdown" ]; then
        systemctl poweroff
    elif [ "$1" = "󰍂   Logout" ]; then
        i3-msg exit
    elif [ "$1" = "⏾   Reboot" ]; then
        systemctl reboot
    elif [ "$1" = "󰜉   Suspend" ]; then
        systemctl suspend
    fi
fi
