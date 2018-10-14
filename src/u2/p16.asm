; 16 - Programa que muestra el abecedario MAYUS simulando un ciclo FOR
; López Garay Luis Felipe
; 15211312
; 9 de Octubre del 2018

.Model small

.Stack 64

.Data
  from dw 'A'
  to   dw 'Z'

.Code
MAIN PROC
  mov ax,@Data
  mov ds,ax

  mov cx,from ; for (int i=65;
  FOR_LOOP:
    mov dx,cx
    mov ah,02h
    int 21h

    ; i <= 90; i++)
    inc cx
    cmp cx,to
    jle FOR_LOOP

  .Exit
ENDP

End MAIN
