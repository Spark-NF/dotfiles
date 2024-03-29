# Home bin
export PATH=$PATH:~/bin

# Detect platform
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
    platform='linux'
elif [[ "$unamestr" == 'FreeBSD' ]]; then
    platform='freebsd'
elif [[ "$unamestr" == 'Darwin' ]]; then
    platform='macos'
fi

# Aliases
if [[ $platform == 'linux' ]]; then
    alias ls='ls -F --color=auto --show-control-chars'
elif [[ $platform == 'freebsd' || $platform == 'macos' ]]; then
    alias ls='ls -F -G'
fi
alias ll='ls -l'
alias make="make -s"
alias g="git"
alias gdb="gdb -q"
alias ag='ag --pager="less -XFR"'
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
if [[ $platform == 'macos' ]]; then
    alias allow='sudo xattr -r -d com.apple.quarantine'
fi

# Colorize grep
alias grep='grep --color'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

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
