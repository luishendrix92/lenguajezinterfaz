; Bonus 4 - Ingresar 3 números e imprimirlos de mayor a menor
; Implementación tentativa del algoritmo BubbleSort.
; López Garay Luis Felipe
; 15211312
; 18 de Octubre del 2018

.model small

.stack 64

.data
  numeros   dw 'A','B','C','$'
  ordenados db 0
  numer_len equ 0002h ; 3-1 = 2 | Omitir el último

.code
MAIN PROC
  mov ax,@data
  mov ds,ax

  BUBBLESORT:
    ; Comenzar asumiendo que están ordenados
    mov ordenados,1

    mov bx,offset numeros
    mov cx,numer_len
    ORDENAR:
      mov ax,[bx] ; Número actual
      mov dx,[bx+2] ; Número siguiente
      cmp ax,dx
      jl SWAP ; Si es menor, hay que hacers wap
      jmp SIGUIENTE_NUMERO

      SWAP:
      push [bx] ; Salvar número actual
      push [bx+2] ; Salvar número siguiente
      pop [bx] ; Mover sig. número al actual
      pop [bx+2] ; Poner el actual en el siguiente
      ; Hubo un cambio de orden, por tanto
      ; se asume que aún no están ordenados
      mov ordenados,0

      SIGUIENTE_NUMERO:
      add bx,2
      loop ORDENAR

    ; Continuar el algoritmo mientras los
    ; elementos no estén ordenados
    cmp ordenados,0
    je BUBBLESORT
  
  IMPRIMIR:
  mov ah,09h
  lea dx,numeros
  int 21h

  .exit
ENDP

end MAIN
