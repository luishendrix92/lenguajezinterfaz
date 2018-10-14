; 5 - Nombre y NoControl con Offset
; Lopez Garay Luis Felipe
; 15211312
; 27 de Septiembre del 2018
; DOS Encoded [¢]

.Model small

.Stack 64

.Data
  alumno db "15211312 - L¢pez Garay Luis Felipe", 10, 13, "$"

.Code
  mov ax,@Data
  mov ds,ax

  mov ah,09h
  mov dx,offset alumno
  int 21h

.Exit

end
