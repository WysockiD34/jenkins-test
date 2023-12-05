#!/usr/bin/env bash

# this works pretty well:
egrep 'commit.*tag' git-log.txt
echo $?
egrep 'commit.*tag' git-log-should-match.txt
echo $?
egrep -v 'commit.*tag' git-log-should-match.txt
echo $?
