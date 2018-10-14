; 7 - Frase con offset
; López Garay Luis Felipe
; 15211312
; 27 de Septiembre del 2018

.Model small

.Stack 64

.Data
  frase db "Ensamblado con ensamblador!", 10, 13, "$"

.Code
  mov ax,@Data
  mov ds,ax

  mov dx,offset frase
  mov ah,09h
  int 21h

.Exit

end
