; 15 - Ciclo del 0-9 (10 iteraciones) cortado a la 5ta iteraci¢n
; L¢pez Garay Luis Felipe
; 15211312
; 9 de Octubre del 2018
; DOS Encoded [¢]

.Model small

.Stack 64

.Data
  salida_msg db "Salida exitosa a la quinta iteraci¢n!",10,13,'$'

.Code
MAIN PROC
  mov ax,@Data
  mov ds,ax
  mov ah,02h
  mov cx,0

  CICLO:
    mov dx,cx
    add dx,'0'
    int 21h

    ; Salto de l¡nea
    mov dx,10
    int 21h
    mov dx,13
    int 21h

    ; Interrumpir a la quinta iteraci¢n (0-based)
    cmp cx,4
    je SALIDA_CICLO

    inc cx
    cmp cx,10
    jb CICLO
  
  jmp FIN
  
  SALIDA_CICLO:
    mov ah,09h
    lea dx,salida_msg
    int 21h

  FIN:
    .Exit
ENDP

End MAIN
