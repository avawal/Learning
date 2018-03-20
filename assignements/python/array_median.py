#!/usr/bin/python
import statistics as np
from  math import floor


if __name__ == '__main__':
        print "Enter the length of array"
        arr=[]
        length=int(raw_input())
        for x in range (0,length):
                print "Enter element of array"
                arr.append(int(raw_input()))
        arr.sort()
        print "sorted array is : " 
        print arr
        # another method is by usingt he statistics funtion
#        print np.median(arr)
        if (length % 2) == 0:
                median=int(round(length/2))
                print "median is :" 
                avg = (arr[median] + arr[median-1])/2
                print  "average is " + str(avg)
        else:
                median=int(floor(length/2))
                print "median is " + str(arr[median])

        count=1
        cnt=[]
        for x in range(1,length):
                if arr[x-1] == arr[x]:
                        count += 1
                else:
                       if x == length:
                               cnt.append(count)
                               count=1
                               cnt.append(count)
                       else:
                               cnt.append(count)
                               count=1
        cnt.append(count)
        print cnt

                


