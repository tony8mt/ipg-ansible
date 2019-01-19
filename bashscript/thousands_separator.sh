#!/bin/bash


if  [[ ! $1 =~ ^[0-9]+$ ]] || [ $# -ne 1 ] ; then
    echo " Invalid argument"
    exit 1
else    
    echo "My argument :  $1 "
    echo "Thousand Separated value : "
    echo $1 | sed ':a;s/\B[0-9]\{3\}\>/,&/;ta'
fi