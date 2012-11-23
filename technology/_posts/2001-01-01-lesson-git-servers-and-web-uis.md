---
layout: bare
title: Servers and Web Interfaces
description: Web application front ends to serving Git repositories.
path: technology/_posts/2001-01-01-lesson-git-servers-and-web-uis.md
---

## Git Daemon
Run a local Git server on port 9418 (`DEFAULT_GIT_PORT`). The `--base-path` option sets up a virtual new root for cloning. Otherwise, the cloning end would need to know the actual path on your disk from the root to the repository folder. That is generally undesirable and the more common expectation is that repos are at the top level.

    git daemon --export-all --base-path=. .
    
or to enable pushing as well:

    git daemon  --enable=receive-pack  \--export-all --base-path=. .
    
Then the client can clone this with:

    git clone git://<somehostoripaddr>/myrepo
    
The `--export-all` option is necessary to force sharing of all repositories found, even if the marker file `git-daemon-export-ok` is not present in the specific repos you wish to share. If you do create the marker file, then the following will suffice:

    git daemon --base-path=. .

## Gitosis
The next lightest weight Git repository hosting solution.

* Managed via cloning and pushing changes to a gitosis-admin repository.
* No UI
* Medium-grained control of access to repositories per user.
* Keys committed to subfolder of admin repo and are pushed into `authorized_keys` by a post-commit hook.

## Gitolite
A medium-weight Git repository management solution.

* Finer grained control over permissions and access than Gitosis.
* Can lock glob patterns (branches, folders, repos) per repo
* Like Gitosis, has a folder of the admin repo for keys, which are automatically inserted in `authorized_keys` when pushed.
* Requires administrator to publish SSH keys for users (can't be published by the users)
* Offers "personal playground" repos per user.
* Offers feedback on permissions if ssh to the host is tried

Sample output:

    ssh gitolite@myserver
    
    PTY allocation request failed on channel 0
    hello mccm06, the gitolite version here is v1.5.5-68-g3cf2970
    the gitolite config gives you the following access:
         R   W 	gitolite-admin
        @R  @W 	testing
        @R   W 	testinglessaccess
    Connection to myserver closed.

## Gitorious
A "heavier" Ruby web interface and Git repository hosting solution.

* Medium grained access control.
* Public instance at Gitorious.com
* Users can self-publish their SSH key via the web interface.

## Instaweb
User interface only. No hosting capabilities.

To run a Git read-only http interface while sitting at a prompt inside a git repository:

    git instaweb

Then open a browser to [http://127.0.0.1:1234/](http://127.0.0.1:1234/).

On Linux, just `apt-get` the `lighttpd` package.

On Mac, use MacPorts or HomeBrew to install package `lighttpd`

On Windows, this is a [bit more challenging](http://asimilatorul.com/index.php/2009/10/12/git-instaweb-using-mongoose-and-msysgit/) to set up.
    
## Fisheye
[Atlassian Fisheye 2.2 has support for Git and Clearcase](http://www.clearvision-cm.com/clearvision-news/atlassian-fisheye-2.2-adds-support-for-git-and-ibm-rational-clearcase.html)

## ViewVC
Not supporting Git yet. [Discussion](http://viewvc.tigris.org/ds/viewMessage.do?dsForumId=4255&dsMessageId=2413932) does not seem to indicate plans to support Git.

## Gerrit
[Tool for code reviews](http://code.google.com/p/gerrit/).
* Invented at Google.
* Used for [Android](https://review.source.android.com/).
* Side by side code view.

## CGit
[CGit is a simple web frontend](http://hjemli.net/git/cgit/) for Git repos.
