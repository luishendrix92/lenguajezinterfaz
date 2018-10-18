; Bonus 2 - Desplegar un mensaje con OFFSET
; L¢pez Garay Luis Felipe
; 15211312
; 18 de Octubre del 2018
; DOS Encoded [ê]

.model small

.stack 64

.data
  mensaje db "êste es un mensaje con OFFSET :O$"

.code
MAIN PROC
  mov ax,@data
  mov ds,ax

  mov ah,09h
  mov dx,offset mensaje
  int 21h
  
  .exit
ENDP

end MAIN
