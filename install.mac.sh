# install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install Vundlevim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install other usual stuff
brew install nvim tmux zsh ffmpeg antigen chruby ruby-install
brew cask install google-cloud-sdk

# git configs
git config --global core.editor `which nvim`
git config --edit --global
