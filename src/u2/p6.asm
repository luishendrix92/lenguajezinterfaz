; 6 - Datos en cada linea con offset
; L¢pez Garay Luis Felipe
; 15211312
; 27 de Septiembre del 2018
; DOS Encoded [¢¡]

.Model small

.Stack 64

.Data
  nombre    db "L¢pez Garay Luis Felipe", 10, 13, "$"
  nocontrol db "15211312", 10, 13, "$"
  carrera   db "Ingenier¡a en Sistemas", 10, 13, "$"
  edad      db "26", 10, 13, "$"

.Code
  mov ax,@Data
  mov ds,ax

  mov ah,09h
  mov dx,offset nombre
  int 21h
  mov dx,offset nocontrol
  int 21h
  mov dx,offset carrera
  int 21h
  mov dx,offset edad
  int 21h

.Exit

end
