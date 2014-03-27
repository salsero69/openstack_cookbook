#!/bin/bash

# nova volume-list 

nova boot --poll --flavor m1.tiny --image b11c5c3a-d37c-474b-bf9d-d86d1de6becc --ephemeral size=20,format=ext3  "Thursday 2 with Meta"
