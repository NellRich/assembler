#include <stdio.h>
int main() {
    int a [] = {210, 41, 56, 43, 32, 52, 30, 10, 65, 10};
    int n = 10;
    int maxi = a[0];
    int mini = a[0];

    for(int i = 0; i < n; i++) {
        if (a[i] > maxi) maxi = a[i];
        if (a[i] < mini) mini = a[i];
    }
    printf("\nMaximum element : %d", maxi);
    printf("\nMinimum element : %d", mini);
}
