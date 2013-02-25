---
layout: categorycontents
title: List of Class Notes
description: Notes, resources, command line history, and chat transcripts of delivered GitHub classes.
showinnav: true
categories: classnotes
---

<ul>
{% for page in site.html_pages sort_by:page.eventdate order:ascending %}
{% if page.categories == classnotes %}
{% if page.showinnav != true %}
<li>{{ page.eventdate }} • <a href="{{ page.url | remove:'index.html' }}">{{ page.title }}</a></li>
{% endif %}
{% endif %}
{% endfor %}
</ul>
