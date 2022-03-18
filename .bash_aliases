#!/bin/bash

# Prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

function dx() {
   docker exec -it $1 bash
}

# docker
alias dlogs='docker logs '
alias dls='docker image ls'
alias dps='docker ps -a'
alias drmall='docker rm -f $(docker ps -a -q)'
alias drm='docker rm -f '
export -f dx

# git
alias add='git add .'
alias cmt='git commit -m '
alias push='git push'
