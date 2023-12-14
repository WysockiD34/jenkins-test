#!/usr/bin/env bash

# this works pretty well:
egrep 'commit.*tag' git-log.txt
echo $?
egrep 'commit.*tag:' git-log.txt
echo $?
egrep -v 'commit.*tag:' git-log.txt
echo $?

#just trying to get a hold of using a conditional
PATTERN='commit.*tag:'

failure=0
if egrep "$PATTERN" git-log.txt
then
echo "failed! leak in git-log."
failure=1
else
echo "success on git-log"
fi 



egrep 'comit' git-log-should-match.txt
echo $?
#brings up a 1 for nothing matching
egrep -v 'comit' git-log-should-match.txt
echo $?
egrep 'commit.*tag:' git-log-should-not-match.txt
echo $? 
egrep -v 'commit.*tag:' git-log-should-not-match.txt
echo $?
