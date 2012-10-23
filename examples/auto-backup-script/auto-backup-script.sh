#!/bin/ruby

# From Scott Chacon's "Three Trees" talk
# https://gist.github.com/969700

back_branch = 'refs/heads/backup'

`rm /tmp/backup_index`
ENV['GIT_INDEX_FILE'] = '/tmp/backup_index'

last_commit = `git rev-parse #{back_branch}`.strip
last_tree = `git rev-parse #{back_branch}^{tree}`.strip

`git add --all`
next_tree = `git write-tree`.strip

if last_tree != next_tree
  extra = last_commit.size == 40 ? "-p #{last_commit}" : ''
  csha = `echo 'back' | git commit-tree #{next_tree} #{extra}`
  `git update-ref #{back_branch} #{csha}`
end
