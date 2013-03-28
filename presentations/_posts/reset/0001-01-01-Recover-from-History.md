---
chapter: Reset
layout: slide
tags: ['reset']
categories: ['slidecontent']
---



	$ git reset --soft <REF>

	$ git reset --mixed <REF>

	$ git reset --hard <REF>


{% capture notes %}
Reset modifies index, staging, and/or working dir

--mixed as default when no option flag passed

--hard is heavy handed, modifying index and working dir
{% endcapture %}
{% include hydeslides/notes %}