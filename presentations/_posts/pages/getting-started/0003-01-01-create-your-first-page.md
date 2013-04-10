---
chapter: "Getting Started"
cover: true
layout: hydeside
tags:
  - "pages/getting-started"
categories: ['slidecontent']
---

1. Create an `index.html` file.
   * On *NIX systems, `touch index.html`
   * Open the empty file up in your favorite text editor
   * Add a few words. A casual greeting works well.

2. Tell Git to add the file to the staging area.
      
       $ git add index.html

3. Commit the staged changes.
      
       $ git commit -m 'initial commit'

4. Push the changes to GitHub.
      
        $ git push -u origin gh-pages