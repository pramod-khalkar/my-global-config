export PATH="$PATH:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/custom-commands"
#alias defined here 
alias work="cd ~/Documents/workspace"
alias job="cd ~/Documents/job-hunt-docs"
alias docs="cd ~/Documents"
alias vimconfig="vi -p ~/.vimrc ~/.ideavimrc"
alias shellconfig="vi ~/.zshrc"
alias allconfig="vi -p ~/.vimrc ~/.ideavimrc ~/.zshrc"
alias c="clear"
# This is to push updated vimrc and zshrc (shell) to git repo
alias gcp="/Users/pramod/Documents/workspace/config-docs/my-global-config/git-config-push"
# apply current shell config
alias uzsh="source ~/.zshrc"
# My scan docs sync to cloud both directions
alias mds="rsync -rtuv --progress /Users/pramod/Documents/family-docs/my/scan-docs/* /Users/pramod/Library/Mobile\ Documents/com~apple~CloudDocs/sync-docs/scan-docs && rsync -rtuv --progress /Users/pramod/Library/Mobile\ Documents/com~apple~CloudDocs/sync-docs/scan-docs/* /Users/pramod/Documents/family-docs/my/scan-docs"
# list docker images
alias dml="docker image ls"
# function to get inside docker image
# $1= docker image name
dmi(){
  docker run -it --entrypoint bash $1
}
# function to build docker image first param is tag name and second docker file name optional
# $1= tag name
# $2= docker file name OPTIONAL
dmb(){
if [[ -z $2 ]]; then
  docker build -t $1 .
else
  docker build -t $1 -f $2 .
fi
}
# funtion to delete docker image
# $1= docker image name
dmd(){
  docker image rm -f $1
}
