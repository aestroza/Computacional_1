#! /usr/bin/awk -f
BEGIN	{
    print "Comienzo"
}
{
    #for (i=1;i<=NF;i++) {
    #    printf $i " "
    #    n++
    #}
    lat_sum += $7
    mag1_sum += $10
    mag2_sum += $12
    #printf "\n"
    m++
}
END	{
    lat_prom=lat_sum/m
    mag1_prom=mag1_sum/m
    mag2_prom=mag2_sum/m
    print "Final"
    print "número de eventos = " m
    #print "Suma total de latitudes = " lat_sum
    print "Latitud promedio = " lat_prom
    #print "Suma total de magnitud 1 = " mag1_sum
    print "Magnitud 1 promedio = " mag1_prom
    #print "Suma total de magnitud 2 = " mag2_sum
    print "Magnitud 1 promedio = " mag2_prom
}


