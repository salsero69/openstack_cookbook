#!/bin/bash

function exec_command
{
	echo 
	echo ">>>> $1 <<<<"
	echo 
	eval $1
}

echo -e "This script creates a new compute instance\n\n"
echo "******************************************"

echo 
echo "**** FLAVOURS ****"
exec_command "nova flavor-list --extra-specs"

read -p "Enter Flavour ID:" FLAVOUR

echo
echo "**** IMAGES ****"
exec_command "nova image-list"
 
read -p "Enter Image Name:" IMAGE

echo 
echo "**** INSTANCE NAME ****"
read -p "Enter an instance name:" INSTANCE_NAME

echo
exec_command "nova flavor-show $FLAVOUR"
exec_command "nova image-show $IMAGE"

exec_command "nova boot --flavor $FLAVOUR --image $IMAGE \"$INSTANCE_NAME\""
exec_command "nova list"

