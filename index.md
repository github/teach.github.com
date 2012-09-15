---
layout: bare
title: Welcome
description: A comprehensive set of course materials used to teach Git and GitHub.
---

# What is this?
Take a look at our [README](README.html) to discover why we released these materials as open source.  and how to contribute and use them.

<div id="pages">
  <h2>Pages</h2>
  <ul>
    {% for page in site.html_pages %}
      {% if page.title %}
        <li><a href="{{ page.url }}">{{ page.title }}</a></li>
      {% endif %}
    {% endfor %}
  </ul>
</div>

<div id="posts">
  <h2>Blog Posts</h2>
  <ul>
    {% for post in site.posts %}
      <li><span>{{ post.date | date_to_string }}</span> - <a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
</div>
