#!/usr/bin/env bash
egrep '^\+\s.*\^d' plus-should-match.txt
echo $?

PATTERN='^\+\s.*\^d'

failure=0
if egrep -v "$PATTERN" plus-should-match.txt
then
failure=1
echo "failed! leak in plus-minus"
else
echo "success on plus-minus"
fi
echo $?

failure=0
if egrep "$PATTERN" plus-should-not-match.txt
then
failure=1
echo "failed! leak in plus-minus"
else
echo "success on plus-minus"
fi
echo $?

