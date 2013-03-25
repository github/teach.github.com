#Set textmate as our default command line editor (vi is the default otherwise)
export EDITOR='mate -w'

export APPENGINE_HOME=/Applications/Dev/appengine-java-sdk
export CLOJURE_HOME=/Applications/Dev/clojure
export EC2_HOME=/Applications/Dev/ec2-api-tools-1.3-46266
export IBEANS_HOME=/Applications/Dev/apache-tomcat-6.0.20-ibeans/mule-ibeans
export GRADLE_HOME=/Applications/Dev/gradle

#Set up the path, add frameworks to the path
export PATH=$PATH:./:~/scripts
#Add dev frameworks
export PATH=$PATH:$ANT_HOME/bin
export PATH=$PATH:$M2_HOME/bin
export PATH=$PATH:$GROOVY_HOME/bin
export PATH=$PATH:$GRAILS_HOME/bin
export PATH=$PATH:$NEXUS_HOME/bin/jsw/macosx-universal-32
export PATH=$PATH:$JMETER_HOME/bin
export PATH=$PATH:$JRUBY_HOME/bin
export PATH=$PATH:$SOAPUI_HOME/bin
export PATH=$PATH:$APPENGINE_HOME/bin
export PATH=$PATH:/Applications/Dev/hadoop-family/hadoop-0.20.1/bin
export PATH=$PATH:/Applications/Dev/hadoop-family/pig-0.5.0/bin
export PATH=$PATH:/Applications/Dev/hadoop-family/avro-1.2.0/bin
export PATH=$PATH:/Applications/Dev/hadoop-family/chukwa-0.3.0/bin
export PATH=$PATH:/Applications/Dev/hadoop-family/hbase-0.20.2/bin
export PATH=$PATH:/Applications/Dev/hadoop-family/hive-0.4.1-bin/bin
export PATH=$PATH:/Applications/Dev/hadoop-family/zookeeper-3.2.2/bin
export PATH=$PATH:/Applications/Dev/apache-tomcat/bin
export PATH=$PATH:$EC2_HOME/bin
#export PATH=$PATH:$IBEANS_HOME/bin
export PATH=$PATH:/Applications/Dev/sonar/bin/macosx-universal-64
export PATH=$PATH:/Applications/Dev/Bamboo
export PATH=$PATH:/Applications/Dev/mvnsh/bin
export PATH=$PATH:/Applications/Dev/pmaven/bin
export PATH=$PATH:/Library/PostgreSQL/8.4/bin
export PATH=$PATH:$GRADLE_HOME/bin
export PATH=$PATH:~/.cljr/bin/
export PATH=$PATH:~/.cabal/bin/

#And for putting MacPorts binaries FIRST on the path
export PATH=/Applications/Dev/btrace/bin:/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Commands:$PATH

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home


#########################################################################
# Temporary aliases useful for demos, other current projects
#########################################################################

export MYTEMP=~/Documents/Temp
export MYCODE=~/Documents/Code
export MYARCHIVEDEV=~/Documents/Temp/Archive/Dev
export MYARCHIVEAPPS=~/Documents/Temp/Archive/Apps
export MYSCRATCH=~/Documents/Temp/Scratch
export MYPROCESS=~/Documents/Temp/Process
export MYDOWNLOADS=~/Documents/Temp/Downloads
export MYDOCUMENTS=~/Documents
export MYTEACH=~/Documents/Teach
export MYCOURSES=~/Documents/Teach/Courses
export MYDEVAPPS=/Applications/Dev

#Commands to run apps
alias run.jmeter='${JMETER_HOME}/bin/jperf.sh'
alias run.nexus='nexus start'
alias run.clojure.repl='java -cp ${CLOJURE_HOME}/clojure.jar clojure.lang.Repl'
alias run.clojure.jline='java -cp ${CLOJURE_HOME}/jline-0.9.91.jar:${CLOJURE_HOME}/clojure.jar jline.ConsoleRunner clojure.lang.Repl'
alias run.clojure.script='java -cp ${CLOJURE_HOME}/clojure.jar clojure.main'

#Commands to change dirs
alias to.temp='cd ${MYTEMP}'
alias to.downloads='cd ${MYDOWNLOADS}'
alias to.process='cd ${MYPROCESS}'
alias to.docs='cd ${MYDOCUMENTS}'
alias to.clients='cd ~/Documents/Clients'
alias to.code='cd ${MYCODE}'
alias to.code.opensource='cd ${MYCODE}/OpenSource'
alias to.scratch='cd ${MYSCRATCH}'
alias to.teach='cd ${MYTEACH}'

alias to.courses='cd ${MYCOURSES}'

alias to.reference='cd ~/Documents/Code/Reference'
alias to.devapps='cd ${MYDEVAPPS}'

alias aq=aquamacs

#OFten useful to prefix with SUDO to see more system level network usage
alias network.connections='lsof -l -i +L -R -V'
alias network.established='lsof -l -i +L -R -V | grep ESTABLISHED'

#Files used, anywhere on the filesystem
alias files.usage='sudo fs_usage -e -f filesystem|grep -v CACHE_HIT|grep -v grep'
#Files being opened
alias files.open='sudo fs_usage -e -f filesystem|grep -v CACHE_HIT|grep -v grep|grep open'
#Files in use in the Users directory
alias files.usage.user='sudo fs_usage -e -f filesystem|grep -v CACHE_HIT|grep -v grep|grep Users'



# MacPorts Installer addition on 2009-10-17_at_08:00:06: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#RVM Ruby Selector
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
