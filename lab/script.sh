#!/bin/bash



arr=( $( objdump -d main1.o | grep -P "^.*[0-9abcdef]:" | awk '[[:space:]][[:space:]]*' '{print $2}' ))

for v in "${arr[@]}" ;do

echo $v


done


