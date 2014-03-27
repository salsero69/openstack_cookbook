#!/bin/bash

nova boot --poll --flavor m1.tiny --image b11c5c3a-d37c-474b-bf9d-d86d1de6becc --file ~/openstack_cookbook/nova/file.txt=/home/cirros  "Thursday 2 with Meta"
