; Bonus 6 - Abecedario invertido
; López Garay Luis Felipe
; 15211312
; 18 de Octubre del 2018

.model small

.stack 64

.data

.code
MAIN PROC
  mov cx,'Z'
  ABECEDARIO_INVERTIDO:
    mov ah,02h
    mov dl,cl
    int 21h

    mov ah,02h
    mov dl,' '
    int 21h
    
    dec cx
    cmp cx,'A'
    jae ABECEDARIO_INVERTIDO

  .exit
ENDP

end MAIN
