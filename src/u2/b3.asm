; Bonus 3 - Ingresar 2 n£meros y decir cu l es mayor
; L¢pez Garay Luis Felipe
; 15211312
; 18 de Octubre del 2018
; DOS Encoded [£]

.model small

.stack 64

.data
  n1_prompt db "Ingresa el primer n£mero [2 d¡gitos]: $"
  n1_input  db ?
  n2_prompt db 10,13,"Ingresa el segundo n£mero [2 d¡gitos]: $"
  n2_input  db ?
  resp_nma1 db 10,13,"El n£mero [$"
  resp_nma2 db "] es el mayor.$"
  resp_nequ db 10,13,"Ambos n£meros son iguales...$"

  base db 10

.code
MAIN PROC
  mov ax,@data
  mov ds,ax

  ; Pedir el primer n£mero
  mov ah,09h
  lea dx,n1_prompt
  int 21h

  mov ah,01h
  int 21h
  sub al,'0'
  mul base
  mov n1_input,al

  mov ah,01h
  int 21h
  sub al,'0'
  add n1_input,al

  ; Pedir el segundo n£mero
  mov ah,09h
  lea dx,n2_prompt
  int 21h

  mov ah,01h
  int 21h
  sub al,'0'
  mul base
  mov n2_input,al

  mov ah,01h
  int 21h
  sub al,'0'
  add n2_input,al

  ; Comparaci¢nes
  mov bh,n1_input
  mov bl,n2_input
  cmp bh,bl
  je SON_IGUALES
  ja NUM1_MAYOR
  jb NUM2_MAYOR

  SON_IGUALES:
  lea dx,resp_nequ
  jmp IMPRIMIR_COMPARACION

  NUM1_MAYOR:
  mov ah,09h
  lea dx,resp_nma1
  int 21h

  xor ax,ax
  mov al,n1_input
  aam
  mov bx,ax

  mov ah,02h
  mov dl,bh
  add dl,'0'
  int 21h
  mov dl,bl
  add dl,'0'
  int 21h
  lea dx,resp_nma2

  jmp IMPRIMIR_COMPARACION

  NUM2_MAYOR:
  mov ah,09h
  lea dx,resp_nma1
  int 21h

  xor ax,ax
  mov al,n2_input
  aam
  mov bx,ax

  mov ah,02h
  mov dl,bh
  add dl,'0'
  int 21h
  mov dl,bl
  add dl,'0'
  int 21h
  lea dx,resp_nma2

  IMPRIMIR_COMPARACION:
  mov ah,09h
  int 21h
  .exit
ENDP

end MAIN
