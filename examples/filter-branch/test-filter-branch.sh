#!/bin/bash
set -o verbose #echo on

tar -xvf originalrepo.tar

echo ~~~ Every recipe aims to keep what is in the c directory while pruning away everything else.
echo 
sleep 3


echo ~~~ Filter and relocate a subdirectory to the root
sleep 3
rm -rf filteredrepo.filtersubdir
git clone --no-hardlinks originalrepo filteredrepo.filtersubdir
cd filteredrepo.filtersubdir
git filter-branch --subdirectory-filter c HEAD

git reflog expire --expire=now --all
git reset --hard
git gc --aggressive --prune=now
cd ..

echo 
echo ~~~ Filter and relocate a subdirectory to the root while keeping tags and branches
sleep 3
rm -rf filteredrepo.filtersubdirall
git clone --no-hardlinks originalrepo filteredrepo.filtersubdirall
cd filteredrepo.filtersubdirall
git filter-branch --subdirectory-filter c HEAD -- --all

git reflog expire --expire=now --all
git reset --hard
git gc --aggressive --prune=now
cd ..


echo 
echo ~~~ Keep only the references to the c directory, removing all a and b files
sleep 3
rm -rf filteredrepo.treefilter
git clone --no-hardlinks originalrepo filteredrepo.treefilter
cd filteredrepo.treefilter
git filter-branch --tree-filter "rm -rf a b" --prune-empty HEAD

git reflog expire --expire=now --all
git reset --hard
git gc --aggressive --prune=now
cd ..


echo 
echo ~~~ Keep the subdirectory that matches the given pattern
sleep 3
rm -rf filteredrepo.indexfilter
git clone --no-hardlinks originalrepo filteredrepo.indexfilter
cd filteredrepo.indexfilter
git filter-branch --index-filter "git rm -r -f --cached --ignore-unmatch a b" --prune-empty HEAD

git reflog expire --expire=now --all
git reset --hard
git gc --aggressive --prune=now
cd ..


echo 
echo ~~~ Keep the subdirectory that matches the given pattern while re-writing tags and branches
sleep 3
rm -rf filteredrepo.indexfiltercatall
git clone --no-hardlinks originalrepo filteredrepo.indexfiltercatall
cd filteredrepo.indexfiltercatall
git filter-branch --index-filter "git rm -r -f --cached --ignore-unmatch a b" --prune-empty --tag-name-filter cat -- --all

git reflog expire --expire=now --all
git reset --hard
git gc --aggressive --prune=now
cd ..

set +o verbose #echo off