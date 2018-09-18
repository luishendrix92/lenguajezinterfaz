; 5 - Programa que cambia de color y muestra nombre
; López Garay Luis Felipe
; 15211312
; 17 de Septiembre del 2018

.Model small

.stack 64

.Data

.Code
  ; limpiar pantalla
  mov ax,03h ; servicio de página
  int 10h    ; interrupción de pantalla

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,11  ; fila
  mov dl,30  ; columna
  int 10h    ; interrupción de pantalla

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Nombre                         ;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ; Cambiar de color
  mov bl,2   ; Verde (código de color)
  mov cx,3   ; Cantidad de caracteres a pintar
  mov ah,09h ; Servicio del color
  int 10h    ; Interrupción de Video

  mov dx,70
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h
  
  mov dx,69
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  ; Cambiar de color
  mov bl,4   ; Rojo (código de color)
  mov cx,3   ; Cantidad de caracteres a pintar
  mov ah,09h ; Servicio del color
  int 10h    ; Interrupción de Video
  
  mov dx,76
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h
  
  mov dx,73
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  ; Cambiar de color
  mov bl,9   ; Azul Ligero (código de color)
  mov cx,3   ; Cantidad de caracteres a pintar
  mov ah,09h ; Servicio del color
  int 10h    ; Interrupción de Video
  
  mov dx,80
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h
  
  mov dx,69
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h
  
  mov dx,33
  mov ah,02h
  int 21h

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; TOP LINE                       ;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,7  ; fila
  mov dl,14  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; BOTTOM LINE                    ;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,15  ; fila
  mov dl,14  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  mov dx,32 ; Espacio
  mov ah,02h
  int 21h

  mov dx,42
  mov ah,02h
  int 21h

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; LEFT LINE                      ;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,9   ; fila
  mov dl,14  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,11  ; fila
  mov dl,14  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,13  ; fila
  mov dl,14  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; RIGHT LINE                     ;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,9   ; fila
  mov dl,60  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,11  ; fila
  mov dl,60  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,13  ; fila
  mov dl,60  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h
.Exit

end
