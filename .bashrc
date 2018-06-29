source ~/bin/git-prompt.sh

# Home bin
export PATH=$PATH:~/bin

# Git in PS1
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="verbose"
export GIT_PS1_SHOWCOLORHINTS=1

# PS1
PROMPT_COMMAND='__git_ps1 "$(echo "\n\[\033[1;37m\]\342\224\214(`if [[ ${EUID} == 0 ]]; then echo "\[\033[01;31m\]\h"; else echo "\[\033[01;35m\]\u@\h"; fi`\[\033[1;37m\])\342\224\200(`if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi`\[\033[1;37m\])\342\224\200(\[\033[1;33m\]\w\[\033[1;37m\])\[\033[1;37m\]")" "\n\342\224\224\342\224\200> \[\033[0m\]" "\342\224\200(%s)"'

# Aliases
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l'
alias make="make -s"
alias g="git"
alias gdb="gdb -q"
alias ag='ag --pager="less -XFR"'
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# CD up aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# Color cat/less
alias cnl='nl -w 4 -ha -ba -fa -p'
function ccat() {
    pygmentize -f terminal "$1" | cnl
}
function cless() {
    ccat "$1" | less -R
}
function hcat() {
    highlight -O ansi --force "$1" | cnl
}
function hless() {
    hcat "$1" | less -R
}
