#!/usr/bin/env bash

egrep 'New\ssession' auth.log
echo $?

#this will bring up the text that is contained inside of auth-should-not-match
egrep -v 'New\ssession' auth.log
echo $?

PATTERN='New\ssession'

failure=0
if egrep -v "$PATTERN" auth-should-match.log
then
failure=1
echo "failed! leak in auth"
else
echo "success on auth"
fi
echo $?