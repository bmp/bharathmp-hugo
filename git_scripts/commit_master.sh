#!/bin/sh

DIR=$(dirname "$0")

cd $DIR/..

if [[ $(git status -s) ]]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

echo "Checking out master branch into public"
git worktree add -B master public upstream/master

echo "Generating site"
hugo

echo "Updating master branch"
cd layouts && git add --all && git commit -m "Publishing to master (publish.sh)"
cd ..
cd static && git add --all && git commit -m "Publishing to master (publish.sh)"
cd ..
cd themes && git add --all && git commit -m "Publishing to master (publish.sh)"
cd ..
git add README.md && git commit -m "Publishing to master (publish.sh)"

git push upstream master
