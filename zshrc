unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/helpfiles

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dougireton"

# Example aliases
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"

# proxy/noproxy
alias proxy=". ~/bin/proxy.sh"
alias noproxy=". ~/bin/noproxy.sh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
battery
brew
brew-cask
bundler
colored-man
colorize
gem
git
history
jira
jsontools
knife
rbenv
ruby
tmux
tmuxinator
vagrant
vi-mode
web-search
)

source $ZSH/oh-my-zsh.sh

# aws cli zsh completion
if [[ -r /usr/local/share/zsh/site-functions/_aws ]]; then
  source /usr/local/share/zsh/site-functions/_aws
fi

# set path (PATH) here as per Mislav's comments in https://github.com/sorin-ionescu/prezto/issues/381
path=(/usr/local/bin $path)

[[ -x ~/Applications/packer/packer ]] && path+=~/Applications/packer
[[ -d ~/chef/infeng/code/ruby ]] && path+=~/chef/infeng/code/ruby
path+=~/bin

# remove duplicate entries
typeset -U path

export EDITOR='vim'
export VISUAL='vim'

# setup vi mode
bindkey -M viins 'kj' vi-cmd-mode

# this is equivalent to set backspace=start in vim
bindkey '^?' backward-delete-char

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
