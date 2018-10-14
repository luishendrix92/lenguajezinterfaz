; 4 - Muestra una frase cualquiera con variable
; L¢pez Garay Luis Felipe
; 15211312
; 14 de Octubre del 2018
; DOS Encoded [ ]

.model small

.stack 64

.data
  frase db "M s vale p jaro en mano que un ciento volando",10,13,'$'

.code
MAIN PROC
  mov ax,@data
  mov ds,ax

  mov ah,09h
  lea dx,frase
  int 21h

  .exit
ENDP

end MAIN
