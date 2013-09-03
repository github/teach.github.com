---
layout: barewithrelated
title: Book Authoring Using GitHub and Git
description: Formats, tips and techniques for using GitHub and Git as the version control and collaborative platform for writing short and long form books.
path: usecases/_posts/2001-01-01-book-authoring-using-git-and-github.md
---

GitHub and Git are not just for writing programming code. They can also be an effective tool for writing articles and books. Matthew McCullough has written a quick [guide to writing books in lightweight formats](https://github.com/matthewmccullough/bookauthoringhowto). This article will be folded into this Teaching repository over the coming months.

# What is this?
This is a repository of ideas, techniques, tools and tricks on how to write a technical book. It was started by [Matthew McCullough](http://github.com/matthewmccullough), and added to by [Phil Haack](http://github.com/haacked), [Dan Allen](http://github.com/mojavelinux), [Neal Ford](http://github.com/nealford), and [Nate Schutta](http://github.com/ntschutta), and all the committers you'll see in the repo history. I just didn't want to hoard any knowledge that would help inspire others to write a technical book.

# Inspirations
The contents of this repo have been partly invented from colleague conversations at [O'Reilly](http://oreilly.com) during the [Gradle book](http://bit.ly/gradlebook1) with [Tim Berglund](http://augusttechnologygroup.com) and [Pearson](http://www.pearsoned.com) during the [Presentation Patterns](http://presentationpatterns.com) book, partly inspired by open source projects, and partly refactored from snippets from colleagues and friends. Many are attributed.


# Digital Toolchain for Book Authors

## Text markup and structure
* So many light markup formats to consider
	* [Markdown](http://daringfireball.net/projects/markdown/)
	* [Textile](http://www.textism.com/tools/textile/)
	* [reStructuredText](http://docutils.sourceforge.net/rst.html)
	* [Asciidoc](http://www.methods.co.nz/asciidoc/)
	* Most compile to HTML, PDF, [DocBook](http://www.docbook.org/)
* Get handy with [PanDoc](http://johnmacfarlane.net/pandoc/) (but man, the haskell bootstrapping is a pain)
* List of formats:
	* [Wikipedia Markup Formats](http://en.wikipedia.org/wiki/Lightweight_markup_language)
	* Prefer AsciiDoc due to its ability to output DocBook
	* Markdown is nicely rendered by GitHub and other desktop tools, but really isn't a full book authoring format.
* [We used OrgMode for outlines and planning](http://orgmode.org)
* We used Dropbox for syncing it all
* We used [Markdown](http://daringfireball.net/projects/markdown/) for any quick write-ups and to-be-integrated raw pieces stored in a separate directory
    * QuickLook plugins for Markdown on MacOSX exist. Very nice.
    * Markdown editors now exist for the iPad, iPhone and Desktop
    * [Mou (Desktop)](http://mouapp.com/)
    * [Markdown Mode (Emacs)](http://jblevins.org/projects/markdown-mode/)
    * [Elements (iPad, iPhone)](http://www.secondgearsoftware.com/elements/)

## Format, Authoring Tools
* Scribe
    * This is a wrapper over AsciiDoc to easily produce PDF, HTML, DocBook
    * [Scribe Template](https://github.com/schacon/git-scribe-template)
    * [Scribe Engine](https://github.com/schacon/git-scribe)
    * [Guard for Scribe](https://github.com/jasonm/guard-git-scribe)
    * Has a few bugs that will be getting love in the next few months
* Your Own Toolchain
    * [Rake](http://rake.rubyforge.org/) script for [Presentation Patterns](http://presentationpatterns.com)
* Will try to OSS some of this stuff in the Spring and I'll be hacking on Scribe as I give more time to [GitHub employment](http://github.com/training)
* XML
	* For pure XML (DocBook) authoring, I liked:
		* [Oxygen](http://www.oxygenxml.com/)
		* [XMLMind](http://www.xmlmind.com/xmleditor/)
		* [Emacs nXML mode](http://www.thaiopensource.com/nxml-mode/)
	* Some of these have DocBook stylesheets built in or a live editor
* The drawback to AsciiDoc is the lack of not having the full DocBook tag vocabulary
	* You can always convert towards the end of the book and use DocBook from there on out, but that seems like a nasty mode shift.

## Inline Code Samples
* Q: Code insertion (such that it can be tested)
* AsciiDoc uses pygments to style the most common languages
    * [Pygments Homepage](http://pygments.org/). Also used internally at GitHub
    * More or less built-in to [Asciidoc](http://www.methods.co.nz/asciidoc/) toolchain
* Nest the examples as a Git submodule within the Git scribe book or other book technology. You can OSS the examples early. [We did with Gradle](https://github.com/gradleware/oreilly-gradle-book-examples).

### Example code in Asciidoc (standalone files)

    [[EX-MAVEN-001]]
	.The smallest possible Maven pom.xml
	====
	[xml]
	source~~~~
	include::example_code/maven-smallest-maven-pom/pom.xml[]
	source~~~~
	====


## Audited version history
* Q: Naturally, we both prefer Git
* Git, without a doubt, but with more than just a master branch
    * [Squash branch commits](https://makandracards.com/makandra/527-squash-several-git-commits-into-a-single-commit) for bigger "units of work", not noisy commits which some of my co-authors seem to like to create
* [CIed](http://jenkins-ci.org) book build
* Used just shell scripts and cron
* Or trigger on Mac folder changes with [Hazel](http://www.noodlesoft.com/hazel.php)

## Inline comments and threads/discussions
* Q: GitHub comments?
* [Remarks DocBook tags](http://www.docbook.org/tdg/en/html/remark.html) in the DocBook files (Presentation Patterns)
    * http://www.docbook.org/tdg/en/html/remark.html
    * I wrote and had [my brother, a JS and HTML guy](http://ambientideasphotography.com), write an awesome stylesheet that made the remarks pop in Red.
    * Remark tags generate "notes" in PDFs. Awesome.
    * `TODO` keyword in the text with a build script that found and listed them all (like an `ack`)

## Outlining strategy/hacks
* Q: How did you avoid 10 rewrites?
* A: Let it bake for 2 years in outlines and 1 year in a draft. INSANE. But nice.

So, how can this be done in a more reasonable way?

1. Level one bullets only. Revise. Review.
2. Write 5% of the book based on passion.
3. Level two bullets. See impact on level 1. Revise. Review.
4. Consider the outline locked unless there is something massively broken.
5. [Write a crappy first draft](http://www.mywritingmylife.com/blog/2011/11/22/on-writing-the-shitty-first-draft/) with high velocity.
6. Stick to the outline. If you need to change it, change it, but don't let the prose drive the plan.

## Writing Hacks
1. Use [Dragon Dictate](http://www.nuance.com/for-individuals/by-product/dragon-for-mac/dragon-dictate/index.htm) and a [Plantronics wireless boom mic](http://www.plantronics.com/us/product/audio-995). Thank me later. I cranked out 5200 words in a day with it. And you can listen to music while you dictate.
2. [Write every day](http://forums.pragprog.com/forums/235/topics/9874). Even if just a little bit. I am the worst offender of this advice, but I am trying to stick to it.

## Task tracking
* Q: We've been evaluating [trello.com](http://trello.com)
    * [Demo video](http://www.youtube.com/watch?feature=player_embedded&v=aaDf1RqeLfo)
* [OrgMode](http://orgmode.org/)
    * Emacs major mode
    	* http://orgmode.org/
    * [Filter](http://orgmode.org/guide/index.html) by person assigned
	    * http://orgmode.org/guide/index.html
    * Used for almost everything in the [PPAP](http://presentationpatterns.com) planning and assignment process

### Sample of OrgMode (Raw)

	* Admin: Deadlines:
	** Initial Marketing <2011-12-19 Mon>
	**** DONE Snappy back-cover text <2011-12-19 Mon>                  :nf:mm:ns:
	**** DONE final(-ish) TOC<2011-12-19 Mon>                          :nf:mm:ns:
	** First Draft                                                     :nf:mm:ns:
	This is the draft that goes to Eileen & our technical review, not to
	be confused with Pearson's process
	** Final Draft <2012-02-15 Wed>                                    :nf:mm:ns:

## Contract management
Publishers are in the dark ages with this sending shredded trees all over the place asking you to physically sign 6 copies of a signature sheet. WTF!? Ideally this idea would integrate with electronic document handling like GH uses for its new employees.

_via Phil Haack_

## Integrated Reporting
Royalty and sales reporting typically sucks. Outdated sites that make Geocities look like the next GH. This site could provide a nice reporting dashboard for authors to look at.

Basically, this could be the one stop shop for publishers and authors to collaborate on a book.

_via Phil Haack_
