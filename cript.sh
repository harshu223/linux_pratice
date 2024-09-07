#!/bin/bash
while true; do
	echo "1. Make a file
2. Display contents
3. Copy the file
4. Rename the file
5. Delete the file
6. Exit"
	read -p "Enter your choice: " c
	if [[ $c == "1" ]];then
		read -p "Enter file name: " filename
		if [ -f $filename ];then
			echo "File does exist"
		else
			cat > $filename	
		fi
elif [[ $c == "2" ]];then
		read -p "Enter file name: " filename
		if [ -f $filename ];then
			cat $filename
		else	
			echo "File doesn't exist"
		fi
elif [[ $c == "3" ]];then
		read -p "Enter source file name: " sf
		read -p "Enter target file name: " tf
		if [ -f $sf ];then
			if [ -r $sf ];then
				if [ -f $tf ];then
					echo "File does exist"
					cp $sf $tf
					echo "Copy done"
				else
					echo "File doesn't exist"
				fi
			fi	
		else 
			echo "File doesn't exist"
		fi
elif [[ $c == "4" ]];then
		read -p "Enter source file name: " sf
		read -p "Enter new file name: " tf
		if [ -f $sf ];then
			if [ -r $sf ];then
					mv $sf $tf
					echo "Rename done"
				else
					echo "File doesn't exist"
			fi	
		else 
			echo "File doesn't exist"
		fi
elif [[ $c == "5" ]];then
		read -p "Enter delte file name: " sf
		if [ -f $sf ] && [ -w $sf ];then
			echo "File does exist"
			read -p "Sure? Y/N: " d
if [[ $d == "Y" ]];then
	rm $sf
	echo "Delete done"
else
	exit
fi
		else 
			echo "File doesn't exist"
		fi
elif [[ $c == "6" ]];then
			exit
	
fi
done
