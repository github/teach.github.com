---
layout: categorycontents
title: List of Class Notes
description: Notes, resources, command line history, and chat transcripts of delivered GitHub classes.
showinnav: true
---

<ul>
{% for page in site.html_pages %}
{% if page.categories == classnotes %}
{% if page.showinnav != true %}
<li><a href="{{ page.url | remove:'index.html' }}">{{ page.title }}</a></li>
{% endif %}
{% endif %}
{% endfor %}
</ul>
