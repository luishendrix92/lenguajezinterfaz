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
  titulo_h db "Menu de opciones v1",10,13,'$'
  titulo_d db "------------------------------",10,13,'$'

  opc_1 db "1- Circulo",10,13,'$'
  opc_2 db "2- Cuadrado",10,13,'$'
  opc_3 db "3- Rombo",10,13,'$'
  opc_4 db "4- Rectangulo",10,13,'$'
  opc_5 db "5- Suma de 2 numeros",10,13,'$'
  opc_6 db "6- Resta de 2 numeros",10,13,'$'
  opc_7 db "7- Multiplicacion de 2 numeros",10,13,'$'
  opc_8 db "8- Division de 2 numeros",10,13,'$'
  opc_9 db "9- Salir del programa",10,13,10,13,'$'
  opc_p db "Elige una opcion: $"
  opc_e db 10,13,"Opcion incorrecta! Elige de nuevo.$"

.code
  INICIALIZAR
  
  MENU_OPCIONES:
    LIMPIAR_PANTALLA
    IMPRIMIR_CADENA titulo_h
    IMPRIMIR_CADENA titulo_d
    IMPRIMIR_CADENA opc_1
    IMPRIMIR_CADENA opc_2
    IMPRIMIR_CADENA opc_3
    IMPRIMIR_CADENA opc_4
    IMPRIMIR_CADENA opc_5
    IMPRIMIR_CADENA opc_6
    IMPRIMIR_CADENA opc_7
    IMPRIMIR_CADENA opc_8
    IMPRIMIR_CADENA opc_9
    IMPRIMIR_CADENA opc_p
    PEDIR_CHAR

    cmp al,'1'
    je CIRCULO
    cmp al,'9'
    je FIN_MENU_OPCIONES
  MENU_OPCION_DEFAULT:
    IMPRIMIR_CADENA opc_e
    PEDIR_CHAR
    jmp MENU_OPCIONES

  CIRCULO:
    ;

  FIN_MENU_OPCIONES:
    .exit
end
