# increase number of open file handles allowed - 256 default
ulimit -n 1024

# If not running interactively, don't do anything.
[ -z "$PS1" ] && return

# Don't put duplicate lines in the history. See bash(1) for more options.
# Don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace.
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it.
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-*color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

function git_branch {
  git branch --no-color 2> /dev/null | egrep '^\*' | sed -e 's/^* //'
}

function git_dirty {
  # only tracks modifications, not unknown files needing adds
    if [ -z "`git status -s | awk '{print $1}' | grep '[ADMT]'`" ] ; then
        return 1
    else
        return 0
    fi
}

function dirty_git_prompt {
    branch=`git_branch`
    if [ -z "${branch}" ] ; then
        return
    fi
    git_dirty && echo " (${branch})"
}

function clean_git_prompt {    branch=`git_branch`
    if [ -z "${branch}" ] ; then
        return
    fi
    git_dirty || echo " (${branch})"
}

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00
m\]\[\033[01;31m\]$(dirty_git_prompt)\[\033[01;32m\]$(clean_git_prompt)\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w $(git_branch)\$ '
fi

unset color_prompt force_color_prompt

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

export CLICOLOR=1
export LSCOLORS=ExGxcxdxCxegedabagacad
export EDITOR=/usr/bin/vim
export GOROOT=/Users/heckj/src/go
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/opt/local/bin:/opt/local/sbin:/sw/bin:~/.ec2/bin:~/bin:$GOROOT/bin
export MANPATH=$MANPATH:/opt/local/share/man
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export PIP_RESPECT_VIRTUALENV=true
export ARCHFLAGS="-arch i386 -arch x86_64"
if [ -s /usr/local/bin/mvim ]; then
    alias vi=/usr/local/bin/mvim
    alias vim=/usr/local/bin/mvim
fi
export PIP_DOWNLOAD_CACHE=~/cache/pip

# Enable git command line completion.
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
. /usr/local/etc/bash_completion.d/git-completion.bash
fi

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
