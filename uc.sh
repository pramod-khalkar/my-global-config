#!/bin/zsh

cat ~/.vimrc > my_global_vimrc.txt
cat ~/.zshrc > my_global_shellrc.txt
cat ~/.ideavimrc > my_global_intellij_vimrc.txt 

git checkout -b develop
git add .
git status

echo "Do you wish to push?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) 
git commit -m "auto push"
git push develop
 break;;
        No ) exit;;
    esac
done
