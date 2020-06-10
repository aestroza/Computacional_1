#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
    printf("%i\n",argc);
    if( argc < 4 ){
        puts("faltan parámetros");
        exit(1);
    }else
    {
    printf("%s\n",argv[0]);
    printf("%s\n",argv[1]);
    printf("%s\n",argv[2]);

    double val_1=atof(argv[1]);
    double val_2=atof(argv[2]);

    printf("%f\n",val_1);
    printf("%f\n",val_2);
    }


    return 0;
}