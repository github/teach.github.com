# Viewing Logs and Files

## Log history
Show all history

    git log

Show all history as a series of patches

    git log -p

Show a week of history

    git log --since="one week ago"

Show the history of one file

    git log -- SOMEFILENAME

Show the number of lines modified (statistics)

    git log --stat

Show the diff (patch) of code changes from a specific commit

    git log trunk~259 -p
    git log HEAD^^^ -p

Show a finite range of commit messages

    git log HEAD~4..HEAD^1

## Showing Contents
Show the contents of the most recent commit in patch format

    git show

Show the contents of a arbitrary commit

    git show HEAD^^

## Composition of a file
Visualize the file's commits that brought it to the current state, including  developer, branch, date

    git blame FILENAME

## Shortlog
For release notes

    git shortlog

Author summary only

    git shortlog -s -10

## Describe
Short notation to refer to a commit based on its position relative to a branch point.

    git describe

## Viewing a specific file
To view the contents of a file at a specific point in time, 

    cat-file
