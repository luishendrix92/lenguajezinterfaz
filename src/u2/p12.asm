; 12 - Programa que pide una nombre, noCtrl y carrera con DUP
; López Garay Luis Felipe
; 15211312
; 4 de Octubre del 2018

.Model small

.Stack 64

.Data
  nombre_prompt  db "Como te llamas?: $"
  noctrl_prompt  db "Cual es tu numero de control?: $"
  carrera_prompt db "Que carrera estudias?: $"

  nombre_input   db 50 dup(?),10,13,'$'
  noctrl_input   db 10 dup(?),10,13,'$'
  carrera_input  db 30 dup(?),'$'

.Code
MAIN PROC
  mov ax,@Data
  mov ds,ax
  
  mov ah,09h
  lea dx,nombre_prompt
  int 21h

  mov ah,3fh
  mov cx,50
  lea dx,nombre_input
  int 21h

  mov ah,09h
  lea dx,noctrl_prompt
  int 21h

  mov ah,3fh
  mov cx,10
  lea dx,noctrl_input
  int 21h

  mov ah,09h
  lea dx,carrera_prompt
  int 21h

  mov ah,3fh
  mov cx,30
  lea dx,carrera_input
  int 21h

  mov ah,09h
  lea dx,nombre_input
  int 21h
  lea dx,noctrl_input
  int 21h
  lea dx,carrera_input
  int 21h

  .Exit
ENDP

End MAIN
