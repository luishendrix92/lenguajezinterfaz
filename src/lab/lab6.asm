.model small

.stack 64

.data

.code
  mov ah,00h
  mov al,03h
  int 10h

  ; Nibble DH = 00000010 = 2 Fila
  ; Nibble DL = 00000010 = 2 Columna
  mov dx,0000001000000010b
  mov ah,02h
  int 10h

  push dx

  mov dx,65
  mov ah,02h
  int 21h

  pop dx
  ; Nibble DH = 00000010 = 2 Fila
  ; Nibble DL = 00000000 = 0 Columna
  xor dl,dl
  mov ah,02h
  int 10h

  push dx

  mov dx,66
  mov ah,02h
  int 21h

  pop dx
  ; Nibble DH = 00000000 = 0 Fila
  ; Nibble DL = 00000000 = 0 Columna
  xor dx,dx
  mov ah,02h
  int 10h

  mov dx,67
  mov ah,02h
  int 21hb

.exit

end
