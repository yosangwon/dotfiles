alias tmux="TERM=screen-256color-bce tmux"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

echo "Please wait.. because \033[0;31mpython is too slow\033[0m"
. "$(pip show powerline-status | grep Location: | cut -d " " -f 2)/powerline/bindings/zsh/powerline.zsh"
ZSH_THEME="robbyrussell"

alias :q=exit
export PATH="$PATH:$HOME/bin"
export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"

export PATH="$HOME/.bin:$PATH"

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"
eval "$(rbenv init - --no-rehash)"

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

plugins=(git bundler osx rake ruby vi-mode)

export PATH="${PWD}/depot_tools:${PATH}"
