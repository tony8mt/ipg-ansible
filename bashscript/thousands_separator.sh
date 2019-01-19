#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Incorrect number of arguments"
    exit 1
else 
    echo $1 | sed ':a;s/\B[0-9]\{3\}\>/,&/;ta'
fi