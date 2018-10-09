.data
  ; variables comparadas
  x1 dw 21
  x2 dw 20

  ; resultados

  respx1 db "Res"

.code
  mov ax,03
  int 10h

  ; inicializar
  mov ax,@data
  mov ds,ax
  
  ; se mueve
  mov ax,x1
  comp ax,x1
  jg mayor

  mayor:
    ; Desplegar si es mayor
