#!/bin/bash

#Function to run scheduler which will keep polling at particular location for executing shell script
#Input parameter: Absolute path contains list of bash script present for execution

#How to execute code : 
#bash run_scheduler.sh /home/mandar/scheduler/run_code

CODE_EXECUTION=$1

echo "Scheduler Started for process file present at ${CODE_EXECUTION} "

#infinte loop for polling file present at particular location 

while true
do
	echo "Press [CTRL+C] to stop.."
	bash ./execute_command.sh $CODE_EXECUTION	
	sleep 60
done

echo "Scheduler Ended "


