#!/bin/sh

# Build a repository that has forward-only commits
git init rubytest
cd rubytest

git am ../*.patch
