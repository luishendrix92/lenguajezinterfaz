; 16 - Programa que muestra números del 10 al 1 con FOR
; López Garay Luis Felipe
; 15211312
; 9 de Octubre del 2018

.Model small

.Stack 64

.Data

.Code
MAIN PROC
  mov ax,@Data
  mov ds,ax

  mov cx,10 ; for (int i=10;
  FOR_LOOP:
    mov ah,02h
    mov dx,cx
    add dx,'0'
    int 21h

    ; i > 0; i--)
    dec cx
    jz END_FOR_LOOP
    ; En la diapositiva espefica claramente
    ; que usáramos jmp, cosa que no es lo más
    ; óptimo en este caso... *shrug*
    jmp FOR_LOOP
  END_FOR_LOOP:

  .Exit
ENDP

End MAIN
