---
chapter: Rebase
layout: slide
tags: ['rebase']
categories: ['slidecontent']
---


	git rebase <branch>


{% include hydeslides/notes-open.html %}
__Retrieve upstream changes__, 

__relocate__ your local changes to the end

	git pull --rebase

The same as

	git checkout master
	git rebase origin/master

	git checkout <featurebranch>
	git rebase master
{% include hydeslides/notes-close.html %}