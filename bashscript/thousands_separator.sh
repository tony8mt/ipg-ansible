#!/bin/bash

echo "my arg :"  $1

if  [[ ! $1 =~ ^[0-9]+$ ]] || [ $# -ne 1 ] ; then
    echo " Invalid argument"
    exit 1
else    
    echo $1 | sed ':a;s/\B[0-9]\{3\}\>/,&/;ta'
fi