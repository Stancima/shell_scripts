#!/bin/bash
for  (( a=1;a<=5;a++ )) 
do  
echo $a   
done 

#Expected output:
#================
#a=1
#a=1 + 1 = 2  
#a=2 + 1 = 3   
#a=3 + 1 = 4     
#loop will break    
#a=4 + 1 = 5    

Assignment:
Write a shell script to print numbers from 100-90 
using for-loop [100, 99, 98, ---, 90]
while loop 

#!/bin/bash
for (( a=100;a>=90;a-- ))
do
        echo $a
done

 