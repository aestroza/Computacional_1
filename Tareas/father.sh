#! /bin/bash

#Cambiar puntos a comas, dado que awk separa decimales con , y no .

sed "s/\([0-9]*\)\(\.\)\([0-9]*\)/\1\,\3/g" datos_sismos.dat > gatos_sismos_comas.dat

#para comparar es mas limpio tener las horas minutos y segundos en numero,0 en vez de numero,

sed "s/\([0-9]*\)\(\,\)\(\s\)/\1\,0 /4g" gatos_sismos_comas.dat > horas_gatos_sismos_comas.dat

#Promedios de 9 mayo 2010 por medios de exraer esos datos a un nuevo archivo .dat

awk -f extraer_9_mayo.awk gatos_sismos_comas.dat > mayo_9_2010.dat

awk -f script_1_awk.awk mayo_9_2010.dat

#Promedios de 9 mayo 2010 por medios de apllicarlo directamente al archivo original arreglado

#Promedios de septiembre por medios de exraer esos datos a un nuevo archivo .dat

#awk -f extraer_septiembre.awk horas_gatos_sismos_comas.dat > septiembre_2010.dat


#extraer datos de septiembre del archivo grande arreglado

#awk -f extraer_septiembre_entre_8am_y_12am.awk horas_gatos_sismos_comas.dat > septiembre_2010_entre_8am_y_12am.dat

#procesar los datos de septiembre 8am-12am para obtener las magnitudes promedio

#awk -f script_2_awk.awk septiembre_2010_entre_8am_y_12am.dat
