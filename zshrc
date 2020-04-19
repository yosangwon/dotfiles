source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle ruby
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme "agnoster"

# Tell antigen that you're done.
antigen apply

alias :q=exit
alias berc="bundle exec rake console"
alias be="bundle exec"
alias beg="bundle exec guard"
export PATH="$PATH:$HOME/bin"
export PATH="$HOME/.bin:$PATH"

alias vim="nvim"

alias refrezsh="exec $SHELL"
alias mastaa="git checkout master && git pull"
alias mastar="mastaa && bundle"

kubesh() { kubectl exec -it $(kubectl get pod -l "app=$1" -o jsonpath='{.items[0].metadata.name}') -- bash }

if [ "$(uname -s)" = "Darwin" ]; then
  source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
  source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
fi

export LC_ALL=en_US.UTF-8
