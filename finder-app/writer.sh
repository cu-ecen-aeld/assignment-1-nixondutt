#!/bin/bash

# if [ $# -le 2 ]
# then
#     echo "please specify filename";
#     exit 1;
# fi 
if [ -z $1 ] || [ -z $2 ]
then
    echo "File name and write string must be specfied";
    exit 1;
fi 
dirpath=$(dirname "$1")
mkdir -p $dirpath

if [ ! -f $1 ]
then
    touch $1;
fi 
echo $2 > $1;

if [ $? -ne 0 ]
then
    echo "file could not be created";
fi