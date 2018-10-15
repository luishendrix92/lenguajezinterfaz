; 23 - Utilizar ciclo anidado para formar un cuadrado espaciado
; López Garay Luis Felipe
; 15211312
; 14 de Octubre del 2018

.model small

.stack 64

.data
  char    db '*'
  espacio db 3
  n_cols  dw 20
  n_rows  dw 6

.code
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

  .exit
ENDP

end MAIN
