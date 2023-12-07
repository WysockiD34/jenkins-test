#!/usr/bin/env bash

egrep 'New\ssession' auth.log
echo $?