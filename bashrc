# Disable sound notification
set bell-style visual

# Enable color prompt
color_prompt="yes"

# Colored git prompt
source /etc/bash_completion.d/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1 GIT_PS1_SHOWSTASHSTATE=1 GIT_PS1_SHOWUNTRACKEDFILES=1

# Define prompt color
reset_color="[00m"
user_color="[01;32m"
host_color="[01;36m"
path_color="[01;35m"
git_color="[01;31m"

# Check user root or user
if [ $(id -u) -eq 0 ]; then
	user_color="[01;31m"
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\e${user_color}\]\u\[\e${reset_color}\]@\[\e${host_color}\]\h\[\e${reset_color}\]:\[\e${path_color}\]\W\[\e${reset_color}\]\[\e${git_color}\]$(__git_ps1 " (%s)")\[\e${reset_color}\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# Aliases
alias ll='ls -l'
alias la='ls -a'
alias las='ls -la'
alias sl='ls'
alias vi='vim'
alias rgrep='grep -r'
alias please='sudo "$BASH" -c "$(history -p !!)"'
