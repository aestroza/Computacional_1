#! /bin/bash

awk -f extraer_dia_cualquiera.awk gatos_sismos_comas.dat

echo "Dia I_prom Dstd_I Int_max I_min Num Lat_prome Dvstd_lat Long_prom Dvstd_lon Prof_prom Dvstd_prof"  
for i in {1..12}
do
    for j in {1..31}
    do
        FILE="./EXtRaCthor/datos_"$j"_"$i"_2010.dat"
        if test -f "$FILE"; then
            awk -v d="$j" -v m="$i" -v a="2010" -f Matrix_generator.awk $FILE
        fi
    done
done




#grep -i '5, 3, 2010,' gatos_sismos_comas.dat