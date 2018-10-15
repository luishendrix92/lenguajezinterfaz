; 18 - Inc y Dec caracter ascii pedido al usuario
; López Garay Luis Felipe
; 15211312
; 14 de Octubre del 2018

.model small

.stack 64

.data
  prompt db "Escribe un caracter: $"
  ;||||||||||||||||-------------16--------------32---------------49-||
  answer db 10,13,"Tu caracter: [ ] | Anterior: [ ] | Siguiente: [ ]$"

.code
MAIN PROC
  mov ax,@data
  mov ds,ax

  ; Pedir caracter
  mov ah,09h
  lea dx,prompt
  int 21h

  ; Recibir caracter
  mov ah,01h
  int 21h ; Guardado en AL

  ; Poner cada caracter en su sitio
  ; dentro de la cadena de respuesta
  mov [answer+16],al
  dec al
  mov [answer+32],al
  add al,2
  mov [answer+49],al

  ; Imprimir respuesta
  mov ah,09h
  lea dx,answer
  int 21h

  .exit
ENDP

end MAIN
