#!/bin/sh

help()
{
cat << EOF
SUPPORTED OPERATIONS =>
+ :- ADDITION
- :- SUBTRACTION
* :- MULTIPLICATION
% :- MODULO
/ :- DIVISION
s(x) :- sin(x)
c(x) :- cos(x)
t(x) :- tan(x)
l(x) :- log(x)
e(x) :- e^(x)
sqrt(x) :- SQUARE ROOT OF NUMBER
> , < , >= , <= , == , != (ALL RELATIONAL OPEARTORS)
EOF
}
echo 'TO EVALUATE YOUR EXPRESSION , USE "calc expression" , FOR HELP, USE "help" AND FOR EXIT , USE "quit"'
echo 'Example:- \n calc sqrt(6) \n calc 8*9-5+6'
echo -n '>> '
while read command arg 
do
 case $command
 in
   quit|exit) exit 0 ;;
   help|\?) help ;;
   calc) echo $arg | bc -l ;;
 esac
 echo -n ">> "
done
 
exit 0
