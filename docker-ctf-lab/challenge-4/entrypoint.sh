#!/bin/sh

if [ -f /tmp/build-output.txt ] && grep -q OK /tmp/build-output.txt; then
  echo "CTF{multi_stage_success}" > /flag.txt
else
  echo "No valid build artifact found."
fi

[ -f /flag.txt ] && cat /flag.txt
