#!/bin/bash -

EMAIL="$USER@$(hostname)"


if [ "$UID" -eq "0" ]
then
    for l in color.status color.diff color.branch color.interactive color.grep color.ui color.showbranch
    do 
        git config --system $l 'auto'
    done
fi


git config --global sendemail.confirm "auto"
git config --global format.headers "Organization: git-foo"
git config --global format.subjectprefix "CHANGE"
git config --global format.suffix ".txt"
git config --global format.numbered "auto"
#git config --global format.to "user1@centos62.example.com"
git config --global format.cc "$EMAIL"
git config --global format.attach
git config --global format.signoff "true"
git config --global user.name "$USER"
git config --global user.email "$EMAIL"
