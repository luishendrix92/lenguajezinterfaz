; 1 - Programa que muestra hola mundo con variable
; López Garay Luis Felipe
; 15211312
; 14 de Octubre del 2018

.model small

.stack 64

.data
  hola db "Hola Mundo!",10,13,'$'

.code
MAIN PROC
  mov ax,@data
  mov ds,ax

  mov ah,09h
  lea dx,hola
  int 21h

  .exit
ENDP

end MAIN
