#!/usr/bin/python
from math import ceil,log

if __name__ == '__main__':
        print "Input the number of switches to find combination"
        num_switches = int(raw_input())
        comb = pow(2,num_switches)
        print "combination is : " + str(comb)
        print "Enter the combination to find the number of the switches "
        new_comb = int(raw_input())
        print "Number of switches needed is : "  + str(ceil(log(new_comb,2)))

