#!/bin/bash

#Code to execute list of bash script present in particular location 
#Input Parameter : directory path where list of bash script present for execution


count=0
CODE_EXECUTION_PATH=$1
echo " executing code  present in ${CODE_EXECUTION_PATH} ....."
for file in `ls -al ${CODE_EXECUTION_PATH}/*`
	do
		if [ -f "$file" ]
		then
			count=`expr $count + 1`
			#execute bash file 
			bash $file
			sleep 30
			rm $file
		fi
done
