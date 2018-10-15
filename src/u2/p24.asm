; 24 - Imprimir la suma de 2 n£meros usando 2 d¡gitos
; Lopez Garay Luis Felipe
; 15211312
; 14 de Octubre del 2018
; DOS Encoded [£¡]

.model small

.stack 64

.data
  suma db 0
  num1_prompt db "Escribe el primer n£mero: $"
  num1_input  db ?
  num2_prompt db 10,13,"Escribe el segundo n£mero: $"
  num2_input  db ?
  respuesta   db 10,13,"La suma de ambos es: $"

.code
MAIN PROC
  mov ax,@data
  mov ds,ax

  mov ah,09h
  lea dx,num1_prompt
  int 21h
  
  mov ah,01h
  int 21h
  sub al,'0'
  mov num1_input,al

  mov ah,09h
  lea dx,num2_prompt
  int 21h
  
  mov ah,01h
  int 21h
  sub al,'0'
  mov num2_input,al

  add al,num1_input
  mov suma,al

  mov ah,0
  aaa
  add ah,'0'
  add al,'0'
  push ax

  mov ah,09h
  lea dx,respuesta
  int 21h

  pop ax
  mov dl,ah
  push ax
  mov ah,02h
  int 21h

  pop ax
  mov dl,al
  mov ah,02h
  int 21h

  .exit
ENDP

end MAIN
