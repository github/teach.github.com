---
chapter: Reflog
layout: slide
tags: ['reflog']
categories: ['slidecontent']
---

	git reflog -<n>


{% capture notes %}
* References the commit associated with the command
* Common commands include:
	* commit
	* rebase
	* reset

* `gitk --all `git reflog | cut -c1-7``
* `git log --pretty=oneline --abbrev-commit --graph --decorate `git reflog | cut -c1-7``

* `git reflog expire --expire=now --all`
{% endcapture %}
{% include hydeslides/core/notes %}