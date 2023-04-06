#!/bin/bash

x=0
while [ $x -le 10 ]
do
  OUTPUT=$(cd /Users/francois.laforgia/Documents/dev/dh/DataHub/TestGlossaries ; git pull ; cd ../..)  
  #echo $OUTPUT
  if [ "$OUTPUT" = 'Already up to date.' ]
   then
     echo "no changes"
   else
     echo $OUTPUT
  fi
  let x++
  sleep 5
done
