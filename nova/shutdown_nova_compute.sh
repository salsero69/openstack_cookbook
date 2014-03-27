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



