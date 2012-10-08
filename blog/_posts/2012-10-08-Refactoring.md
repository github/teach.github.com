---
layout: blogpost
title: Material Organization Refactoring
description: A Fall freshening of the content organization.
---

Since these materials are still in beta and now have had growing community contributions, a large refactoring was in order to better use the dynamicism of the [Jekyll](http://jekyllrb.com) content system and more easily allow for contributions.

Each post now dynamically includes itself in a Jekyll category if it placed beneath a `_pages` folder in a category-named-folder.  This leads to the dynamic generation of category-specific pages, like that of the [Outlines category](http://teach.github.com/outlines/index.html).

Additionally, this allows for a [site-map style page](http://teach.github.com/categories/index.html) that lists all pages in all categories.

Lastly, we've enabled related-content on [content pages](http://teach.github.com/blog/Git-Beyond-the-Basics-Proposal-and-Outline/). GitHub Pages only support the _non -lsi_ related-content links, so the relevance isn't as high as we'd like, but gets the concept started.
