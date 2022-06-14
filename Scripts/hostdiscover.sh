#!/bin/bash

for i in $(seq 2 254); do
	timeout 1 bash -c "ping -c 1 192.168.56.$i > /dev/null 2>&1" && echo "192.168.56.$i - ACTIVE" &
done; wait
