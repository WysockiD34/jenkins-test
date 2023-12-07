#!/usr/bin/env bash

egrep 'New\ssession' auth.log
echo $?

#this will bring up the text that is contained inside of auth-should-not-match
egrep -v 'New\ssession' auth.log
echo $?