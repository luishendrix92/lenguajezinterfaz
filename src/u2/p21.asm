; 21 - Imprimir números del 1 al 9 usando dos ciclos y el stack
; López Garay Luis Felipe
; 15211312
; 14 de Octubre del 2018

.model small

.stack 64

.data

.code
MAIN PROC
  mov cx,9
  APILAR_NUMEROS:
    push cx
    
    loop APILAR_NUMEROS
  
  mov cx,9
  DESAPILAR_REVERSA:
    pop dx
    add dx,'0'
    mov ah,02h
    int 21h

    loop DESAPILAR_REVERSA

  .exit
ENDP

end MAIN
