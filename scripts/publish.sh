#!/bin/bash
CURRENT_DATE=$(date +"%Y-%m-%d %T")

rm -rf _site_old
mv _site _site_old

git checkout master
git merge source
clear

echo '[build]'
bundle exec jekyll build --incremental
echo

echo '[commit]'
git add -A
git commit -m"[$CURRENT_DATE] Update website."
echo

echo '[push]'
git push -u origin master
git checkout
