#!/bin/bash

MOVIES=("RRR" "DJTillu" "murari")

#size of abobe array is 3.
index are 0,1,2

#list always starts with 0.

echo "First Movie is: ${MOVIES[0]}"
echo "First Movie is: ${MOVIES[1]}"
echo "First Movie is: ${MOVIES[@]}"
