#!/bin/bash -

for l in color.status color.diff color.branch color.interactive color.grep color.ui color.showbranch
do 
    git config --system $l 'auto'
done 
