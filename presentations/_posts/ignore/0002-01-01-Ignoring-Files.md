---
chapter: Ignore
layout: slide
tags: ['ignore']
categories: ['slidecontent']
---

Create a `.gitignore` in project root



	*.log
	*.tmp
	target
	output/
	!special.log

{% capture notes %}
glob patterns, one per line
{% endcapture %}
{% include hydeslides/notes %}