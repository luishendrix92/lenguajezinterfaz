; 2 - Programa que imprime nombre y Num.Ctrl
; López Garay Luis Felipe
; 15211312
; 13 de Septiembre del 2018

.Model small

.stack 64

.Data
  msg db "15211312 - Lopez Garay Luis Felipe", 0Ah, 0Dh, "$"

.Code
  mov ax,seg msg ; Mover el mensaje al registro de datos
  mov ds,ax
  mov ah,09h ; Solicitar una impresión de cadena
  lea dx,msg
  int 21h    ; Mandar llamar a la interrupción IO

  mov ah,4Ch ; Solicitar una terminación con return code
  int 21h    ; Mandar a llamar a la interrupción IO

.Exit

end

