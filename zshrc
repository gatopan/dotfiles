export ZSH=$HOME/dotfiles/oh-my-zsh
ZSH_THEME="agnoster"
plugins=(bundler rbenv git brew gem meteor capistrano tmux heroku bower)
source $ZSH/oh-my-zsh.sh
export PATH=$HOME/bin:/usr/local/bin:$PATH
if which rbenv &>/dev/null ; then
  eval "$(rbenv init - --no-rehash)"
fi

# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PERL_MB_OPT="--install_base \"/Users/ivan/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/ivan/perl5"; export PERL_MM_OPT;
