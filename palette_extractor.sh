#!/bin/bash
# Extract palette used by gnome terminal


current_profile=`dconf dump /org/gnome/terminal/legacy/profiles:/ | grep -E "^default=" | cut -d "'" -f 2`
echo -n "Profile: " 
dconf read /org/gnome/terminal/legacy/profiles:/:${current_profile}/visible-name

echo -n "Palette: " 
dconf read /org/gnome/terminal/legacy/profiles:/:${current_profile}/palette

echo -n "Background: " 
dconf read /org/gnome/terminal/legacy/profiles:/:${current_profile}/background-color

echo ""

for color in {0..15}
do
        tput setaf $color; echo -n "#$color#" 
done
echo ""

