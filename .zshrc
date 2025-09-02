export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git tmux)

source $ZSH/oh-my-zsh.sh
 
 SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

alias ga="git add ."
alias gc="git commit -m"
alias gd="git diff"
alias gs="git status"
alias gch="git checkout"
alias gpull="git pull"
alias gpush="git push"
alias pf="cd $HOME/projects"
alias fac="cd $HOME/facilit/target3"
alias tg="fac; cd target2;"
alias op-finished="notify-send 'The operation was completed'"
alias dfast="tg; ant deploy-fast && op-finished"
alias dfull="tg; ant deploy-full &&  op-finished"
alias cad="tg; ant clean-and-deploy && op-finished"
alias gantt="fac; cd portal/jboss-eap-6.4/standalone/deployments/ROOT.war/html/portlet/facilit/scheduler; yarn"
alias asd="g++ -std=c++17 -o2 Wshadow -Wall"
alias iop="g++ -o2 -std=c++17"
alias dgantt="fac; cd addons/scheduler/ ; ant deploy-fast; op-finished;"
alias search-file="find -depth -name"
alias kapp="kill -9 `ps aux | grep wildfly | grep -v grep | awk '{print $2}'`"
#/usr/bin/flameshot gui - keyboard shortcut

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# Auto-start tmux if not already inside one
if command -v tmux >/dev/null 2>&1; then
  if [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
  fi
fi



export ANDROID_HOME=/home/dev/Android/Sdk
export PATH="${PATH}:${ANDROID_HOME}tools/:${ANDROID_HOME}platform-tools/"
