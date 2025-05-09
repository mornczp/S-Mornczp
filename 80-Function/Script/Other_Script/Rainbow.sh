#!/bin/bash

declare -a ary
 
for i in `seq 40 49`
do
 
    ary[$i]=" "
    echo -en "\e[$i;5m ${ary[@]}\e[;0m"
    
done
 
 
declare -a ary
for s in `seq 1 10000`
do
    for i in `seq 40 49`
    do
        ary[$i]=" "
        echo -en "\e[$i;5m ${ary[@]}\e[;0m"    
    done
done
