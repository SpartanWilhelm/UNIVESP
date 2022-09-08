#include <iostream>

int main () {
    int x=8, *p1, *p2;
    p1 = &x;
    p2 = p1;
    printf ("%d %d", p1, *p1, "\n");
    printf ("%d %d", p2, *p2, "\n");
    return 0;
}