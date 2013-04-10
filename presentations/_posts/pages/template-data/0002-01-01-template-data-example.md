---
chapter: "Template Data"
cover: true
layout: hydesides
tags:
  - "pages/template-data"
categories: ['slidecontent']
---

* Let's update the YML frontmatter on our `index.html` file to include:

       ---
       layout: page
       title: Hello World!
       ---

* We can also create a file called `_config.yml` next to the index file, and add the following (note: there's no `---` here!)

       title: Simple Site

* Now, we can go back to update our page layout in `_layouts/page.html` to add a page title like so:

       <html>
         <head>
           <title>&#123;{ page.title }} on &#123;{ page.site }}</title>
         </head>
         <body>
           <h1>Hello World!</h1>
         </body>
       </html>

