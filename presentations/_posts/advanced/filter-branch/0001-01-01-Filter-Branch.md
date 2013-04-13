---
chapter: Filter-Branch
layout: slide
tags: ['advanced/filter-branch']
---

	# Filesystem
	git filter-branch --tree-filter 'rm -f <filenamepattern>' <branch>

	# Repository
	git filter-branch --index-filter 'git rm --cached --ginore-unmatch <filename>' <branch>

	# Directory
	git filter-branch --subdirectory-filter <dir-name> -- --all