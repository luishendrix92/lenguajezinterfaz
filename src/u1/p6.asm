; 6 - Programa que dibuja un círculo
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
  mov dh,4   ; fila
  mov dl,30  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov ah,02h ; servicio de cursor
  mov dh,4   ; fila
  mov dl,37  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov ah,02h ; servicio de cursor
  mov dh,5   ; fila
  mov dl,25  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov ah,02h ; servicio de cursor
  mov dh,5   ; fila
  mov dl,42  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov ah,02h ; servicio de cursor
  mov dh,7   ; fila
  mov dl,21  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov ah,02h ; servicio de cursor
  mov dh,7   ; fila
  mov dl,46  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov ah,02h ; servicio de cursor
  mov dh,9   ; fila
  mov dl,20  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov ah,02h ; servicio de cursor
  mov dh,9   ; fila
  mov dl,48  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov ah,02h ; servicio de cursor
  mov dh,11  ; fila
  mov dl,20  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov ah,02h ; servicio de cursor
  mov dh,11  ; fila
  mov dl,48  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov ah,02h ; servicio de cursor
  mov dh,13  ; fila
  mov dl,20  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov ah,02h ; servicio de cursor
  mov dh,13  ; fila
  mov dl,47  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov ah,02h ; servicio de cursor
  mov dh,15  ; fila
  mov dl,23  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov ah,02h ; servicio de cursor
  mov dh,15  ; fila
  mov dl,44  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov ah,02h ; servicio de cursor
  mov dh,17  ; fila
  mov dl,29  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov ah,02h ; servicio de cursor
  mov dh,17  ; fila
  mov dl,37  ; columna
  int 10h    ; interrupción de pantalla

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h

  mov dx,37
  mov ah,02h
  int 21h
.Exit

end
