#!/bin/bash

echo $1 | sed ':a;s/\B[0-9]\{3\}\>/,&/;ta'
