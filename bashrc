# Disable sound notification
set bell-style visual

# Colored git prompt
source /etc/bash_completion.d/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1 GIT_PS1_SHOWSTASHSTATE=1 GIT_PS1_SHOWUNTRACKEDFILES=1

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\[\033[01;31m\]$(__git_ps1 " (%s)")\[\033[00m\]\$ '
#        PS1='$(__git_ps1 " (%s)")'
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# Git proxy command
GIT_PROXY_ENABLE=0
if [ $GIT_PROXY_ENABLE -gt 0 ]
then
        export GIT_PROXY_COMMAND=/home/${USER}/script/proxy_git.sh
else
        export GIT_PROXY_COMMAND=''
fi

