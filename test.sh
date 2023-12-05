#!/usr/bin/env bash

# this works pretty well:
egrep 'commit.*tag' git-log.txt
echo $?
egrep 'commit.*tag:' git-log.txt
echo $?
egrep -v 'commit.*tag:' git-log.txt
echo $?

egrep 'comit' git-log-should-match.txt
echo $?
#brings up a 1 for nothing matching
egrep -v 'comit' git-log-should-match.txt
echo $?
egrep 'commit.*tag:' git-log-should-not-match.txt
echo $? 
egrep -v 'commit.*tag:' git-log-should-not-match.txt
echo $?