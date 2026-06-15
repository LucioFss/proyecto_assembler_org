#include <stdio.h>
//Agregamos una función externa, la cual es una funcion assembler que 
extern void sumar_matrices(int *A, int *B, int *C, int cantElementos);  //Funcion externa de assembler
int main(){
    //Declaracion de la primera matriz
    int matriz1[4][4] = {
        {1, 2, 3, 4},
        {5, 6, 7, 8},
        {9, 10, 11, 12},
        {13, 14, 15, 16}
    };

    //Declaración de la segunda matriz 
    int matriz2[4][4] = {
        {1, 2, 3, 4},
        {5, 6, 7, 8},
        {9, 10, 11, 12},
        {13, 14, 15, 16}
    };

    //Declaración de la matriz resultante
    int matriz3[4][4] = {
        {0, 0, 0, 0},
        {0, 0, 0, 0},
        {0, 0, 0, 0},
        {0, 0, 0, 0}
    };

    //Lamamos a la función
    sumar_matrices((int *)matriz1,(int *) matriz2,(int *) matriz3, 16);
    
    //iteracion que imprime en consola la matriz resultante
    for(int i = 0; i < 4; i++){
        for (int j = 0; j < 4; j++){
            printf("%d ", matriz3[i][j]);
        }
        printf("\n");
    }
    return 0;
}
