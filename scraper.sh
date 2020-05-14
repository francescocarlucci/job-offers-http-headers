#!/bin/bash

for site in $(cat x-recruiting-bloomnation.txt); do
  hasheader=$(curl -s -I $site | grep x-recruiting | tr -d ,)
  if [ ! -z "$hasheader" ]
  then
    echo "$site, $hasheader" >> x-output.txt
  fi
done
