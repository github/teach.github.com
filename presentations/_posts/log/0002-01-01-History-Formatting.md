---
chapter: Log
layout: slide
tags: ['log']
categories: ['slidecontent']
---

	# Control the output format
	git log --format=full

	# Control the output format
	git log --format=fuller

	# Control the output format
	git log --format=raw

{% capture notes %}
# Control the output format
git log --format=email

# Control the output format
git log --format=format:<pattern>
{% endcapture %}
{% include hydeslides/notes %}