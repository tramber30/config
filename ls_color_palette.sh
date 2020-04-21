#!/usr/bin/env bash

table=0
default="\033[0m"

echo """
bd = (BLOCK, BLK)   Block device (buffered) special file
cd = (CHAR, CHR)    Character device (unbuffered) special file
di = (DIR)  Directory
do = (DOOR) [Door][1]
ex = (EXEC) Executable file (ie. has 'x' set in permissions)
fi = (FILE) Normal file
ln = (SYMLINK, LINK, LNK)   Symbolic link. If you set this to ‘target’ instead of a numerical value, the color is as for the file pointed to.
mi = (MISSING)  Non-existent file pointed to by a symbolic link (visible when you type ls -l)
no = (NORMAL, NORM) Normal (non-filename) text. Global default, although everything should be something
or = (ORPHAN)   Symbolic link pointing to an orphaned non-existent file
ow = (OTHER_WRITABLE)   Directory that is other-writable (o+w) and not sticky
pi = (FIFO, PIPE)   Named pipe (fifo file)
sg = (SETGID)   File that is setgid (g+s)
so = (SOCK) Socket file
st = (STICKY)   Directory with the sticky bit set (+t) and not other-writable
su = (SETUID)   File that is setuid (u+s)
tw = (STICKY_OTHER_WRITABLE)    Directory that is sticky and other-writable (+t,o+w)
*.extension =   Every file using this extension e.g. *.rpm = files with the ending .rpm
"""
color_scheme=$(echo $LS_COLORS | sed 's/:/\n/g')
for entry in $color_scheme
do
	id=$(echo $entry | cut -d '=' -f1)
	color=$(echo $entry | cut -d '=' -f2)
	if [ $(($table%5)) -gt 0 ]; then
		echo -ne "\033[${color}m${id}${default}\t\t"
	else
		echo -e "\033[${color}m${id}${default}"
	fi
	table=$(($table+1))
	
done
echo ""
