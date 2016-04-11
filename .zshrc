alias tmux="TERM=screen-256color-bce tmux"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

. `python -c "import site; print site.getsitepackages()[0]"`/powerline/bindings/zsh/powerline.zsh

alias :q=exit
export PATH="$PATH:$HOME/bin"
export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"
