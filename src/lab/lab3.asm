; Programa que utiliza stack para llamar funciones

.Model small

.Stack 64

.Data

.Code
MAIN PROC
  mov ah,00h
  mov al,03h
  int 10h

  push 12 ; fila
  push 39 ; columna
  call GOTOXY

  mov dx,'X'
  mov ah,02h
  int 21h

  .Exit
ENDP

GOTOXY PROC
  push bp
  mov bp,sp

  mov ah,02h
  mov dh,[bp+6] ; fila
  mov dl,[bp+4] ; columna
  int 10h

  pop bp
  ret 4
ENDP

End MAIN
