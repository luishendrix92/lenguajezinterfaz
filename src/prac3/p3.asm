; 3 - Programa que limpia la pantalla
; López Garay Luis Felipe
; 15211312
; 13 de Septiembre del 2018

.Model small

.stack 64

.Data

.Code
  ; limpiar pantalla
  mov ax,03h ; servicio de página
  int 10h ; interrupción de pantalla

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,11 ; fila
  mov dl,36 ; columna
  int 10h ; interrupción de pantalla

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Número de Control              ;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  mov dx,49
  mov ah,02h
  int 21h
  
  mov dx,53
  mov ah,02h
  int 21h
  
  mov dx,50
  mov ah,02h
  int 21h
  
  mov dx,49
  mov ah,02h
  int 21h
  
  mov dx,49
  mov ah,02h
  int 21h
  
  mov dx,51
  mov ah,02h
  int 21h
  
  mov dx,49
  mov ah,02h
  int 21h
  
  mov dx,50
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,12 ; fila
  mov dl,30 ; columna
  int 10h ; interrupción de pantalla
  
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Nombre Completo                ;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  mov dx,76
  mov ah,02h
  int 21h
  
  mov dx,111
  mov ah,02h
  int 21h
  
  mov dx,112
  mov ah,02h
  int 21h
  
  mov dx,101
  mov ah,02h
  int 21h
  
  mov dx,122
  mov ah,02h
  int 21h
  
  mov dx,32
  mov ah,02h
  int 21h
  
  mov dx,71
  mov ah,02h
  int 21h
  
  mov dx,97
  mov ah,02h
  int 21h
  
  mov dx,121
  mov ah,02h
  int 21h
  
  mov dx,32
  mov ah,02h
  int 21h
  
  mov dx,76
  mov ah,02h
  int 21h
  
  mov dx,117
  mov ah,02h
  int 21h
  
  mov dx,105
  mov ah,02h
  int 21h

  mov dx,115
  mov ah,02h
  int 21h
  
  mov dx,32
  mov ah,02h
  int 21h
  
  mov dx,70
  mov ah,02h
  int 21h

  mov dx,101
  mov ah,02h
  int 21h
  
  mov dx,108
  mov ah,02h
  int 21h
  
  mov dx,105
  mov ah,02h
  int 21h

  mov dx,112
  mov ah,02h
  int 21h
  
  mov dx,101
  mov ah,02h
  int 21h
.Exit

end
