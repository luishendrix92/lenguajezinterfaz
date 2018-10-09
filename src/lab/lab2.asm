; Ciclo anidado utilizando el stack y temas anteriores.
; Este programa imprime un bloque lleno de un cierto caracter
; con un tamaño dado por variables.

.Model small

.Stack 64

.Data
  char   db 'x' ; Caracter de relleno
  n_cols dw 40  ; La mitad del ancho (40)
  n_rows dw 13  ; La mitad de la altura (13 ó 12.5)

.Code
MAIN PROC
  ; Cargar las variables en memoria
  mov ax,@Data
  mov ds,ax

  ; Limpiar la pantalla
  mov ah,00h
  mov al,03h
  int 10h

  mov cx,n_rows
  CICLO_EXTERNO:
    ; Posicionarse en la fila correspondiente
    mov ah,02h
    mov dh,cl
    mov dl,0
    int 10h

    push cx
    
    mov cx,n_cols
    CICLO_INTERNO:
      ; Imprimir caracter de relleno
      mov dl,char
      mov ah,02h
      int 21h

      loop CICLO_INTERNO

    pop cx
    loop CICLO_EXTERNO

  .Exit
ENDP

End MAIN
