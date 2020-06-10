#! /usr/bin/awk -f
BEGIN	{
    print "Comienzo"
}
{
    #for (i=1;i<=NF;i++) {
    #    printf $i " "
    #    n++
    #}
    mag1_sum += $10
    mag2_sum += $12
    #printf "\n"
    m++
}
END	{
    mag1_prom=mag1_sum/m
    mag2_prom=mag2_sum/m
    print "Final"
    print "Magnitud 1 promedio = " mag1_prom
    print "Magnitud 1 promedio = " mag2_prom
}


