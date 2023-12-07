#!/usr/bin/env bash
#just trying to get a hold of using a conditional
PATTERN='commit.*tag:'

failure=0
if egrep -v "$PATTERN" git-log-should-match.txt
then
echo "failed! leak in git-log."
failure=1
else
echo "success on git-log"
fi
echo $?

