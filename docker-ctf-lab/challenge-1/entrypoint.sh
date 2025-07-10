#!/bin/sh

if grep -qi alpine /etc/os-release; then
  echo "CTF{use_light_base_image}"
else
  echo "Too heavy. No flag for you."
fi
