# ZSH shell forcing on some Cygwin
if [ "$SHELL" = "/bin/zsh" ]; then
    if which zsh >/dev/null; then
        exec zsh
        return
    fi
fi

source ~/bin/git-prompt.sh

# Git in PS1
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="verbose"
export GIT_PS1_SHOWCOLORHINTS=1

# PS1
PROMPT_COMMAND='__git_ps1 "$(echo "\n\[\033[1;37m\]\342\224\214(`if [[ ${EUID} == 0 ]]; then echo "\[\033[01;31m\]\h"; else echo "\[\033[01;35m\]\u@\h"; fi`\[\033[1;37m\])\342\224\200(`if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi`\[\033[1;37m\])\342\224\200(\[\033[1;33m\]\w\[\033[1;37m\])\[\033[1;37m\]")" "\n\342\224\224\342\224\200> \[\033[0m\]" "\342\224\200(%s)"'

# Aliases
source ~/.profile
