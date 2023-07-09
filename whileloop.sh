#!/bin/bash
echo "while loop starts"
echo "performing load testing for tesla"
l=10000
while [ $l -le 90000 ]
do
echo "Carrying load of "
echo $l
l=`expr $l + 10000`
done
echo "while loop ends"

#!/bin/bash
i=9  
while [ $i -ge 1 ]   
do  
echo $i 
i=`expr $i - 1 `  
done 

output:
  i = 9  
  i = 9 - 1 = 8  
  i = 8 - 1 = 7  
  i = 7 - 1 = 6   
  i = 6 - 1 = 5  
  i = 5 - 1 = 4
  i = 4 - 1 = 3 
  i = 3 - 1 = 2 
  i = 2 - 1 = 1 
  
  