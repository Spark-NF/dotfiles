source ~/.profile

# Path to oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# Theme settings for powerlevel9k
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="\n\e[1D"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶\e[1C"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator history)
POWERLEVEL9K_CHANGESET_HASH_LENGTH=8
POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind git-stash git-tagname)
ZSH_THEME="powerlevel9k/powerlevel9k"

# Oh-my-zsh plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh
