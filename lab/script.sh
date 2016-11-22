#!/bin/bash
nrMov=0
nrArith=0
nrJmp=0
nrOther=0
movI=( "55" "5d" "88" "89" "8a" "8b" "48" "c7" )
arithI=( "83" "0f" "3b" )
jmpI=( "c3" "eb ""70" "71" "72" "73" "74" "75" "76" "77" "78" "79" "7a" "7b" "7c" "7d" "7e" "7f" ) 
otherI=()

arr=( $( objdump -d -M intel main1.o | grep -P "^.*[0-9abcdef]:" | awk '{print $2}' ))

for v in "${arr[@]}" ;do
	if [[  " ${movI[*]} " == *" $v "* ]] ; then
		nrMov=$((nrMov + 1))
	elif [[  " ${arithI[*]} " == *" $v "* ]] ; then
		nrArith=$((nrArith + 1))
	elif [[  " ${jmpI[*]} " == *" $v "* ]] ; then
		nrJmp=$((nrJmp + 1))
	else 
		nrOther=$((nrOther + 1))
		echo "not found $v"
	fi
	
done


echo "numar total de instructiuni : ${#arr[@]} "
echo "numar de instructiuni de transfer de date : $nrMov"
echo "numar de instructiuni aritmetice : $nrArith"
echo "numar de instructiuni de salt : $nrJmp"
echo "alte instructiuni : $nrOther"


