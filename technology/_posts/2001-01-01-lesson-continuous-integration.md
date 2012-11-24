---
layout: bare
title: Continuous Integration
description: Continuously building and testing your code.
path: technology/_posts/2001-01-01-lesson-continuous-integration.md
---

## Bamboo
Git support previously was available as an [optional open source plugin for Bamboo](https://labs.atlassian.com/wiki/display/BGIT/Home), but now is available out of the box.

[The Git plugin](https://labs.atlassian.com/wiki/display/BGIT/Home) was authored by Kristian Rosenvold of Zenior AS in Norway and Don Brown of Atlassian.

For post-build pushes of repos up-stream, the [Pre/Post Build Command Plugin](https://plugins.atlassian.com/plugin/details/5581) will assist in calling git (must be on the Bamboo server's path):

    git push FULLREPOURL BRANCHNAMETOPUSH:BRANCHNAMEONREMOTESIDE
    
With an actual URL

    git push git://git.apache.org/commons-logging.git master-trial:master


## Jenkins

[Jenkins](http://jenkins-ci.org/) is an open source CI server. It has excellent Git integration via the [Git plugin](https://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin).


## Commit Status API

GitHub has a [Commit Status API](https://github.com/blog/1227-commit-status-api) and associated UI decorations that facilitates integration with any Continuous Integration server. It currently is supported by Travis CI, Jenkins, and others.


## Other Resources

* [Jenkins GitHub Plugin](https://wiki.jenkins-ci.org/display/JENKINS/GitHub+Plugin)
* [Commit Status API Blog Post](https://github.com/blog/1227-commit-status-api)
* [Commit Status API Docs](http://developer.github.com/v3/repos/statuses/)
* [Travis-CI](http://travis-ci.org)
* [CloudBees](http://www.cloudbees.com)
* [Circle CI](https://circleci.com)
* [AppHarbor](http://blog.appharbor.com/2012/09/06/github-commit-status-api-now-supported)
