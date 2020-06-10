#! /usr/bin/awk -f

BEGIN	{
    #print "Comienzo"
    #print "Dia Intensidad_Promedio Desviacion_estandar_de_la_intensidad Intensidad_maxima Intensidad_minima Numero_de_eventos Latitud_promedio Desviacion_estandar_de_la_latitud Longuitud_promedio Desviacion_estandar_de_la_longuitud Profundidad_promedio Desviacion_estandar_de_la_profundidad"
    #print "Dia I_prom Dstd_I Int_max I_min Num Lat_prome Dvstd_lat Long_prom Dvstd_lon Prof_prom Dvstd_prof" 
    mag1_min =  999999
    mag1_max = -999999                                                               
}
{
     lat_sum += $7
     lat_sum_sq += $7^2
     lon_sum += $8
     lon_sum_sq += $8^2
     prof_sum += $9
     prof_sum_sq += $9^2
     mag1_sum += $10
     mag1_sum_sq += $10^2
     mag2_sum += $12
     mag2_sum_sq += $12^2
     n++


     if (mag1_min > $10){
          mag1_min = $10
     }
     if (mag1_max < $10){
          mag1_max = $10
     }

     

}
END	{
     #print "Final"
     #print "n = " n
     lat_prom = lat_sum/n
     lon_prom = lon_sum/n
     prof_prom = prof_sum/n
     mag1_prom = mag1_sum/n
     mag2_prom = mag2_sum/n
     if (n>1) {
     std_dev_mag1 = sqrt( (n*mag1_sum_sq - mag1_sum^2)/(n*(n-1)) )
     std_dev_lat = sqrt( (n*lat_sum_sq - lat_sum^2)/(n*(n-1)) )
     std_dev_lon = sqrt( (n*lon_sum_sq - lon_sum^2)/(n*(n-1)) )
     std_dev_prof = sqrt( (n*prof_sum_sq - prof_sum^2)/(n*(n-1)) )
     }
     else{
     std_dev_mag1 = 0
     std_dev_lat = 0
     std_dev_lon = 0
     std_dev_prof = 0
     }
     fecha = d"/"m"/"a
     #print d"/"m"/"a" "mag1_prom" "std_dev_mag1" "mag2_prom" ma"mag1_max" mi"mag1_min" "n" "lat_prom" "std_dev_lat" "long_prom" "std_dev_lon" "prof_prom" "std_dev_prof                                              
     printf  "%10s %6.3f %6.3f %6.3f %6.3f %3d %7.3f %7.3f %7.3f %8.3f %8.3f\n", fecha,mag1_prom,std_dev_mag1,mag1_max,mag1_min,n,lat_prom,std_dev_lat,long_prom,std_dev_lon,prof_prom,std_dev_prof
}




END {
    #printf "Max value is %.2f. Min value is %.2f.\n", max, min
}