; 5 - Calculadora con macros y procedimientos
; L¢pez Garay Luis Felipe
; 15211312
; 8 de Noviembre del 2018
; DOSEncoded [ ‚¡¢£­]

INICIALIZAR MACRO
  mov ax,@data
  mov ds,ax
ENDM

LIMPIAR_PANTALLA MACRO
  push ax

  mov ah,00h
  mov al,03h
  int 10h

  pop ax
ENDM

IMPRIMIR_CADENA MACRO cadena
  push ax
  push dx

  mov ah,09h
  lea dx,cadena
  int 21h

  pop dx
  pop ax
ENDM

DIBUJAR_INTERFAZ MACRO
  push ax
  push dx
  push bx
  push cx

  mov ah,3dh
  mov al,00h
  lea dx,ui_na
  int 21h
  mov bx,ax

  mov ah,3fh
  mov cx,1921
  lea dx,ui_buff
  int 21h

  mov ah,3eh
  int 21h

  LIMPIAR_PANTALLA
  IMPRIMIR_CADENA ui_buff

  pop cx
  pop bx
  pop dx
  pop ax
ENDM

.model small

.386

.stack 64

.data
  ui_na db "ui.txt",0
  ui_buff db 1921 dup(' '),'$'

.code
CAPTURAR_CARACTER PROC
  mov ah,01h
  int 21h

  ret
ENDP

MAIN PROC
  INICIALIZAR

  DIBUJAR_INTERFAZ

  .exit
ENDP

end MAIN
