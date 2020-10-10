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
    Headdifference=$(($countHeads-$countTails))
    echo "Head Wins or occuring times is :" $Headdifference
    break
fi
else
    ((countTails++))
if [ $countTails -eq 21 ]
then
     Taildifference=$(($countTails-$countHeads))
     echo "Tail Wins or occuring times is :" $Taildifference
     break
fi
fi
done
echo $Headdifference
echo $taildifference

#tie condition

if [ $Headdifference -eq 0 ] || [ $Taildifference -eq 0 ]
then
while [ $Headdifference -gt 2 ] || [ $Taildifference -gt 2 ]
do
random=$((RANDOM%2))
   if [ $random -eq 0 ]
   then
       ((countHeads++))
if [ $countHeads -gt 2 ]
then
       Headdifference=$(($countHeads-$countTails))
       echo "First time Head or Tail is same, Now Head Wins by :" $Headdifference
       break
fi
       else
       ((countTails++))
       if [ $countTails -gt 2 ]
       then
       Taildifference=$(($countTails-$countHeads))
echo "First time Head or Tail is same, Now Tail Wins by :" $Taildifference
       break
fi
fi
done
fi


