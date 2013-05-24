---
chapter: Commit
layout: slide
tags: ['commit']
---


<div class="diagram-group">
	<img class="diagram" src="assets/diagrams/commit-structure-01.png">
	<img class="diagram fragment" src="assets/diagrams/commit-structure-02.png">
	<img class="diagram fragment" src="assets/diagrams/commit-structure-03.png">
	<img class="diagram fragment" src="assets/diagrams/commit-structure-04.png">
</div>


{% capture notes %}
* Git folder is a directory "database" of snapshots for every commit
* `.git` folder contains files, directories
* `.git` is the _entire_ repository
* `/objects` contains all commits, blob, trees
{% endcapture %}
{% include hydeslides/core/notes %}
