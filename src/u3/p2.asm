; 2 - Menú con macros versión 1
; López Garay Luis Felipe
; 15211312
; 25 de Octubre del 2018

INICIALIZAR MACRO
  mov ax,@data
  mov ds,ax
ENDM

LIMPIAR_PANTALLA MACRO
  mov ah,00h
  mov al,03h
  int 10h
ENDM 

IMPRIMIR_CADENA MACRO cadena
  mov ah,09h
  lea dx,cadena
  int 21h
ENDM

IMPRIMIR_CHAR MACRO caracter
  mov ah,02h
  mov dl,caracter
  int 21h
ENDM

; PEDIR_CHAR :: Eff Char [al]
PEDIR_CHAR MACRO
  mov ah,01h
  int 21h
ENDM

; PEDIR_NUM_1D :: Eff Int8 [destino]
PEDIR_NUM_1D MACRO destino
  PEDIR_CHAR
  sub al,'0'
  mov destino,al
ENDM

.model small

.stack 64

.data
  titulo_1 db "Menú de opciones v1",10,13,'$'
  titulo_2 db "-------------------",10,13,'$'

.code
  INICIALIZAR
  
  MENU_OPCIONES:
    mov ah,01h
    int 21h

    cmp al,'1'
    je OPCION_UNO
  MENU_OPCION_DEFAULT:
  ;
  jmp FIN_MENU_OPCIONES

  OPCION_UNO:
  ;

  FIN_MENU_OPCIONES:
  .exit

end
