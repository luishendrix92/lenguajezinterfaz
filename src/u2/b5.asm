; Bonus 5 - Eres menor o mayor de edad
; L¢pez Garay Luis Felipe
; 15211312
; 18 de Octubre del 2018
; DOS Encoded [£¡]

.model small

.stack 64

.data
  edad_prompt  db "Dame tu edad en 2 d¡gitos: $"
  edad_input   db ?
  mayor_edad   db 10,13,"Felicidades, eres mayor de edad!$"
  menor_edad   db 10,13,"A£n no eres legal, mi chavito...$"
  mayoria_edad db 18
  base db 10

.code
MAIN PROC
  mov ax,@data
  mov ds,ax

  mov ah,09h
  lea dx,edad_prompt
  int 21h

  ; Capturar edad en variable
  mov ah,01h
  int 21h
  sub al,'0'
  mul base
  mov edad_input,al
  mov ah,01h
  int 21h
  sub al,'0'
  add edad_input,al

  ; Comparar edad con mayor¡a de edad
  mov bh,edad_input
  mov bl,mayoria_edad
  cmp bh,bl
  jae MAYOR_DE_EDAD

  MENOR_DE_EDAD:
  mov ah,09h
  lea dx,menor_edad
  int 21h
  jmp FIN_COMPARACION

  MAYOR_DE_EDAD:
  mov ah,09h
  lea dx,mayor_edad
  int 21h

  FIN_COMPARACION:
  .exit
ENDP

end MAIN
