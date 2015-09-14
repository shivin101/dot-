#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


export EDITOR='vim'
alias gcc='gcc -Wall -Werror -Wuninitialized'
alias g++='g++ -Wall -Werror -Wuninitialized -std=c++14 -D EVIL_DEBUG'
alias die='shutdown -P now'
alias mp="ncmpcpp"
alias gt="gnome-terminal"

export PATH="$PATH:/home/shivin/.gem/ruby/2.2.0/bin"

function proxy_on {
    export http_proxy="proxy.iiit.ac.in:8080"
    export https_proxy=$http_proxy
    export ftp_proxy=$http_proxy
    export no_proxy="localhost,127.0.0.1,10.2.16.70,ss1.iiit.ac.in"
}

function proxy_off {
    unset http_proxy https_proxy ftp_proxy no_proxy
}

proxy_on
