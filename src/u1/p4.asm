; 4 - Programa que despliega nombre en cruz con borde
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
  ;; Horizontal                     ;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
  ;; Vertical                       ;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,9   ; fila
  mov dl,36  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,76
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,7   ; fila
  mov dl,36  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,69
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,5   ; fila
  mov dl,36  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,70
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,13  ; fila
  mov dl,36  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,80
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,15  ; fila
  mov dl,36  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,69
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,17  ; fila
  mov dl,36  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,33
  mov ah,02h
  int 21h

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; TOP LINE                       ;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,0  ; fila
  mov dl,0  ; columna
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

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; BOTTOM LINE                    ;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,22  ; fila
  mov dl,0  ; columna
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

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; LEFT LINE                      ;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,2   ; fila
  mov dl,0   ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,4   ; fila
  mov dl,0   ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,6   ; fila
  mov dl,0   ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,8   ; fila
  mov dl,0   ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,10  ; fila
  mov dl,0   ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,12  ; fila
  mov dl,0   ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,14  ; fila
  mov dl,0   ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,16  ; fila
  mov dl,0   ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,18  ; fila
  mov dl,0   ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,20  ; fila
  mov dl,0   ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; RIGHT LINE                     ;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,2   ; fila
  mov dl,78  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,4   ; fila
  mov dl,78  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,6   ; fila
  mov dl,78  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,8   ; fila
  mov dl,78  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,10  ; fila
  mov dl,78  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,12  ; fila
  mov dl,78  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,14  ; fila
  mov dl,78  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,16  ; fila
  mov dl,78  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,18  ; fila
  mov dl,78  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h

  ; posicionar cursor
  mov ah,02h ; servicio de cursor
  mov dh,20  ; fila
  mov dl,78  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,42
  mov ah,02h
  int 21h
.Exit

end
