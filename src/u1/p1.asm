; 1 - Programa que imprime "Hola Mundo"
; López Garay Luis Felipe
; 15211312
; 13 de Septiembre del 2018

.Model small

.stack 64

.Data

.Code
  mov dx,72
  mov ah,02h
  int 21h

  mov dx,79
  mov ah,02h
  int 21h

  mov dx,76
  mov ah,02h
  int 21h

  mov dx,65
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,77
  mov ah,02h
  int 21h

  mov dx,85
  mov ah,02h
  int 21h

  mov dx,78
  mov ah,02h
  int 21h

  mov dx,68
  mov ah,02h
  int 21h

  mov dx,79
  mov ah,02h
  int 21h

  ; Line Feed y Carriage Return
  mov dx,10
  mov ah,02h
  int 21h

  mov dx,13
  mov ah,02h
  int 21h

.Exit

end
