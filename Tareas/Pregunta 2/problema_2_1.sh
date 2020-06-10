#! /bin/bash

#item a
n=15;
N=4;
k=($(seq 1 1 $n));
m=($(seq 1 1 $n));

{
for (( i=1; i<=$N; i++ ))
do
   aux_k=($(shuf -e ${k[@]}));
   aux_m=($(shuf -e ${m[@]}));
   printf '%2s ' "${aux_k[@]}" 
   printf '%2s ' "${aux_m[@]}"
   printf '\n'

done
} > configuraciones.dat

#item b

awk -v N=$N -v n=$n -f problema_2_2.awk configuraciones.dat > ecuaciones.dat

