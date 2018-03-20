#include <iostream>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

// Take input of length of array and input of combinations and figure how many switches would be needed

using namespace std;

int main(){
	int length, comb, exp_comb;
	float switch_needed;
	cout << "Input the length of array"  << endl ;
	cin >> length;
        comb = pow(2,length) ;
	printf ("max combination that we can have with array of lenth  %d is %d \n",length, comb);
	cout << "Enter the number of combination you want to find the number of switches needed" << endl;
	cin >> exp_comb;
	switch_needed = (log(exp_comb)/log(2));
	cout << ceil(switch_needed) << endl;
	return 0;
}
