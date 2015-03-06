alias tmux="TERM=screen-256color-bce tmux"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

. `python -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())"`/powerline/bindings/bash/powerline.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
