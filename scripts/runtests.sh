#!/bin/bash
while true; do
    clear
    make && clear && ./ytest

    if [[ $(which inotifywait) == "" ]]; then
        sleep 5
    else
        change=$(inotifywait -r -e close_write,moved_to,create .. 2> /dev/null)
    fi
done
