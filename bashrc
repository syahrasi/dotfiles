# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

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
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

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

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# my customisation
export EDITOR="/usr/local/bin/vim"
export GIT_EDITOR='/usr/local/bin/vim'

export PATH="~/.tmuxifier/bin:$PATH"
#
eval "$(tmuxifier init -)"

alias mxf="tmuxifier"

function mx {
  echo "tmuxifier ${1} ${2}"
  tmuxifier $1 $2
}

# # rbenv settings
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
# export PATH="$HOME/.gem/ruby/2.1.2/bin:$PATH"

chruby ruby-2.1

alias sudo='sudo '

# thor
# /home/syahrasi/.gem/ruby/2.1.2/bin/thor
alias thor="/home/syahrasi/.gem/ruby/2.1.2/bin/thor"

# missing path
export PATH=$HOME/local/bin:$PATH
export PATH=/opt/vagrant/bin:$PATH
export PATH=/usr/local/bin:$PATH

# ruby pws / password manager gem
export PWS="$HOME/.safe/pws"
alias pw='pws'

# todo.txt
export TODOTXT_DEFAULT_ACTION=ls
alias t='~/todo/todo.sh'

#useful aliases
alias go='gnome-open .'
alias lgrep='ls -la | grep'
alias ggrep='gem list | grep'
alias pgrep='sudo netstat -lpn | grep'
alias exshell='exec $SHELL'
alias cd.='cd ..'
alias cd..='cd ../..'
alias cd...='cd ../../..'
alias bx='bundle exec'
alias rserver='ruby -run -e httpd . -p5000'
alias pserver='php -S localhost:5555'

alias grabpw='wget https://raw.github.com/somatonic/PWOnlineInstaller/master/grabpw.php'

alias csscompile="compass compile --output-style compressed --force"
alias bxcsscompile="bundle exec compass compile --output-style compressed --force"

alias phantomjs="/home/syahrasi/phantomjs-1.9.2-linux-i686/bin/phantomjs"


alias clipboard='xclip -sel clip'

# Generator Stuff
alias g:m="php artisan generate:model"
alias g:c="php artisan generate:controller"
alias g:v="php artisan generate:view"
alias g:s="php artisan generate:seed"
alias g:mig="php artisan generate:migration"
alias g:r="php artisan generate:resource"

alias art="php artisan --env='local'"

# activate 256 color support for xterm
if [ -n "$DISPLAY" -a "$TERM" == "xterm" ]; then
    export TERM=xterm-256color
fi

# call tmux with 256 color support
alias tmux="TERM=screen-256color-bce tmux"

# custom bash prompt with optional git status
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\e[1;33m\]...\[\e[0m\]\n\[\e[31;1m\]\u@\h\[\e[0m\] | \[\e[36m\]\@\[\e[0m\]\[\e[0;33m\] ://\w \[\e[0m\]\[\e[32m\]$(__git_ps1 "[%s]")\[\e[0m\]\n\$ '

# git autocompletion
source ~/.git-completion.bash

#add current dir to tab title
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'

# export Timezone
TZ='Asia/Makassar'
export TZ

#elixir path
export PATH="$PATH:~/elixir/bin"
alias mix="elixir ~/elixir/bin/mix"

function explain {
  # base url with first command already injected
  # $ explain tar
  #   => http://explainshel.com/explain/tar?args=
  url="http://explainshell.com/explain/$1?args="

  # removes $1 (tar) from arguments ($@)
  shift;

  # iterates over remaining args and adds builds the rest of the url
  for i in "$@"; do
    url=$url"$i""+"
  done

  # opens url in browser
  gnome-open $url
}

# omniref.com
function ref {
  gnome-open http://www.omniref.com/?q="$*"
}

function prependDate {
  # date=$(date +%d-%m-%Y)
  date=$(date -d "now ${2} day" +%d-%m-%Y)
  newname=${date}_${1}
  mv $1 $newname
  echo "Renaming ${1} to ${newname}"
}

function checkdate {
  date=$(date +%Y%m%d)
  echo $date
}

# Create a directory then cd into it
function mkdircd {
  mkdir $1 && cd $_
}

function docup {
 curl -X POST --data-urlencode content@"$1" http://documentup.com/compiled > "`basename $1 .md`.html"
}

function tardir {
  find * -type d -maxdepth 0 -exec tar czvf {}.tar.gz {}  \;
}
