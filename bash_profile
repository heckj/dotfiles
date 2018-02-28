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

function _update_ps1() {
    export PS1="$(~/src/dotfiles/powerline-shell/powerline-shell.py $? 2> /dev/null)"
}

export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

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
export PATH=/usr/local/bin:/usr/local/sbin:~/.ec2/bin:~/bin:$PATH
if [ -d ~/.rvm/bin ]; then
    export PATH="$PATH:$HOME/.rvm/bin"
fi
if [ -d /usr/local/heroku/bin ]; then
    ### Added for he Heroku Toolbelt
    export PATH="/usr/local/heroku/bin:$PATH"
fi

if [ -d /usr/local/go/bin ]; then
    export PATH="$PATH:/usr/local/go/bin"
fi

mkdir -p ~/.go
mkdir -p ~/.go/src
mkdir -p ~/.go/pkg
mkdir -p ~/.go/bin
export GOPATH=~/.go
export PATH="$PATH:$GOPATH/bin"
export PATH="$HOME/.cargo/bin:$PATH"

export MANPATH=$MANPATH:/opt/local/share/man
if [ -s ~/bin/mvim ]; then
    alias vi='~/bin/mvim -v'
fi
export PIP_DOWNLOAD_CACHE=~/.pip/cache
export PIP_RESPECT_VIRTUALENV=true
#export PYTHONDONTWRITEBYTECODE=True

# Enable git command line completion.
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
. /usr/local/etc/bash_completion.d/git-completion.bash
fi

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export DEBEMAIL="heckj@mac.com"
export DEBFULLNAME="Joe Heck"

# borrowed from
# http://stackoverflow.com/questions/18880024/start-ssh-agent-on-login
SSH_ENV="$HOME/.ssh/environment"

function start_agent {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add;
}

# Source SSH settings, if applicable
 if [ -f "${SSH_ENV}" ]; then
     . "${SSH_ENV}" > /dev/null
     #ps ${SSH_AGENT_PID} doesn't work under cywgin
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
         start_agent;
     }
else
    start_agent;
fi

export NVM_DIR=~/.nvm

if [ -f /usr/local/opt/nvm/nvm.sh ]; then
    source /usr/local/opt/nvm/nvm.sh
fi

if [ -f /usr/local/bin/direnv ]; then
    eval "$(direnv hook bash)"
fi

if [ -f /usr/libexec/java_home ]; then
    export JAVA_HOME=$(/usr/libexec/java_home)
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/heckj/bin/google-cloud-sdk/path.bash.inc' ]; then source '/Users/heckj/bin/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/heckj/bin/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/heckj/bin/google-cloud-sdk/completion.bash.inc'; fi

