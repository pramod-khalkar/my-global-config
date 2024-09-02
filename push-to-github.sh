#!/bin/bash
# Script to push all local vimrc,ideavimrc,bashrc,custom commands to git repo
set -e

#copying shell/terminal config
cp ~/.zshrc ./terminal
cp ~/.zprofile ./terminal

# copying vim config
cp ~/.vimrc ./vim
cp ~/.ideavimrc ./vim
cp ~/.vim/ftplugin/* ./vim/vim/ftplugin/

# copying nvim config
# mkdir -p ./nvim/.config/nvim && cp -rf ~/.config/nvim/** ./nvim/.config/nvim/
cp -rf ~/.config/nvim/** ./nvim/.config/nvim/

# copying tmux config
cp ~/.tmux.conf ./tmux

# copying custom commands
cp ~/custom-commands/* ./custom-commands/

#git checkout develop

git status

read -p "Do you wish to push(y/n)" ans

if [[ $ans == "y" || $ans == "Y" ]]; then
  git add .
  git status

  read -p "What would be the commit message?: " cmsg
  if [[ -n $cmsg ]]; then
    git commit -m "auto push"
    git push
    echo "update & pushed"
  else
    echo "Please set commit message"
  fi

fi
