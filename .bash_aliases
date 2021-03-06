#!/bin/bash

# Prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@ \[\033[01;34m\]\w\[\033[00m\] ($(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2)): '

# vscode
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

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
alias gco='git checkout'
alias stt='git status'
alias gc='git clone'
alias gcr='git clone --recurse-submodules'

# github
alias phub='git push  https://github.com/arikhativa/$(basename `git rev-parse --show-toplevel`)'
alias pullhub='git pull  https://github.com/arikhativa/$(basename `git rev-parse --show-toplevel`)'

# files
alias myalias='code ~/.zshrc'

# 42
alias norm='norminette -R CheckForbiddenSourceHeader'
alias g='gcc -Wall -Werror -Wextra'

# Shell
alias t='touch '
alias c='cat '
alias val='valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes '
