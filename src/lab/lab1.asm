; 1 - Iterar una string en memoria y desplegar caracter por caracter

.Model small

.Stack 64

.Data
  num db "123"
  len equ $ - num ; Añadir (- 1) en caso de \r\n

.Code
MAIN PROC
  mov ax,@Data
  mov ds,ax

  mov bx,offset num
  mov cx,len

  PRINT_CHAR:
    mov dx,[bx]
    mov ah,02h
    int 21h

    inc bx
    dec cx

    jnz PRINT_CHAR

  .EXIT
ENDP

End MAIN
