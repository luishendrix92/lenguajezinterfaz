; 2 - Muestra n£mero de control y nombre con variable
; L¢pez Garay Luis Felipe
; 15211312
; 14 de Octubre del 2018
; DOS Encoded [¢]

.model small

.stack 64

.data
  alumno db "15211312 - L¢pez Garay Luis Felipe",10,13,'$'

.code
MAIN PROC
  mov ax,@data
  mov ds,ax

  mov ah,09h
  lea dx,alumno
  int 21h

  .exit
ENDP

end MAIN
