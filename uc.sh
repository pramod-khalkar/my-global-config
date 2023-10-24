#!/bin/bash
set -ex
cd /Users/pramod/Documents/workspace/config-docs/my-global-config
cp ~/.vimrc my-global-vimrc.txt
cp ~/.zshrc my-global-shellrc.txt
cp ~/.ideavimrc my-global-intellij-vimrc.txt 
cp ~/custom-commands/* my-global-script

git checkout develop
git status
read -p "Do you wish to push(y/n)" ans 
if [[ $ans == "y" ]]
then
	git add .
	git status
	git commit -m "auto push"
	git push 
	echo "pushed"
else
	echo "Exiting gracefully"
fi
