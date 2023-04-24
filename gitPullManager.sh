#!/bin/bash

x=0
while [ $x -le 10 ]
do
  OUTPUT=$(git pull)  
  if [ "$OUTPUT" != "Already up to date." ]
  then
    echo $OUTPUT
  fi
  let x++
  sleep 5
done