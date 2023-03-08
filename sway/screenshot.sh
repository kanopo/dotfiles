#!/bin/sh

folder=$(cd; fd -a -t d | fzf)

sleep 10


grim -g "$(slurp)" "$folder"/"$(date +%Y%m%d-%H%M%S)".png
