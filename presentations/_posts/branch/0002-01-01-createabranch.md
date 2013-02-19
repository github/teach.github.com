---
chapter: Branch
layout: slide
title: 'Create a Branch'
tags: ['branch']
categories: ['slidecontent']
---

	git branch <branchname> <ref>

	#Create & Checkout branch
	git checkout -b <branchname> <ref>


{% include hydeslides/notes-open.html %}
git branch <BRANCHNAME> HEAD

HEAD is assumed when REF left off

Branch as experiments
What do cheap branches enable?
Create a branch for an experiment; Delete the failed experiment
Branches cost a mere 20 bytes

Branch from the master branch
Merge from the topic branch
Destroy the topic branch
{% include hydeslides/notes-close.html %}