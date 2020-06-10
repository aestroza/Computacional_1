#include <stdio.h>

int main() {
  printf("int: %ld \n", sizeof(int));
  printf("float: %ld \n", sizeof(float));
  printf("double: %ld \n", sizeof(double));
  printf("char: %ld \n", sizeof(char));
  printf("long int: %ld \n", sizeof(long int));
  printf("Aquí usamos la función 'sizeof' para obtener el numero de bytes que ocupa en la memoria cada 'Data type' o 'Tipo de dato' \n ");
  
  return 0;
}