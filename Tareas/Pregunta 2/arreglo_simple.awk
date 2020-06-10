# !/usr/bin/awk -f

#function promedio() {
#}

BEGIN { #las variables que le pasas si las agarra el BEGIN, en este caso le pasas el n
    for (i = 1; i <= n; i++){
            for (j = 1; j <= n; j++){
                Colours[i,j] = 0;
            }
        }
    }
END {
    for (i = 1; i <= n; i++){
        for (j = 1; j <= n; j++){
            printf "%2s ",Colours[i,j];
        }
        printf "\n" 
    }
}

#for(i = 1; i <= 2; i++){
#    for (j = 1; j <= 3; j++){
#        printf "Colours[%d,%d] = %s\n", i, j, Colours[i,j];
#    }
#    printf "\n" 
#}