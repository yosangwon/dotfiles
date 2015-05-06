alias tmux="TERM=screen-256color-bce tmux"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

. `python -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())"`/powerline/bindings/zsh/powerline.zsh
. `python -c "import site; print site.getsitepackages()[0]"`/powerline/bindings/zsh/powerline.zsh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
alias :q=exit
