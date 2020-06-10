#include <stdio.h>


main(){
    float fahr, celsius;
    int lower, upper, step;

    lower = 0;
    upper = 300;
    step = 20;
    fahr = lower;
    printf("Farenheit \t Celsius \n");
    while (fahr <= upper)
    {   
        celsius = (5.0/9.0) * (fahr - 32.0);
        printf("%10.1f\t%10.3f\n",fahr,celsius);
        fahr = fahr + step;
    }
    celsius=lower;
    printf("Celsius \t Farenheit \n");
    while (celsius <= upper)
    {   
        fahr = (9.0/5.0)*celsius + 32;
        printf("%10.1f\t%10.3f\n",celsius,fahr);
        celsius = celsius + step;
    }
    
}
    caca
    