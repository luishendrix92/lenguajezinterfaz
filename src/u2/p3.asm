; 3 - Muestra datos de alumno en cada l¡nea con variables
; L¢pez Garay Luis Felipe
; 15211312
; 14 de Octubre del 2018
; DOS Encoded [¢]

.model small

.stack 64

.data
  noctrl  db "15211312",10,13,'$'
  nombre  db "L¢pez Garay Luis Felipe",10,13,'$'
  carrera db "Sistemas",10,13,'$'
  edad    db "26",10,13,'$'

.code
MAIN PROC
  mov ax,@data
  mov ds,ax

  mov ah,09h
  lea dx,noctrl
  int 21h
  lea dx,nombre
  int 21h
  lea dx,carrera
  int 21h
  lea dx,edad
  int 21h

  .exit
ENDP

end MAIN
