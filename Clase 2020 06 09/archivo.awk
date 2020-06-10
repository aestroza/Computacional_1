#! /usr/bin/awk -f

function promedio(suma,cont) {
    for (i=0;i<5;i++) {
         printf (suma[i]/cont) "  ";      
    }
    printf "\n"
}

BEGIN{
    for (i=0;i<5;i++) {
        suma[i]=0;        
    }
    
    array_2d [0][0]=1;
    array_2d [0,1]=2;
    array_2d [1,1]=3;
    array["id","a"]=1;

    print array["id","a"];

    cont=0;
}
(NR > 4) { 
    for (i=0;i<5;i++) {
        suma[i] += $(i+1);        
    }
    getline(2);
    cont++;
}   
($1 == 5) {
    print $0,"   #Campos: ",NF;
}
END{
    promedio(suma,cont) 
}