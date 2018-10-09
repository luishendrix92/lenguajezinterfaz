; 5 - Nombre y NoControl con Offset
; L¢pez Garay Luis Felipe
; 15211312
; 27 de Septiembre del 2018
; DOS Encoded

.Model small

.Stack 64

.Data
  nombre db "L¢pez Garay Luis Felipe", 10, 13, "$"
  nocontrol db "15211312", 10, 13, "$"

.Code
  mov ax,@Data
  mov ds,ax

  mov dx,offset nombre
  mov ah,09h
  int 21h

  mov dx,offset nocontrol
  mov ah,09h
  int 21h

.Exit

end
