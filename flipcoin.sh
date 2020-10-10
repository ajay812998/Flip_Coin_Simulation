#!/bin/bash -x

#This problem displays the winner Heads or Tails

countHeads=0
countTails=0

while [ $countHeads -ne 21 ] || [ $countTails -ne 21 ]
do
random=$((RANDOM%2))
   if [ $random -eq 0 ]
   then
       ((countHeads++))
if [ $countHeads -eq 21 ]
then
    echo "Head Wins or occuring times is :" $(($countHeads-$countTails))
    break
fi
else
    ((countTails++))
if [ $countTails -eq 21 ]
then
     echo "Tail Wins or occuring times is :" $(($countTails-$countHeads))
     break
fi
fi
done

