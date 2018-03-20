#!/usr/bin/sh

IFS=$'\n'

asort(){
	array=("${!1}")
	swap=true
	while [ "${swap}" == "true" ]
	do
		swap=false
		for((x=1; x < ${length};x++))
		do
			if [ ${array[$((x-1))]} -gt ${array[${x}]} ];then
				temp=${array[$((x-1))]}
				array[$((x-1))]=${array[$((x))]}
				array[$((x))]=${temp}
				swap=true

			fi


		done
	 done
}

#median_num(){
#}

#mode(){

#}

echo "Enter the length of the array"
read length
echo "Enter the elements of the array"
for ((x=0; x<${length}; x++))
do 
	read array[${x}] 
done
echo "unsorted array"
printf '%d\n' "${array[@]}"

## Note there is no pass by reference I suppose . 
asort array[@]
echo "sorted array"
printf '%d\n' "${array[@]}"

