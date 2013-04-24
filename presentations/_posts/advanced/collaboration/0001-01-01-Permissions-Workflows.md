---
chapter: Collaboration
layout: slide
tags: ['advanced/collaboration']
---

<table width="100%">
	<tr>
		<th>Read+Write</th>
		<th>Read-Only</th>
	</tr>
	<tr>
		<td>
			<li>Clone
			<li>Branch
			<li>Commit
			<li>Push
		</td>

		<td>
			<li>Fork
			<li>Clone
			<li>Branch
			<li>Commit<sup>*</sup>
			<li>Push
		</td>
	</tr>
</table>

<small>*Retrieving, rebasing, and confirming integration with original resource</small>


{% capture notes %}
* Feature branches
* Release branches
* WIP branch (sharing code - will trash after cherry pick 
* readme branch, etc. 
* Branches __do not demand merging as end-result__
* Branch
	* `git branch <feature>`
	* Descriptive Feature Name
	* Feature/Unified Development
* Push
	* `git rebase -i` to Tidy
{% endcapture %}
{% include hydeslides/core/notes %}