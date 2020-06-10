#! /usr/bin/awk -f
BEGIN	{
    print "Comienzo"
    #print "Dia Intensidad_Promedio Desviacion_estandar_de_la_intensidad Intensidad_maxima Intensidad_minima Numero_de_eventos Latitud_promedio Desviacion_estandar_de_la_latitud Longuitud_promedio Desviacion_estandar_de_la_longuitud Profundidad_promedio Desviacion_estandar_de_la_profundidad"
    print "Dia I_prom Dstd_I Int_max I_min Num Lat_prome Dvstd_lat Long_prom Dvstd_lon Prof_prom Dvstd_prof"                                                                          
}
{
    for (j=1;j<=12 ; j++) {
        for (i=1;i<=31 ; i++) {
            
            d= ""i","
            m= ""j","
            a="2010," 

            if ( $1 == d && $2 == m && $3 == a ) {
                d= ""i""
                m= ""j""
                a="2010" 
                lat_sum += $7
                mag1_sum += $10
                mag2_sum += $12
                n++
            }
            
            #if ( $1 == d && $2 == m && $3 == a) {

                d= ""i""
                m= ""j""
                a="2010" 
                lat_prom=lat_sum/n
                mag1_prom=mag1_sum/n
                mag2_prom=mag2_sum/n
                print d"/"m"/"a" "lat_prom" "mag1_prom" "mag2_prom
                lat_sum = 0
                mag1_sum = 0
                mag2_sum = 0
                n = 0 
                
            #}

        }   
    }
    
    
}
END	{
    print "Final"
    print "Final"
    print "n = " n
    print "Suma total de latitudes = " lat_sum
    print "Latitud promedio = " lat_prom
    print "Suma total de magnitud 1 = " mag1_sum
    print "Magnitud 1 promedio = " mag1_prom
    print "Suma total de magnitud 2 = " mag2_sum
    print "Magnitud 1 promedio = " mag2_prom
}


