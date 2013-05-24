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

* `git reflog expire --expire=now --all`
{% endcapture %}
{% include hydeslides/core/notes %}