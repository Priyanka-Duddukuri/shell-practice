#!/bin/bash

# TIMESTAMP=$(date)
# echo "Time is: $TIMESTAMP"

start_time=$(date +%s)

sleep 10

end_time=$(date +%s)

total time=$(($start_time-$end_time))
 echo "total time is: $total time"