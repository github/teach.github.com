---
chapter: "Layouts"
cover: true
layout: hydeside
tags:
  - "pages/layouts"
categories: ['slidecontent']
---

* Let's say we pull the HTML out of `index.html` and save it to `_layouts/page.html` so that it looks like this:


        <html>
        <body>
        &#123;{ content }}
        </body>
        </html>

* so now `index.html` should now just contain:

        <h1>Hello World!</h1>

* But wait! We need to tell Jekyll to use our spiffy new layout. Let's add the following to the top of `index.html`:

       ---
       layout: page
       ---

