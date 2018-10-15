; 26 - Realizar alguna operación con el operador AND (lógico)
; López Garay Luis Felipe
; 15211312
; 14 de Octubre del 2018

.model small

.stack 64

.data
  num   db 01000110b ; 70 ó 'F'
  resta db 11111001b ; Negar el 2ndo y 3er bit de 70
  ; Dado que negar dichos bits es igual que restar 6
  ; El resutlado es 70-6 = 64 ó '@' el cual se imprime

.code
MAIN PROC
  mov ax,@data
  mov ds,ax

  xor bl,bl ; Limpiar registro bl
  mov bl,num
  and bl,resta ; Operación lógica de negar bits

  mov ah,02h
  mov dl,bl
  int 21h ; Imprimir el arroba (64)

  .exit
ENDP

end MAIN
