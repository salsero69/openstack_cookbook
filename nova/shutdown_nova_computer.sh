#!/bin/bash

function exec_command
{
	echo 
	echo ">>>> $1 <<<<"
	echo 
	eval $1
}

echo "**** IMAGES ****"
exec_command "nova list"

read -p "Enter ID to shutdown:" INSTANCE

exec_command "nova stop  $INSTANCE"

echo

exec_command "nova list"

read -p "Delete Instance (y/N)?" DELETE

if ["$DELETE" == "Y"]; then
	exec_command "nova delete $INSTANCE"
	exec_command "nova list"
	
else if ["$DELETE" == "y"]; then
	exec_command "nova delete $INSTANCE"
	exec_command "nova list"
	
else

	echo "Instance will not be deleted"
	
fi


