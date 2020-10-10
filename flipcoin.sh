#!/bin/bash -x

#This problem displays the winner Heads or Tails

countHeads=0
countTails=0

random=$((RANDOM%2))
if [ $random -eq 0 ]
then
     echo "Head is winner"
else
     echo "Tail is winner"
fi

