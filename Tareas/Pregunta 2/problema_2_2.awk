#! /usr/bin/awk -f

# se le debe pasar configuraciones.dat como archivo y n y N  como variable

BEGIN { #las variables que le pasas si las agarra el BEGIN, en este caso le pasas el n

    g = 9.8;  #aceleración gravitacional             

    for (l = 1; l <= N; l++) {
        for (i = 1; i <= n; i++){
                for (j = 1; j <= n; j++){

                    K[i,j,l] = 0 ;
                
                }
                b[i,l] = 0 ;
        }
    }
}
{
    # Saltos entre cofiguaraciones los hace awk solo con el
    for (i = 1; i <= n; i++) {
        K[i,i,NR] = $i + $(i+1);
        K[i,i-1,NR] = -$i;
        K[i,i+1,NR] = -$(i+1);
        b[i,NR] = g*$(n+i) ;
    }
}
END {
    for (l = 1; l <= N; l++) {
        #printf "CONFIGURACIÓN %2d-ésima \n",l;
        printf "K%d = \n",l;
        for (i = 1; i <= n; i++){
            for (j = 1; j <= n; j++){

                printf "%3d ",K[i,j,l];

                
            
            }
            printf "\n"
        }
        printf "b%d = \n",l;
        
        for (i = 1; i <= n; i++) {
            printf "%3.2f " ,b[i,l]; 
        }
        printf "\n"
    }
} 
