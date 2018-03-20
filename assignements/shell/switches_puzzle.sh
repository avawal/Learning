#!/bin/sh

echo "Input number of switches"
read switches
echo "combination for $switches is :  $((2**switches)) "
echo "Number of combinations requires"
read comb
switch_needed=`echo "l($comb)/l(2)" | bc -l`
echo $switch_needed | perl -nl -MPOSIX -e 'print ceil($_);'
