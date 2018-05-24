#! /usr/bin/bash

BRANCH=$1
if git push --delete origin $BRANCH
then
    git br -d $BRANCH
fi
