# Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.profile

# Path to oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Old theme settings for powerlevel9k
#POWERLEVEL9K_MODE="nerdfont-complete"
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶ "
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir vcs dir_writable)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs root_indicator command_execution_time time)
#POWERLEVEL9K_CHANGESET_HASH_LENGTH=8
#POWERLEVEL9K_VCS_GIT_ICON=""
#POWERLEVEL9K_VCS_GIT_GITHUB_ICON=""
#POWERLEVEL9K_VCS_GIT_GITLAB_ICON=""
#POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON=""
#POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind git-stash git-tagname)
#POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='black'
#POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='yellow'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Oh-my-zsh config
CASE_SENSITIVE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Oh-my-zsh plugins
plugins=(gitfast zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Travis tool
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh
