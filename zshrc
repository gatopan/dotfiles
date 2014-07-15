export ZSH=$HOME/dotfiles/oh-my-zsh
ZSH_THEME="agnoster"
plugins=(bundler rails git gem meteor capistrano tmux heroku)
source $ZSH/oh-my-zsh.sh
export PATH=$HOME/bin:/usr/local/bin:$PATH
if which rbenv &>/dev/null ; then
  eval "$(rbenv init - --no-rehash)"
fi
# alias tmux="TERM=screen-256color-bce tmux"

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
