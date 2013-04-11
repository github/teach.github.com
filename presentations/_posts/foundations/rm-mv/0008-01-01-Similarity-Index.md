---
chapter: Remove & Move
layout: slide
tags: ['rm-mv']
categories: ['slidecontent']
---

	# Renames shown
	git log --stat -M

	# Show commits from previous filename
	git log --follow <file>

	# Copies & renames shown
	# (superset of -M)
	git log --stat -C

{% capture notes %}

Noting "100%" on commit output

{% endcapture %}
{% include hydeslides/notes %}