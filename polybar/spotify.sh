#!/bin/bash

artist=$(playerctl metadata xesam:artist)
title=$(playerctl metadata xesam:title)

if [ "$(playerctl status)" == "Paused" ]
then
    echo "%{F#f2cb90} $artist - $title%{F#88e9fd}"
else
    echo "$artist - $title"
fi
