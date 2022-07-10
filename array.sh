#!/bin/bash

# Place your code here
folder_num=$1

if [[ $folder_num -ge 1 ]] && [[ $folder_num -le 32 ]]
then
    for folder_index in {a..z}
    do
        if [[ -d "folder_$folder_index" ]]
        then
            echo "Folder folder_$folder_index is exist"
        else
            if [[ $folder_count -le $folder_num ]]
            then
                echo "folder_$folder_index $folder_count"
                mkdir folder_$folder_index
                let "folder_count=$folder_count+1"
            else
                exit 0
            fi
        fi
    done
else
    exit 1
fi

