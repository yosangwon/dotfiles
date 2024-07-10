# yosangwon's dotfiles

## Usage

install git

```
# macOS will ask you to install Xcode command line utilities when you type git in the terminal
git

# something other than macOS you should install git with your package manager
sudo apt install git
```

create ssh key

```
ssh-keygen -t ed25519
cat ~/.ssh/id_ed25519.pub | pbcopy
```

[go to github settings and register it to your account](https://github.com/settings/keys)

then clone this repository and run `./install`. Note: it will ask you to type something.

```
mkdir ~/projects
git clone git@github.com:yosangwon/dotfiles ~/projects/dotfiles
cd ~/projects/dotfiles && ./install
./afterbrew # if necessary
```

have fun.

## this repository contains
- zsh, neovim, tmux configuration
- global gitignore file
- shell script which creates gitconfig file
- some ruby code and shell script snippets which I use frequently
- shell script which registers those to your system
- shell script which installs something I use frequently and does everything except things described above.
