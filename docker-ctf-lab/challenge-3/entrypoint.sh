#!/bin/sh

if [ "$(id -u)" -eq 0 ]; then
  echo "Still running as root. No flag for you."
else
  echo "CTF{now_running_as_non_root}" > /tmp/flag.txt
fi

[ -f /tmp/flag.txt ] && cat /tmp/flag.txt
