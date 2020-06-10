#include <stdio.h>
#include <math.h>

struct estructura{
  int valor_1;
  float valor_2;
  double valor_3;

};

void ejemplo1(void);
void ejemplo2(void);
void ejemplo3(void);
double funcion(double,double);


int main(int argc, char *argv[]){

    ejemplo3();
    return 0;

}
/*
comentario multi-línea
*/
double funcion(double x, double y){
    double z=tan((x+y)*(M_PI/180.0));

    return z;
}

void ejemplo3(void){
    double w = funcion(45,45);
    printf("resultado: %f \n", w);
}



void ejemplo2(void){
    double dato = 10.5;
    double *ptr_dato = &dato; //esto es para definir/obtener el puntero del "dato"
    double **ptr_ptr_dato = &ptr_dato; 

    printf("%f %f %f \n",dato, *ptr_dato, **ptr_ptr_dato);
}


void ejemplo1(void)
{
    int valor=2;
    int i=0,j=0;
    int array[2][2]={ {1,2} , {3,4} };

    struct estructura obj;
    obj.valor_1 = 3;
    obj.valor_2 = 3.2;
    obj.valor_3 = 12.200;


    printf("la variale tiene valor: %i\n", valor);

    for (i = 0; i < 2; ++i){
        for(j = 0; j < 2; ++j){
            printf("%i ", array[i][j]);
        }
        printf("\n");
    }

    printf("objeto: valor_1: %i, valor_2: %f, valor_3: %f\n",obj.valor_1,obj.valor_2,obj.valor_3);
}
