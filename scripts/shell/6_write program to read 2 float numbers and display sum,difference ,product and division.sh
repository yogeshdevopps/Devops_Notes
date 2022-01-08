#write program to read 2 float numbers and display sum,difference ,product and division
#!/bin/sh
echo "enter 2 float number "
read m n 

echo $m + $n | bc 
echo $m - $n | bc
echo $m \* $n | bc
echo $m / $n | bc


