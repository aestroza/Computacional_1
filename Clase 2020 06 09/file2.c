#include <stdio.h>
#include <stdlib.h>



int main(int argc,char *argv[]){
    FILE *archivo=fopen("./data2.dat","w");
    fprintf(archivo,"%i %f\n",2,4.5);  //si pones fprintf(stdout, "cosas") es lo mismo que printf 
    fprintf(archivo,"%i %f\n",3,4.5);  
    fprintf(archivo,"%i %f\n",9,6.5);  
    fclose(archivo);
    return 0;
}