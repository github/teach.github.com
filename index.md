---
layout: bare
title: Welcome
description: A comprehensive set of course materials used to teach GitHub and Git.
categories: none
---

<h1>GitHub Official Teaching Materials (BETA)</h1>
<div class="left">
  <p>This is the official set of <a href="http://training.github.com">GitHub Training</a> courseware including outlines, topic-specific guides, examples, and slides provided under the <a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0 license</a> to aid schools, universities, user groups, hackathons, corporate lunch-and-learns and other educational outlets in teaching GitHub and Git. In short, you should take these materials and <a href="http://en.wikipedia.org/wiki/A_rising_tide_lifts_all_boats">make the development world a better place</a> by leveraging them to teach a class or give a conference talk. Do a quick check that you are using the materials in the <a href="https://github.com/github/teach.github.com/blob/gh-pages/LICENSE.md">spirit of the license</a> and then go forth and spread the good GitHub and Git news.</p>

  <blockquote>A rising tide lifts all boats  – John F. Kennedy</blockquote>

  <p>GitHub believes, as a company, that educational materials should be free and improved by the wisdom of the community whenever possible. Inspiration for this comes from more places than we can list, but, to name just a few: <a href="http://www.khanacademy.org">Khan Academy</a>, <a href="http://gitimmersion.com">Git Immersion</a>, <a href="http://rubykoans.com">Ruby Koans</a>, <a href="https://www.coursera.org">Coursera</a>, and <a href="http://ocw.mit.edu/index.html">MIT Open Courseware</a>.</p>

  <h2><span class="pictos">n</span>Original Authors</h2>
  <p>These materials were lovingly donated to the OSS community by <a href="https://github.com/about">GitHub</a> because it is an awesome company that has a <a href="http://tom.preston-werner.com/2011/11/22/open-source-everything.html">passion for open sourcing</a> a significant portion <a href="https://github.com/github">of our work</a>. The original authors of these materials include <a href="http://github.com/matthewmccullough">Matthew McCullough</a>, <a href="https://github.com/tlberglund">Tim Berglund</a>, and <a href="https://github.com/ShepBook">Jared Koumentis</a>, but we eagerly look forward to seeing those contributions overwhelmed by a <a href="https://github.com/github/teach.github.com/wiki/Hall-Of-Appreciation">community effort</a> to improve and grow these materials for the benefit of the Git-learning community.</p>

  <h2><span class="pictos">k</span>Spread the Love</h2>
  <p>We've already seen our materials in use by tens of thousands of individuals, but we're excited to take this next step of open sourcing our curriculum and seeing where it gets put to great use. If you are using these materials, we'd love to <a href="https://github.com/github/teach.github.com/wiki/Hall-Of-Appreciation">see you say so in the Wiki</a>.</p>

  <h2><span class="pictos">e</span>Help Us Improve These Materials</h2>
  <p>We're always looking for contributions to improve these materials. If you have corrections, polish, or materials contributions, please submit them via a <a href="https://help.github.com/articles/using-pull-requests">Pull Request</a>. If your contribution is larger than a syntax fix or sentence re-wording, please initiate a discussion via a new Issue (type `c` after switching focus to the <a href="https://github.com/github/teach.github.com/issues">Issues</a> tab) so we can help guide your contribution to the right location in the materials. In the highly unlikely case you merely want to rant or denigrate our open materials, please resist that urge and turn that energy into a world-benefiting contribution.</p>

  <h2><span class="pictos">N</span>Materials Format</h2>
  <p>The majority of these materials will be in <a href="http://whatismarkdown.com">Markdown, a <a href="http://en.wikipedia.org/wiki/Lightweight_markup_language">lightweight markup language</a> strongly supported in the GitHub web application user interface. There is a syntax guide to the original <a href="http://daringfireball.net/projects/markdown/syntax">Markdown format</a> and also <a href="http://github.github.com/github-flavored-markdown/">GitHub Flavored Markdown</a>.</p>
</div>

<div class="right">
  <h2 class="no-top-border"><span class="pictos">o</span>Teaching Materials</h2>
  <div id="pages">
    <ul>
      {% for page in site.html_pages %}
        {% if page.title %}
          {% if page.showinnav == true %}
            <li><a href="{{ page.url | remove:'index.html' }}">{{ page.title }}</a></li>
          {% endif %}
        {% endif %}
      {% endfor %}
    </ul>
  </div>

  <h2><span class="pictos">\</span>Blog Posts</h2>
  <div id="posts">
    <ul>
      {% for post in site.categories.blog %}
        <li><a href="{{ post.url }}/">{{ post.title }}</a><br/><span class="blogpostdate">{{ post.date | date_to_string }}</span></li>
      {% endfor %}
    </ul>
  </div>
</div>
