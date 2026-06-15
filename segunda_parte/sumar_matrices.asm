section .text

global _sumar_matrices
_sumar_matrices:
    ;PROLOGO
    push ebp
    mov ebp,esp
    
    mov esi, [ebp+8]    ;Direccion de el primer elemento de la primera matriz
    mov edx, [ebp+12]   ;Direccion de el primer elemento de la segunda matriz
    mov edi, [ebp+16]   ;direccion de el primer elemento de la matriz resultante
    mov ecx, [ebp+20]   ;Tamaño total de las dos matrices
    dec ecx     ;Como el parametro se ingresa como n, los indices de un arreglo bidimensional van hasta -1, decrementamos y tiene un indice valido para la primera iteracion
    
bucle:

    mov eax, [esi + ecx * 4]    ;El primer operando de la suma es un elemento de la primera matriz en una posicion en especifico
    add eax, [edx + ecx * 4]    ;Sumamos el elemento en eax, con un elemento de la segunda matriz, en la misma posicion que la primera matriz
    mov [edi + ecx * 4], eax    ;Pisamos el elemento en la segunda matriz en una posicion igual a las de la primera y segunda matriz, con el resultado de la suma de sus elementos 
    
    dec ecx     ;Decrementamos ecx para pasar a otra posicion     
    cmp ecx, 0    ;Se calcula la relacion entre ecx y 0
    jge bucle   ;Salta mientras ecx >= 0
    
    ;EPILOGO    
    mov esp,ebp
    pop ebp
    ret
    