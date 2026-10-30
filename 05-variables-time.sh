#!/bin/bash

# TIMESTAMP=$(date)
# echo "Time is: $TIMESTAMP"

start_time=$(date +%s)

sleep 10

end_time=$(date +%s)

total time=$(($end_time-$start_time))
 echo "total time is: $total time"