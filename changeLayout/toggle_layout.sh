#!/bin/bash

config_file="$HOME/.keyboard_layout"

if [ -e "$config_file" ]; then
    current_layout=$(cat "$config_file")
else
    current_layout="fr"
fi

if [ "$current_layout" == "fr" ]; then
    setxkbmap fr -variant ergom
    echo "ergol" > "$config_file"
else
    setxkbmap fr
    echo "fr" > "$config_file"
fi
