# Continuous Integration

## Bamboo
Git support is available as a [plugin for Bamboo](http://www.atlassian.com/software/bamboo/tour/bamboo-plugin.jsp]

[The Git plugin](https://plugins.atlassian.com/plugin/details/9510) was authored by Kristian Rosenvold of Zenior AS in Norway and Don Brown of Atlassian.

For post-build pushes of repos up-stream, the [Pre/Post Build Command Plugin](https://plugins.atlassian.com/plugin/details/5581) will assist in calling git (must be on the Bamboo server's path):

    git push FULLREPOURL BRANCHNAMETOPUSH:BRANCHNAMEONREMOTESIDE
    
With an actual URL

    git push git://git.apache.org/commons-logging.git master-trial:master
    
Can walk through setting up a Git based project (from Apache Git sources)

    [Bamboo on http://localhost:8085/](http://localhost:8085/)

## Hudson

[Hudson](http://hudson-ci.org/) is an open source CI server. It has excellent Git integration via the [Git plugin](http://wiki.hudson-ci.org/display/HUDSON/Git+Plugin).
