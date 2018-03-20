#include <iostream>
#include <math.h>

using namespace std;


void sort(int array[],int length){
	int j,temp;
	bool swap;

	do {
		swap = false;
		for (j=1;j<length ; j++){
			if (array[j-1] > array[j]){
				temp = array[j-1];
				array[j-1]=array[j];
				array[j]=temp;
				swap = true;

			}

		}
	} while (swap);
}

void median(int array[],int length){
	int middle;
	float avg;
	if (length % 2 == 0){
		middle = length /2 ;
		avg = (array[middle] + array[middle-1])/2;
		cout << "Median is : " << avg << endl;
	}
	else{
		middle=floor(length/2);
		cout << "Median is : " << array[middle] << endl;


	}
}

void mode(int array[],int length){
	int count=1, mode=0, x;
	for (x=1;x<length;x++){
		if(array[x-1] == array[x]){
			count++;
		}
		else{
			count=1;
		}
		if (count > mode){
			mode=count;
		}

	}
	cout << "mode is : " << mode << endl;
}

int main(){
	int x,length,  j;
	float avg ;
	int middle;

	cout << "Enter the length of array " << endl;
	cin >> length;
	int array[length];

	cout << "Enter the elements of array " << endl;
	for (x=0;x < length ; x++){
		cin >> array[x];
	}
	sort(array,length);
	for (x=0;x<length;x++){
		cout << array[x] << endl;
	}
	
	median(array,length);
	mode(array,length);
	
	return 0;
}
