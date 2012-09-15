# Setting up Git

## Get binaries

### On UNIX

  * Compiling from Source
    * [Web UI to browse source](http://git.kernel.org/?p=git/git.git;a=summary)
    * Git repo for source: `git://git.kernel.org/pub/scm/git/git.git`
    * Zipped source packages: `http://kernel.org/pub/software/scm/git/`
    * Run `make`
    * Then run `make install`
  * Binaries from a Package manager
    * `apt-get git-core`
    * `apt-get git-gui`
    * `apt-get git-doc`
    * `apt-get git-svn`

### On Mac

  * [MacPorts](http://www.macports.org/) (user-compiled)
  * [HomeBrew](http://github.com/mxcl/homebrew) (user-compiled)
  * [git-osx-installer](http://code.google.com/p/git-osx-installer/) (precompiled)

### On Windows

  * Two [msysGit](http://code.google.com/p/msysgit/) choices: a full toolkit, or just a precompiled distribution.
  * [Precompiled](http://msysgit.googlecode.com/files/Git-1.7.3.1-preview20101002.exe) is named "Git-XXXexe"
  * [Full toolkit](http://msysgit.googlecode.com/files/msysGit-fullinstall-1.7.3.1-preview20101002.exe) with gcc compiler is named "msysGit-fullinstall-XXX.exe"
  
If you get stuck, a series of [help pages at GitHub](http://help.github.com/) are almost certain to assist.


## Configuring your Git username and email address
Establish the one-time parameters stored in your home directory:

    git config --global user.name "Your Name"
    git config --global user.email "you@example.com"
    git config --global color.ui "auto"

View our handiwork

    echo ~/.gitconfig
