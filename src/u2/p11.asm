; 11 - Programa que pide una frase con DUP
; López Garay Luis Felipe
; 15211312
; 4 de Octubre del 2018

.Model small

.Stack 64

.Data
  frase_prompt db "Escriba una frase (50c max): $"
  frase_input  db 50 dup(?),'$'

.Code
MAIN PROC
  mov ax,@Data
  mov ds,ax
  
  mov ah,09h
  lea dx,frase_prompt
  int 21h

  mov ah,3fh
  mov cx,50
  lea dx,frase_input
  int 21h

  mov ah,09h
  lea dx,frase_input
  int 21h

  .Exit
ENDP

End MAIN
