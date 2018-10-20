; 21 - Realizar 4 operaciones con 2 n£meros del 0 al 9
; L¢pez Garay Luis Felipe
; 15211312
; 14 de Octubre del 2018
; DOS Encoded [£¢]

.model small

.stack 100h

.data
  num1_prompt db "Escribe el primer n£mero: $"
  num2_prompt db 10,13,"Escribe el segundo n£mero: $"
  suma_res    db 10,13,10,13,"La suma resulta en: $"
  resta_res   db 10,13,"La resta de ambos es: $"
  multip_res  db 10,13,"Multiplicar ambos da: $"
  divisi_res  db 10,13,"La divisi¢n entera queda como: $"
  num1_input  db ?
  num2_input  db ?

.code
MAIN PROC
  mov ax,@data
  mov ds,ax

  ; Solicitar el primer n£mero
  mov ah,09h
  lea dx,num1_prompt
  int 21h
  mov ah,01h
  int 21h
  sub al,'0'
  mov num1_input,al

  ; Solicitar el segundo n£mero
  mov ah,09h
  lea dx,num2_prompt
  int 21h
  mov ah,01h
  int 21h
  sub al,'0'
  mov num2_input,al

  ; Imprimir resultado de la suma
  mov ah,09h
  lea dx,suma_res
  int 21h

  mov al,num1_input
  add al,num2_input
  add al,'0'
  mov dl,al
  mov ah,02h
  int 21h

  ; Imprimir resultado de la resta
  mov ah,09h
  lea dx,resta_res
  int 21h

  mov al,num1_input
  sub al,num2_input
  add al,'0'
  mov dl,al
  mov ah,02h
  int 21h

  ; Imprimir resultado de la multiplicaci¢n
  mov ah,09h
  lea dx,multip_res
  int 21h

  mov al,num1_input
  mul num2_input
  add al,'0'
  mov dl,al
  mov ah,02h
  int 21h

  ; Imprimir resultado de la dvisi¢n
  mov ah,09h
  lea dx,divisi_res
  int 21h

  mov dx,0
  xor ax,ax
  mov al,num1_input
  div num2_input
  add ax,'0'
  mov dl,al
  mov ah,02h
  int 21h

  .exit
ENDP

end MAIN
