; 13 - Programa que pregunta tu edad
; L¢pez Garay Luis Felipe
; 15211312
; 4 de Octubre del 2018
; DOS Encoded [¤, ]

.Model small

.Stack 64

.Data
  edad_prompt db "Cu ntos a¤os tienes?: $"
  edad_input  db 3 dup(?),'$'
  edad_resp_l db "Tienes [$"
  edad_resp_r db "] a¤os!$"

.Code
MAIN PROC
  mov ah,00h
  mov al,03h
  int 10h

  mov ax,@Data
  mov ds,ax
  
  mov ah,09h
  lea dx,edad_prompt
  int 21h

  mov ah,3fh
  mov cx,3
  lea dx,edad_input
  int 21h

  mov ah,02h
  mov dh,2
  mov dl,0
  int 10h

  mov ah,09h
  lea dx,edad_resp_l
  int 21h
  lea dx,edad_input
  int 21h

  mov ah,02h
  mov dh,2
  mov dl,11
  int 10h

  mov ah,09h
  lea dx,edad_resp_r
  int 21h

  .Exit
ENDP

End MAIN
