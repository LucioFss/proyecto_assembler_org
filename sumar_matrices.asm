section .text

global _sumar_matrices
_sumar_matrices:
    push ebp
    mov ebp,esp
    
    mov esi, [ebp+8] ;Direccion de el primer elemento de la primera matriz
    mov edx, [ebp+12] ;Direccion de el primer elemento de la segunda matriz
    mov edi, [ebp+16] ;direccion de el primer elemento de la matriz resultante
    mov ecx, [ebp+20] ;Tamaño total de las dos matrices
    
bucle:
    mov eax, [esi + ecx * 4] ; 
    add eax, [edx + ecx * 4] ;Sumamos los elementos en la matriz a1 y a2
    mov [edi + ecx * 4], eax
    
    loop bucle
    
    mov esp,ebp
    pop ebp
    ret
    