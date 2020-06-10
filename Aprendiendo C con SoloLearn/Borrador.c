#include <stdio.h>

int main() {

    int x = 2;

    x += 1;  // 3
    printf("%d \n",x);
    x -= 1;  // 2
    printf("%d\n",x);
    x *= 3;  // 6
    printf("%d\n",x);
    x /= 2;  // 3
    printf("%d\n",x);
    x %= 2;  // 1
    printf("%d\n",x);
    x += 3 * 2;  // 7
    printf("%d\n",x);

}
