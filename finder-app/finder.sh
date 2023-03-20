#!/bin/bash

filesdir=$1
searchstr=$2

# if [ $# -le 3 ]
# then
#     echo "please specify at the directory and serachstring"
#     exit 1
# fi 
if [ -z $filesdir ] || [ -z $searchstr ]
then
    echo "must mention directory and search string"
    exit 1
fi

if  ! [ -d $filesdir ]
then
    echo "Does not present a directory on the filesystem"
    exit 1
fi 
X=$(find $filesdir -type f| wc -l)
# X=$(ls -la "$filesdir" | wc -l)
#X=$((X-3))
Y=$(grep -i $searchstr -r $filesdir | wc -l) 
echo "The number of files are $X and the number of matching lines are $Y"
