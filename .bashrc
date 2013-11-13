# JAVA
export PATH=$PATH:/Library/Java/JavaVirtualMachines/1.6.0_29-b11-402.jdk/Contents/Home/bin
export PATH=$PATH:/usr/local/apache-maven/apache-maven-3.0.4/bin:$HOME/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/texbin:/usr/texbin/

#### Play
export PATH=$PATH:~/workspace/RunableX/play-2.1.1

#### Go
export GOPATH=$HOME/Code/go
export PATH=$PATH:$GOPATH/bin

### EDITOR
export EDITOR=vi

### POSTGRES
###  postgres.app
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

### Maven, android for android-bootstrap
export M2_HOME=/usr/share/maven
export M2_BIN=/usr/share/maven/bin
export ANDROID_HOME=~/workspace/androidSDK
export ANDROID_SDK=$ANDROID_HOME
export ANDROID_TOOLS=$ANDROID_HOME/tools
export PATH=$PATH:$M2_BIN:$ANDROID_HOME:$ANDROID_TOOLS

# Alias
alias ll='ls -laG'
#alias rake="noglob rake"
alias rake="bundle exec rake"
alias pserver="open http://localhost:8000 && python -m SimpleHTTPServer"
alias vi="/usr/local/bin/vi"
alias e="/usr/local/Cellar/emacs/HEAD/Emacs.app/Contents/MacOS/Emacs -nw"
alias emacs=e
alias mou="open -a Mou"
alias blog="cd $HOME/Site/kyktommy.github.io/"
alias st="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias jist="jist -p -c"
alias htdocs="cd /Applications/MAMP/htdocs/"
alias mysql="/Applications/MAMP/Library/bin/mysql -uroot -p"
alias swipl="/usr/local/Cellar/swi-prolog/6.2.3/bin/swipl"
alias rl="source $HOME/.zshrc"

alias irb=use_pry
use_pry() {
  if which pry >/dev/null; then
    pry
  else
    irb
  fi
}

# load nvm
. $HOME/nvm/nvm.sh

# rbenv init
eval "$(rbenv init - --no-rehash)"

# load kyk commands automatically
eval "$($HOME/.kyk/bin/kyk init -)"

# Opens the github page for the current git repository in your browser
# git@github.com:jasonneylon/dotfiles.git
# https://github.com/jasonneylon/dotfiles/
function gh() {
  giturl=$(git config --get remote.origin.url)
  if [ "$giturl" == "" ]
    then
     echo "Not a git repository or no remote.origin.url set"
     exit 1;
  fi
 
  giturl=${giturl/git\@github\.com\:/https://github.com/}
  giturl=${giturl/\.git//}
  echo $giturl
  open $giturl
}

# Random Number (32)
alias rand='ruby -e "puts rand(32**32).to_s(32)"'

# Ctags brew version
alias ctags="/usr/local/Cellar/ctags/5.8/bin/ctags"

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

[ -n "$TMUX" ] && export TERM=xterm-256color

# if [ -x /usr/local/bin/tmux ]; then
#   tmux attach -t base || tmux new -s base
# else
#   echo "no tmux"
# fi

