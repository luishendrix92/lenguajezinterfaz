; 29 - Capturar y almacenar las pr cticas que llevo
; L¢pez Garay Luis Felipe
; 15211312
; 17 de Octubre del 2018
; DOS Encoded [¨ ]

.model small

.stack 64

.data
  unidades db 0
  decenas  db 0
  prac_input  db ?
  prac_prompt db "¨Cu ntas pr cticas llevas?: $"
  prac_ans_lt db 10,13,"Llevas $"
  prac_ans_rt db " pr cticas en el semestre :)$"

.code
MAIN PROC
  mov ax,@data
  mov ds,ax

  mov ah,09h
  lea dx,prac_prompt
  int 21h

  ; Capturar el primer d¡gito de pr cticas
  mov ah,01h
  int 21h
  sub al,'0'
  mov decenas,al

  ; Capturar el segundo d¡gito de pr cticas
  mov ah,01h
  int 21h
  sub al,'0'
  mov unidades,al

  ; Multiplicar las decenas por 10 y sumarle 
  ; unidades, luego mover el n£mero a variable
  mov al,decenas
  mov bl,10
  mul bl
  add al,unidades
  mov prac_input,al

  mov ah,09h
  lea dx,prac_ans_lt
  int 21h

  ; Realizar ajuste manual para 2 d¡gitos
  xor ax,ax
  mov al,prac_input
  aam

  ; Imprimir las decenas y unidades
  mov dl,ah
  add dl,'0'
  push ax
  mov ah,02h
  int 21h
  pop ax
  mov dl,al
  add dl,'0'
  mov ah,02h
  int 21h

  mov ah,09h
  lea dx,prac_ans_rt
  int 21h

  .exit
ENDP

end MAIN
