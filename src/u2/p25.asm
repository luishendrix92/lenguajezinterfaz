; 24 - Imprimir la suma de 2 n£meros usando 2 d¡gitos
; Lopez Garay Luis Felipe
; 15211312
; 14 de Octubre del 2018
; DOS Encoding [¤¡]

.model small

.stack 64

.data
  edad  db 26
  antig db 4
  edad_msg  db "Tengo 26 a¤os$"
  antig_msg db 10,13,"Llevo 4 a¤os en el tec$"
  respuesta db 10,13,"La suma de ambos es: $"

.code
MAIN PROC
  mov ax,@data
  mov ds,ax

  mov ah,09h
  lea dx,edad_msg
  int 21h
  lea dx,antig_msg
  int 21h
  lea dx,respuesta
  int 21h

  mov al,edad
  add al,antig
  aam

  add ax,3030h ; Convierte ambos nibbles a caracteres ASCII
  push ax

  mov dl,ah
  mov ah,02h
  int 21h

  pop dx
  mov ah,02h
  int 21h

  .exit
ENDP

end MAIN
