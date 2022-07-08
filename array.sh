#!/bin/bash

# Place your code here

folder_num=$1

folder_count=1

for folder_index in {a..z}
do
        echo $folder_index
        if [[ $folder_count -le $folder_num ]]
        then
                mkdir ./folder_$folder_index
                let "folder_count=$folder_count+1"
        else
                break
        fi
done
