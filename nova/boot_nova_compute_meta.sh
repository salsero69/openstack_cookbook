#!/bin/bash

 nova boot --poll --flavor m1.tiny --image b11c5c3a-d37c-474b-bf9d-d86d1de6becc --meta server_type=web --meta host_name=www.server.com  "Thursday 2 with Meta"
