---
chapter: Ignore
layout: slide
tags: ['ignore']
categories: ['slidecontent']
---

* Create a `.gitignore` in project root
* Add patterns:

	`*.log`

	`output/`

	`!special.log`

{% capture notes %}
glob patterns, one per line
{% endcapture %}
{% include hydeslides/core/notes %}