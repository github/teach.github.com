---
chapter: Bisect
layout: slide
tags: ['bisect']
---

	# Begin process
	git bisect start

	# Denote known bad Commit
	git bisect bad <rev>

	# Flag good commit
	git bisect good <rev>

	# Open GitK for commit range remaining
	git bisect visualize

	# Upon completion, restore to HEAD
	git bisect reset