; 1 - Programa que muestra info m¡a usando variables
; L¢pez Garay Luis Felipe
; 15211312
; 27 de Septiembre del 2018
; DOS Encoding - [¢ (162/0xAC)]

.Model small

.stack 64

.Data
  nombre    db "L¢pez Garay Luis Felipe", 10, 13, "$"
  nocontrol db "15211312", 10, 13, "$"
  carrera   db "Sistemas Computacionales", 10, 13, "$"
  edad      db "26", 10, 13, "$"

.Code
  mov ax,@Data
  mov ds,ax

  lea dx,nombre
  mov ah,09h
  int 21h

  lea dx,nocontrol
  mov ah,09h
  int 21h

  lea dx,carrera
  mov ah,09h
  int 21h

  lea dx,edad
  mov ah,09h
  int 21h

.Exit

end
