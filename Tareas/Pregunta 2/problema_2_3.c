#include <stdio.h>
#include <stdlib.h>


int main(int argc,char *argv[]){
    FILE *archivo=fopen("./data2.dat","r");
    fprintf(archivo,"%i %f\n",2,4.5); 
    fclose(archivo);
    return 0;
}