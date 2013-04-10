---
chapter: Remote Workflows
layout: slide
tags: ['remote']
---

* Cleaning up remote branches - Jordan
    * `git push <remote> :<branch>` to delete remote
    * `git remote show <remotename>`
    * `git fetch --prune <remote>` or `git push --prune <remote> <branch>`
    * Delete without prune: 
        * `git push :branchname`