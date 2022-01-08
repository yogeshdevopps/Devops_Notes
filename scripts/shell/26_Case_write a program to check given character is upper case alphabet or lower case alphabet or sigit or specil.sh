#write a program to check given character is upper case alphabet or lower case alphabet or sigit or specil character
#!/bin/sh
echo "enter a single character"
read ch
case $ch in 
[a-z]) echo "you are entered a small case alphabates "
;;
[A-Z]) echo "you are entered upper case alphabtes "
;;
[0-9]) echo "you are entered a digit"
;;
?) echo "you are enter a special characer"
;;
*) echo "you entered more then one echarater"
;;
esac

