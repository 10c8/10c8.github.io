#!/bin/bash
git checkout master
git merge source
clear

echo '[build]'
bundle exec jekyll build
echo

echo '[commit]'
git add -A
git commit -m'Build website.'
echo

echo '[push]'
git push -u origin master
git checkout
