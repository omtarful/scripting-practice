#!/bin/bash


#In this script you input dates and you output them into a file, it's basically to register tasks
#if the task or the date is repeated it doesn't add them if I recall
echo "Exercise 1 Output"
if [ ! -d ~/todo ]; then
	 mkdir ~/todo
	 echo "~/todo directory created"
fi

if [ ! -f ~/todo/data ]; then
	touch ~/todo/data 
    echo "data file created"
fi



add(){
	#checks if task already exists (case insensitive)
	task=$(grep -Eo "\s$1\s" ~/todo/data | tail -n 1)
	#task is checking if it exists
	task=$( echo $task | sed 's/ *$//g' | sed 's/^ *//g' )
	rapado=$( echo $1 | sed 's/ *$//g' | sed 's/^ *//g'  )
	#this is to capture the date
	t_date=$( echo $task | sed -E 's/[\-]/-/g' |  grep -E "[0-9-]+" | sed 's/ *$//g' | sed 's/^ *//g' )
	arg_date=$( echo $2 | sed -E 's/[\-]/-/g' |  grep -E "[0-9-]+" | sed 's/ *$//g' | sed 's/^ *//g' )
	if [ "$task" == "$rapado" ]  && [ "$t_date" == "$arg_date" ]; then
		echo "Task already exists"
		return 1
	fi
	
	num=0
	if [ ! -s ~/todo/data ]; then
		 num=1
	else
		num=$(tail -n 1 ~/todo/data | grep -oE "^[0-9]+") 
		num=$(($num + 1)) 
	fi
	
	#if date is not inputted correctly, no date is added
	IFS='-|/|\' read -ra dates <<< $2
	last=$(echo $2 | grep -v "00-" | grep -E "[0-3][0-9][\-][0-1][0-9][-\][0-9]+")
	if [ -z "$2" ]; then
		echo "Date was not inputted"
	elif [ ! -z "$2" ] && [ -z "$last" ]; then
		echo "Date format is not valid"
	fi
	if [ -z "$last" ]; then
		printf "%d:\t%-50s\n" "$num" "$rapado" >> ~/todo/data
	else 
		printf "%d:\t%-50s%02d-%02d-%04d\n" "$num" "$rapado" "${dates[0]}" "${dates[1]}" "${dates[2]}" >> ~/todo/data
	fi
	
	
	echo "ADDED #$num - $rapado"
}

delete(){
	##add an option to check if there is anything inside the file
	if [ -n "$1" ] && [ "$1" -eq "$1" ] 2>/dev/null; then
		if [ $1 -gt 0 ]; then
			task=$(cat ~/todo/data | grep -E "^$1" | awk -F$"   " '{ print $1 }' | sed 's/[0-9]://g' | sed 's/^\W//g')
			
			if [ -z "$task" ]; then
				#checks if the task exists
				echo "Task $1 was not found"
				return 1
			fi
			
			sed -i "s/^$1.*//g" ~/todo/data
			sed -i '/^$/d'  ~/todo/data
			echo "DELETED #$1 - $task"
		else 
			echo "Argument has to be greater than 0"
		fi
	else 
		echo "Argument can't be a character"
		return 1
	fi


	
}

choice=$(echo "$1" | tr '[:upper:]' '[:lower:]')

#output and error if the used add more arguments than he should have 
case $choice in
	help )
	if [ $# -gt 1 ] ; then 
		echo "illegal number of parameters"
	else
		cat HELP
	fi
		 ;;
	add )
		if [ $# -gt 3 ] ; then 
			echo "illegal number of parameters"
		else
			add "$2" "$3"
		fi
		 ;;
	list )
		if [ $# -gt 2 ] ; then 
			echo "illegal number of parameters"
		else
			#list can also accept a date argument
			echo "UPCOMING ITEMS:"
			if [ ! -z "$2" ]; then
				# check if it was written correctly 
				cat ~/todo/data | grep -E "$2"
			else 
				cat ~/todo/data
			fi
			
			
			
		fi
		;;
	del )
		#deletes depending on the number of the task
		if [ $# -gt 2 ] ; then 
			echo "illegal number of parameters"
		else
			delete $2
		fi
		;;
	* )
		echo "This option does not exist" ;;
	
esac

