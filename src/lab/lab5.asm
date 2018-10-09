; Cuadrado con espaciado usando MULT y STACK para ciclo anidado

.Model small
.Stack 64

.Data
  char    db '*'
  espacio db 4
  n_cols  dw 10
  n_rows  dw 5

.Code
MAIN PROC
  mov ax,@Data
  mov ds,ax

  mov ah,00h
  mov al,03h
  int 10h

  mov cx,n_rows
  CICLO_EXTERNO:
    push cx

    mov cx,n_cols
    CICLO_INTERNO:
      ; Fila multiplicada
      pop ax
      push ax
      mul espacio
      mov dh,al

      ; Columna multiplicada
      mov ax,cx
      mul espacio
      mov dl,al

      ; Mover cursor
      mov ah,2h
      int 10h

      ; Imprimir caracter
      mov dl,char
      mov ah,02h
      int 21h

      loop CICLO_INTERNO

    pop cx
    loop CICLO_EXTERNO

  .Exit
ENDP

End MAIN
