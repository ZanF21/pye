#!/bin/sh

runtime=$1
count=$2
# print usage 
if [ -z "$runtime" ]; then
    echo "Usage: ./run.sh <runtime> <number of runs=100>"
    echo "Example: ./run.sh 1"
    echo "This will run the sleep tests for 1E-6 for 100 runs"
    exit 1
fi

if [ -z "$count" ]; then
    count=100
fi

file_name="res_$1_$2.txt"
touch $file_name
gcc sleep_test.c -lm -O3 -o sleep_test 
for i in $(seq 1 $count)
do
    time ./sleep_test $runtime >> $file_name
    
done

echo "Sleep tests complete. Results are in $file_name"

rm sleep_test
