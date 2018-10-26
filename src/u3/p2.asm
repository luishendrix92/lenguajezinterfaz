; 2 - Menú con macros versión 1
; López Garay Luis Felipe
; 15211312
; 25 de Octubre del 2018

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

GOTOXY MACRO fila,columna
  push ax
  push dx

  mov ah,02h
  mov dh,fila
  mov dl,columna
  int 10h

  pop dx
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

IMPRIMIR_CHAR MACRO caracter
  push ax
  push dx

  mov dl,caracter
  mov ah,02h
  int 21h

  pop dx
  pop ax
ENDM

; IMPRIMIR_NUM_2D :: Int8 [al] -> Eff ()
IMPRIMIR_NUM_2D MACRO
  push ax

  xor ah,ah
  aam
  add ax,3030h
  
  IMPRIMIR_CHAR ah
  IMPRIMIR_CHAR al

  pop ax
ENDM

; PEDIR_CHAR :: Eff Char [al]
PEDIR_CHAR MACRO
  push dx
  push ax

  mov ah,01h
  int 21h
  
  pop dx
  mov ah,dh
  pop dx
ENDM

; PEDIR_NUM_1D :: Eff Int8 [destino]
PEDIR_NUM_1D MACRO destino
  push ax

  PEDIR_CHAR
  sub al,'0'
  mov [destino],al

  pop ax
ENDM

MOSTRAR_FIGURA MACRO archivo_fig
  push ax
  push dx
  push bx
  push cx

  ; Abrir Archivo | [AX] = FileHandler
  mov ah,3dh
  mov al,00h ; ReadOnly
  lea dx,archivo_fig
  int 21h
  mov bx,ax ; Salvar FH

  ; Leer en Buffer
  mov ah,3fh
  mov cx,1999
  lea dx,figura_buff
  int 21h

  ; Cerrar Archivo
  mov ah,3eh
  int 21h

  ; Imprimir figura
  LIMPIAR_PANTALLA
  IMPRIMIR_CADENA figura_buff
  PEDIR_CHAR

  pop cx
  pop bx
  pop dx
  pop ax
ENDM

PEDIR_NUMEROS MACRO
  IMPRIMIR_CADENA numero_a_pr
  PEDIR_NUM_1D [numero_a]
  IMPRIMIR_CADENA numero_b_pr
  PEDIR_NUM_1D [numero_b]
ENDM

MOSTRAR_RESULTADO MACRO
  IMPRIMIR_CADENA operacion_r
  IMPRIMIR_NUM_2D
  PEDIR_CHAR
ENDM

.model small

.386

.stack 100h

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

  circulo_fn  db "circulo.txt",0
  cuadrado_fn db "cuadrado.txt",0
  rombo_fn    db "rombo.txt",0
  rectang_fn  db "rectang.txt",0
  figura_buff db 1999 dup(' '),'$'

  numero_a_pr db 10,13,"Ingresa el primer numero: $"
  numero_b_pr db 10,13,"Ingresa el segundo numero: $"
  operacion_r db 10,13,"El resultado de la operacion es: $"

  numero_a db 0
  numero_b db 0

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
    cmp al,'2'
    je CUADRADO
    cmp al,'3'
    je ROMBO
    cmp al,'4'
    je RECTANGULO
    cmp al,'5'
    je SUMA_NUMEROS
    cmp al,'6'
    je RESTA_NUMEROS
    cmp al,'7'
    je MULTIPLICACION_NUMEROS
    cmp al,'8'
    je DIVISION_NUMEROS
    cmp al,'9'
    je FIN_MENU_OPCIONES
  MENU_OPCION_DEFAULT:
    IMPRIMIR_CADENA opc_e
    PEDIR_CHAR
    jmp MENU_OPCIONES

  CIRCULO:
    MOSTRAR_FIGURA circulo_fn
    jmp MENU_OPCIONES
  
  CUADRADO:
    MOSTRAR_FIGURA cuadrado_fn
    jmp MENU_OPCIONES
  
  ROMBO:
    MOSTRAR_FIGURA rombo_fn
    jmp MENU_OPCIONES

  RECTANGULO:
    MOSTRAR_FIGURA rectang_fn
    jmp MENU_OPCIONES

  SUMA_NUMEROS:
    PEDIR_NUMEROS
    mov al,numero_a
    add al,numero_b
    MOSTRAR_RESULTADO
    jmp MENU_OPCIONES
  
  RESTA_NUMEROS:
    PEDIR_NUMEROS
    mov al,numero_a
    sub al,numero_b
    MOSTRAR_RESULTADO
    jmp MENU_OPCIONES
  
  MULTIPLICACION_NUMEROS:
    PEDIR_NUMEROS
    mov al,numero_a
    mul numero_b
    MOSTRAR_RESULTADO
    jmp MENU_OPCIONES

  DIVISION_NUMEROS:
    PEDIR_NUMEROS
    xor ax,ax
    mov dx,0
    mov al,numero_a
    div numero_b
    MOSTRAR_RESULTADO
    jmp MENU_OPCIONES

  FIN_MENU_OPCIONES:
    .exit
end
