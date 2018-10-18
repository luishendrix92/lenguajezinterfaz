; Bonus 1 - Desplegar un mensaje con LEA
; L¢pez Garay Luis Felipe
; 15211312
; 18 de Octubre del 2018
; DOS Encoded [ê]

.model small

.stack 64

.data
  mensaje db "êste es un mensaje con LEA :)$"

.code
MAIN PROC
  mov ax,@data
  mov ds,ax

  mov ah,09h
  lea dx,mensaje
  int 21h
  
  .exit
ENDP

end MAIN
