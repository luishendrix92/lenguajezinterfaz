; 3 - Ejemplo de procedimientos
; López Garay Luis Felipe
; 15211312
; 30 de Octubre del 2018

.model small

.stack 64

.386

.data
  bienvenida db "Hola mundo!",10,13,'$'

.code
; Ejemplos de procedimientos con parámetros
; -----------------------------------------

; Ejemplo de parámetro por registro.
; PUT_CHAR :: Char [dl] -> Eff ()
PUT_CHAR PROC
  push ax

  mov ah,02h
  int 21h

  pop ax

  ret
ENDP

; Ejemplo de parámetro por variable.
; IMPRIMIR_BIENVENIDA :: Eff ()
IMPRIMIR_BIENVENIDA PROC
  push ax
  push dx

  mov ah,09h
  lea dx,bienvenida
  int 21h

  pop ax
  pop dx

  ret
ENDP

; Ejemplo de parámetro por desplazamiento
; del stack pointer (función de alto nivel)
; GOTOXY :: Word [High Byte = Fila | Low Byte = Columna] :: Eff ()
GOTOXY PROC
  push ax
  push dx
  push bp

  mov bp,sp

  mov ah,02h
  mov dh,[bp+9]
  mov dl,[bp+8] ; 3 pushes (3x2=6) + ret (2) = 8
  int 10h

  pop bp
  pop dx
  pop ax

  ret 2 ; 2/2 = 1 parámetro recorrido
ENDP

; Ejemplos de procedimiento simple sin parámetros
; -----------------------------------------------

; Sin recuperación de registros:
INCIALIZAR PROC
  mov ax,@data
  mov ds,ax

  ret
ENDP

; Con recuperación de registros:
LIMPIAR_PANTALLA PROC
  push ax

  mov ah,00h
  mov al,03h
  int 10h

  pop ax

  ret
ENDP

MAIN PROC
  call INCIALIZAR
  call LIMPIAR_PANTALLA

  push 0B23h ; 11 Fila | 35 Columna
  call GOTOXY
  call IMPRIMIR_BIENVENIDA
  
  push 0000h ; 0, 0
  call GOTOXY
  mov dx,65 ; Parámetro de caracter
  call PUT_CHAR ; Imprime 'A' en 0, 0
  
  .exit
ENDP
end Main
