#!/bin/bash
CURRENT_DATE=$(date +%Y-%m-%d)

git checkout master
git merge source
clear

echo '[build]'
bundle exec jekyll build
echo

echo '[commit]'
git add -A
git commit -m"[$CURRENT_DATE] Update website."
echo

echo '[push]'
git push -u origin master
git checkout
