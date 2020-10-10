#!/bin/bash -x

#This problem displays the winner Heads or Tails

countHeads=0
countTails=0

for (( i=0; i<100; i++ ))
do
random=$((RANDOM%2))
   if [ $random -eq 0 ]
   then
       ((countHeads++))
   else
       ((countTails++))
   fi
done
echo "Head wins or occuring times is" $countHeads
echo "Tail wins or occuring times is" $countTails
