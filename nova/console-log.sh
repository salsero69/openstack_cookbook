#!/bin/bash

echo "Please enter instance ID: "
read INSTANCE_ID

echo "nova console-log $INSTANCE_ID"

nova console-log $INSTANCE_ID