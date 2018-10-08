#!/bin/bash 

current_profile=`dconf dump /org/gnome/terminal/legacy/profiles:/ | grep -E "^default=" | cut -d "'" -f 2`
echo -n "Profile: "
dconf read /org/gnome/terminal/legacy/profiles:/:${current_profile}/visible-name

dconf  write /org/gnome/terminal/legacy/profiles:/${current_profile}/palette "`cat ./current_palette`"


