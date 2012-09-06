Git and GitHub Class Student Machine Prerequisites
============================================
Here are an updated set of instruction for getting the student laptops setup with Git prior to class.  It will definitely be best if the students can escalate to administrative privileges. It is common for development tools to require administrative privileges at installation time.

## Common to all Operating Systems
1. It would be best if Git were version _1.7.10_ or higher to match the behavior of the instructor's machine, but no actual repository incompatibilities will impact the class if the installed version is _1.7.x_ or newer.
2. Git's version can be queried by running `git --version` at the terminal or command prompt.

## …and for _Windows_ Machines
1. The preferred installation is from the Download button at:  
  <http://windows.github.com>
2. The less feature-ful but potentially non-admin rights requiring download is at:  
  <http://git-scm.com/download/win>

## ...and for _Mac OS X_ Machines
1. Install the command line edition of Git from the package available at:  
  <http://git-scm.com/download/mac>
2. The location of the installed Git can be found with the command `which git`.
3. If `usr/bin/git`, it was likely installed by Apple or Xcode
4. If `usr/local/bin/git` it was likely installed by Homebrew.
5. `PATH` order may need to be modified to get the newly installed Git in "front" of other Git installations.

## …and for _Linux_ Machines
1. Git will likely already be installed. It is present in most modern Linux distributions.
2. Package managers such as _Synaptic_, `yum` and `apt-get` are the best way to install and update Git.
