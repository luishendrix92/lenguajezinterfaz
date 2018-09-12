; programa que muestra un caracter
; Gustavo Ramirez
; 10211430
; 11 de Septiembre del 2018

.Model small

.stack 64

.Data

.Code
  mov dx,64
  mov ah,02h
  int 21h

.Exit

end
