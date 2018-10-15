; 20 - Mover el contenido de una veriable a otra
; López Garay Luis Felipe
; 15211312
; 14 de Octubre del 2018

.model small

.stack 64

.data
  antes   db "Antes del movimiento de v1 a v2:",10,13,'$'
  despues db "Tras el movimiento de v1 a v2:",10,13,'$'
  v1 db "Variable 1",10,13,'$'
  v2 db "Variable 2",10,13,'$'

.code
MAIN PROC
  mov ax,@data
  mov ds,ax
  mov es,ax

  mov ah,09h
  lea dx,antes
  int 21h
  lea dx,v1
  int 21h
  lea dx,v2
  int 21h

  ; Mover de v1 a v2
  mov si,offset v1
  mov di,offset v2
  rep movsb

  mov ah,09h
  lea dx,despues
  int 21h
  lea dx,v1
  int 21h
  lea dx,v2
  int 21h

  .exit
ENDP

end MAIN
