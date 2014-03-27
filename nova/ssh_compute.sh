#!/bin/bash

function exec_command
{
	echo 
	echo ">>>> $1 <<<<"
	echo 
	eval $1
}

echo "**** IMAGES ****"
exec_command "nova list --status ACTIVE"

read -p "Enter ID to SSH into:" INSTANCE

echo "In a CirrOS image, the login account is cirros. The password is cubswin:)"

exec_command "nova ssh --login cirros $INSTANCE"
"
