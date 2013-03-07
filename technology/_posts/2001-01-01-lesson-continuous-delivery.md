---
layout: bare
title: Continuous Delivery
description: The next step in the evolution of software development is making ever smaller changes and continually deploying to production.
path: technology/_posts/2001-01-01-lesson-continuous-delivery.md
---

Continuous delivery is the current buzz, but let's take a few minutes to demystify it. 1. Does it work? 2. How would you go about getting towards that mode of operation? 3. Why would you want to have continuous delivery? 4. What tools facilitate this? You'll leave a transformed developer. The idea of releases being non-stressful and able to be merged in on Friday at 4pm is attractive to the majority of us who have suffered at the hands of the "awful rollback" and the "long weekend." These travails are partially the result of being on the opposite end of the spectrum from continuous delivery. Come with an open mind to branching strategies, feature toggles, and Readme-driven development.

## Resources

[Talk Slides](https://speakerdeck.com/u/matthewmccullough/p/continuous-delivery-*-a-github-story)

<script async class="speakerdeck-embed" data-id="506c973a7e8497000200fbe5" data-ratio="1.7777777777777777" src="//speakerdeck.com/assets/embed.js"></script>

## Concepts

### Leaders
* [Martin Fowler's Blog](http://martinfowler.com/bliki/)
* [Martin Fowler on Twitter](http://twitter.com/martinfowler)
* [Jez Humble on Twitter](https://twitter.com/jezhumble)
* [John Goulah's Blog](http://blog.johngoulah.com)
* [John Goulah on Twitter](http://twitter.com/johngoulah)
* [Erik Kastner on Twitter](https://twitter.com/kastner)
* [Mike Brittain on Twitter](https://twitter.com/mikebrittain)
* [John Allspaw](https://twitter.com/allspaw)
* [John Allspaw's Presentations](http://www.slideshare.net/jallspaw)


### Continuous Delivery
* [Continuous Delivery Web Site](http://continuousdelivery.com)
* [Continuous Delivery Book](http://amzn.com/0321601912)
* [Martin Fowler on Continuous Delivery](http://martinfowler.com/delivery.html)
* [Want to Prove Agile works? Practice Continuous Delivery!](http://www.informit.com/articles/article.aspx?p=1758809)
* [Continuous Delivery on Azure](http://www.windowsazure.com/en-us/develop/net/common-tasks/continuous-delivery/)

### Build Automation
* [How we ship GitHub for Windows](https://github.com/blog/1271-how-we-ship-github-for-windows)

### Testing
* [Kent Beck on Integration versus Unit Tests](http://www.quora.com/When-using-test-behavior-driven-development-when-should-one-use-integration-tests-versus-unit-tests)
* [Kent Beck on Minimum Percent of Code Coverage](http://www.quora.com/What-minimum-percent-of-code-coverage-is-recommended-in-TDD-projects)    

### Small Changes
* [Kent Beck on Small Changes](https://twitter.com/KentBeck/status/250733358307500032): "for each desired change, make the change easy (warning: this may be hard), then make the easy change"
* [Agile: Nature’s Way of Managing, Sustaining, and Empowering an Organization](http://www.scrumalliance.org/articles/385-agile-natures-way-of-managing-sustaining-and-empowering-an-organization)
* [Business agility](http://en.wikipedia.org/wiki/Business_agility)

### Continuous Integration
* [Jenkins](http://jenkins-ci.org)
* [Travis CI](http://travis-ci.org)
* [Travis CI Pro](http://travis-ci.com)
* [HelloGitWorld sample project on Travis-CI](https://travis-ci.org/#!/githubtraining/hellogitworld)
* [ThoughtWorks Go](http://www.thoughtworks-studios.com/go-agile-release-management)
* [BuildHive from CloudBees](https://buildhive.cloudbees.com)
* [Janky](https://github.com/github/janky) (layer on top of Jenkins)
* [Michael Nygard on Continuous Integration](https://twitter.com/mtnygard/status/253139057712979969): "Continuous Integration is a practice not a tool." from @JezHumble

### Deploying
* [Deploying at GitHub](https://github.com/blog/1241-deploying-at-github)
* [Deployinator by Etsy](https://github.com/etsy/deployinator)
* [Deployinator Presentation](http://www.slideshare.net/kastner1/deployinator-turning-the-fear-into-the-fear)
* [Deployinator Video](http://www.youtube.com/watch?v=YWEi5AuqKzg)
* [Deployinator Blog Post by Erik Kastner](http://codeascraft.etsy.com/2010/05/20/quantum-of-deployment/)
* [Deployinator Blog Post by John Goulah](http://blog.johngoulah.com/2011/07/deployinator/)
* [Dreadnot by Rackspace](http://www.rackspace.com/blog/rackspace-open-sources-dreadnot/)
* [Michael Nygard on Fast Deploys](https://twitter.com/mtnygard/status/253119100740587520): "I see that fast deploys allow @etsy great flexibility, because they don’t have to be right every time."

### Feature Toggles
* [Martin Fowler on Feature Toggles](http://martinfowler.com/bliki/FeatureToggle.html)
* [Michael Nygard on Feature Flags](https://twitter.com/mtnygard/status/253113513524998144): "Feature flags aren’t binary. Can also be ‘staff’, ‘1%’, ‘allspaw@etsy.com’, etc."

### Graceful Failures
* [GitHub availability this week](https://github.com/blog/1261-github-availability-this-week) (outages)
* [Michael Nygard on Fast Deploys](https://twitter.com/mtnygard/status/253119100740587520): "I see that fast deploys allow @etsy great flexibility, because they don’t have to be right every time."

### Monitoring
* [How we keep GitHub fast](https://github.com/blog/1252-how-we-keep-github-fast)

### PaaS
* [Amazon Web Services](http://aws.amazon.com) (the most raw)
* [Heroku](http://heroku.com)
* [CloudBees](http://cloudbees.com)
* [AppHarbor](https://appharbor.com)
* [Windows Azure](http://www.windowsazure.com)

### Companies Leading the Way
* [Etsy](http://etsy.com)
* [GitHub](http://github.com)
* [ThoughtWorks](http://thoughtworks.com) (as a service provider)

    
    
    
    


## Outline, Notes

* Two people chatting
    * Person 1: Build it!
    * Person 2: How?
    * Person 1: Here, I'll tell you how.
* This is a failure. Bus number of 1. Until vacation. Then bus number .75
* Write the instructions down.
* Then turn the instructions into a script.
* Uptime
* GitHub deployment frequency, stats
* Fail forward (don't roll back; try to fix)
* Easy rollbacks actually == fail forward
* `git revert` is a surgical rollback of a single or list of commits
* All processes must be scripted
    * Bash
    * Batch file
    * Powershell
    * Ruby
* Continuous integration
* Constant status visibility
    * Dashboards
    * Commit status API
    * Plugins for Jenkins
    * Status wall plugin for Jenkins
    * Janky at GitHub
* Programming is translating human requirements into machine instructions
    * There is no need to repeat this over and over for the same task
    * Computer's job is to repeat
* Continuous delivery is a way of life, not a certification
    * Suggestions, not rules
    * Examples, not dogma
    * Scale and time intervals will be determined by your product type (desktop, web app)
* This is not Scrum Certified™
   * More like religion, but not dogma
   * Like the judge and porn, CD is "You know it when you see it"
* Hubot
    * OSS
    * Chat room
    * Starts builds
    * Reports on status
    * Gets build status, what's undeployed
* Enforce practices through social means, not rules in tools
* Teams must buy into this idea. You can't force it.
* Partial deploys
    * Flipper (OSS from GitHub)
    * Percentage deployments at Etsy
* Testing
    * Kent beck quotes
    * How much?
    * Integration or unit tests?
    * Must have this in place or nothing else about CD makes sense
* Everything is code
    * Machines
    * Environment
    * Build tools (.travisci configuration file)
    * No unique snowflake named machines
    * Show "The Setup" at GitHub
* Why CD?
    * No more late nights
    * Developer happiness
    * More correct actions
    * Fewer mistakes
    * Better audit trail
    * Scalability of humans and machines
    * Tasks performed by anyone, not just "the expert"
* Agility
    * A strong component of CD
    * Must have small sprints
    * No 6-month-baking of a feature
    * Feature toggles let you deploy early
* Releases
   * Can have auto-deploy
   * Can also human-elect if a candidate should deploy
* Decomposition into small pieces
    * Quote from Kent Beck about how it is hard
    * Simple steps (hard to get to simple)
    * Complexity is the natural tendency in software
	* Readme driven design (Tweet quote from Brandon Keepers)
	* Build branches (pull requests) as early as possible
* Science
    * Metrics driven decisions
    * Sometimes AB tests (Etsy)
    * Others applying intuition and interpretation to data
    * Big screen of stats at GitHub
    * Cigarettes are bad for you. Why do we still smoke them? Big releases are bad for you.
* Audit
    * You can't find the real cause if you can't audit what happened.
    * People remember inaccurately. They develop, like a tragedy, a shared understanding of what happened (not accurate)
    * Can't audit if purely human performed
    * Must have it scripted and done by a robot
    * Variance in human run-through of a process, but no variance by the machine
* Dangers
    * Saturated a satellite connection
    * Saturated a Git host (GitHub Enterprise, Etsy)
    * Saturated a network connection (Etsy) (Link to blog post about 1000 steps)
    * Lighter-weight Git xfers make saturation less of a risk
* Risks
    * Build fewer features (but more of the right ones)
    * Kill more features (early, so you haven't wasted time)
    * Debate more (on technical merits) on what to keep and what to toss
* Type of apps
    * Works for web apps (typical story)
    * Also works for desktop apps
    * Link to GitHub for Windows blog post, percentage of folks upgraded in 24h
* DVCS usage patterns
    * Book link to Zachary's repo
* Continuous Delivery Book
* Tools
    * Etsy deployinator
    * Hubot
    * Janky
    * Jenkins
    * Jenkins Git, GitHub plugins
