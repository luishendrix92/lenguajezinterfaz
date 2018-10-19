; Bonus 4 - Ingresar 3 n£meros e imprimirlos de mayor a menor
; Implementaci¢n tentativa del algoritmo BubbleSort.
; L¢pez Garay Luis Felipe
; 15211312
; 18 de Octubre del 2018
; DOS Encoded [£]

.model small

.stack 64

.data
  num1_prompt db "Ingresa el primer n£mero: $"
  num1_input  db ?
  num2_prompt db 10,13,"Ingresa el segundo n£mero: $"
  num2_input  db ?
  num3_prompt db 10,13,"Ingresa el tercer n£mero: $"
  num3_input  db ?
  orden_resp  db 10,13,"Los n£meros en orden de mayor a menor: $"

  numeros   dw 'A','B','C','$'
  ordenados db 0
  base      db 10
  numer_len equ 0002h ; 3-1 = 2 | Omitir el £ltimo

.code
MAIN PROC
  mov ax,@data
  mov ds,ax

  ; Pedir el primer n£mero
  mov ah,09h
  lea dx,num1_prompt
  int 21h

  mov ah,01h
  int 21h
  sub al,'0'
  mul base
  mov num1_input,al
  mov ah,01h
  int 21h
  sub al,'0'
  add num1_input,al

  ; Pedir el segundo n£mero
  mov ah,09h
  lea dx,num2_prompt
  int 21h

  mov ah,01h
  int 21h
  sub al,'0'
  mul base
  mov num2_input,al
  mov ah,01h
  int 21h
  sub al,'0'
  add num2_input,al

  ; Pedir el tercer n£mero
  mov ah,09h
  lea dx,num3_prompt
  int 21h

  mov ah,01h
  int 21h
  sub al,'0'
  mul base
  mov num3_input,al
  mov ah,01h
  int 21h
  sub al,'0'
  add num3_input,al

  ; Mover n£meros al array
  xor ax,ax
  mov al,num1_input
  mov [numeros],ax
  mov al,num2_input
  mov [numeros+2],ax
  mov al,num3_input
  mov [numeros+4],ax

  ; Algoritmo bubble sort adaptado de pseudoc¢digo
  BUBBLESORT:
    ; Comenzar asumiendo que est n ordenados
    mov ordenados,1

    mov bx,offset numeros
    mov cx,numer_len
    ORDENAR:
      mov ax,[bx] ; N£mero actual
      mov dx,[bx+2] ; N£mero siguiente
      cmp ax,dx
      jl SWAP ; Si es menor, hay que hacers wap
      jmp SIGUIENTE_NUMERO

      SWAP:
      push [bx] ; Salvar n£mero actual
      push [bx+2] ; Salvar n£mero siguiente
      pop [bx] ; Mover sig. n£mero al actual
      pop [bx+2] ; Poner el actual en el siguiente
      ; Hubo un cambio de orden, por tanto
      ; se asume que a£n no est n ordenados
      mov ordenados,0

      SIGUIENTE_NUMERO:
      add bx,2
      loop ORDENAR

    ; Continuar el algoritmo mientras los
    ; elementos no est‚n ordenados
    cmp ordenados,0
    je BUBBLESORT
  
  ; Imprimir n£meros en orden Mayor->Menor
  mov ah,09h
  lea dx,orden_resp
  int 21h

  push si
  mov cx,3
  IMPRIMIR_ORDENADO:
    mov ax,numeros[si]
    xor ah,ah
    aam
    mov bx,ax

    mov ah,02h
    mov dl,bh
    add dl,'0'
    int 21h
    mov dl,bl
    add dl,'0'
    int 21h

    mov ah,02h
    mov dl,' '
    int 21h
    
    add si,2
    loop IMPRIMIR_ORDENADO
  pop si

  .exit
ENDP

end MAIN
