; 19 - Muestra los caracteres ASCII desde A hasta el final (256)
; L¢pez Garay Luis Felipe
; 15211312
; 14 de Octubre del 2018
; DOS Encoded | 128 -> 254

.model small

.stack 64

.data

.code
MAIN PROC
  mov cx,'A' ; 65
  ASCII:
    mov dl,cl
    mov ah,02h
    int 21h

    inc cx
    cmp cx,'þ' ; 254
    jbe ASCII

  .exit
ENDP

end MAIN
