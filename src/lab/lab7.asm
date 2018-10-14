.model small

.stack 64

.data
  num db "caca"

.code
MAIN PROC
  mov si,offset num
  mov cx,4
  CICLO:
    lodsb

    mov dl,al
    mov ah,02h
    int 21h

    loop CICLO
  CLD
  rep movsb
  .exit
ENDP

end MAIN
