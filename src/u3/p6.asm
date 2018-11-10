; 6 - Men£ con calculador y divisi¢n aparte de 2 d¡gitos
; L¢pez Garay Luis Felipe
; 15211312
; 9 de Noviembre del 2018
; DOSEncoded [ ‚¡¢£­ÉÍ»Èº¼]

INICIALIZAR MACRO
  mov ax,@data
  mov ds,ax

  ; Cargar UI en buffer de texto
  mov ah,3dh
  mov al,00h
  lea dx,ui_na
  int 21h
  mov bx,ax

  mov ah,3fh
  mov cx,1999
  lea dx,ui_buff
  int 21h

  mov ah,3eh
  int 21h
ENDM

LIMPIAR_PANTALLA MACRO
  push ax

  mov ah,00h
  mov al,03h
  int 10h

  pop ax
ENDM

GOTOXY MACRO fila, columna
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

PEDIR_CHAR MACRO
  push dx
  push ax

  mov ah,01h
  int 21h
  
  pop dx
  mov ah,dh
  pop dx
ENDM

ESTABLECER_OPERANDOS MACRO
  mov al,n2_decenas
  mul diez
  add al,n2_unidades
  push ax
  
  mov al,n1_decenas
  mul diez
  add al,n1_unidades
  pop dx
  mov al,n2_decenas
  mul diez
  add al,n2_unidades
  push ax
  
  mov al,n1_decenas
  mul diez
  add al,n1_unidades
  pop dx
ENDM

PEDIR_DIGITO MACRO fila,columna,paso_anterior,paso_actual,variable
  GOTOXY fila,columna
  mov al,' '
  call IMPRIMIR_CARACTER
  GOTOXY fila,columna
  call CAPTURAR_TECLA
      
  cmp ah,tecla_esc
  je SALIR_CALC
  cmp ah,tecla_bsp
  je paso_anterior
  cmp al,'0'
  jb paso_actual
  cmp al,'9'
  ja paso_actual

  call IMPRIMIR_CARACTER
  sub al,'0'
  mov variable,al
ENDM

.model small

.386

.stack 64

.data
  ui_na   db "ui.txt",0
  ui_buff db 1999 dup(' '),'$'

  tecla_esc equ 01h
  tecla_bsp equ 0eh

  n1_decenas  db 0
  n1_unidades db 0
  n2_decenas  db 0
  n2_unidades db 0
  operador    db ?
  resultado   db "(+) 000$"
  res_numer   db 0
  diez        db 10

  menu_l1 db "Men£ Versi¢n 2",10,13,'$'
  menu_l2 db "--------------",10,13,'$'
  menu_l3 db "1 - Calculadora con interfaz",10,13,'$'
  menu_l4 db "2 - Divisi¢n de dos n£meros",10,13,'$'
  menu_l5 db "3 - Salir del men£",10,13,10,13,'$'
  menu_l6 db "Escoge una opci¢n: $"
  opcion_incorrecta db 10,13,"No existe esa opci¢n, intenta de nuevo$"
  n1_prompt db "Escribe el primer n£mero: $"
  n2_prompt db 10,13,"Escribe el segundo n£mero: $"
  division  db 10,13,10,13,"El resultado de la divisi¢n es: $"

.code
; CAPTURAR_TECLA :: (Int8, Char) [(ah, al)]
CAPTURAR_TECLA PROC
  mov ah,00h
  int 16h

  ret
ENDP

; IMPRIMIR_CARACTER :: Char [al] -> Eff () :: Using AX DX
IMPRIMIR_CARACTER PROC
  push ax
  push dx

  mov dl,al
  mov ah,02h
  int 21h

  pop dx
  pop ax
  ret
ENDP

; DIBUJAR_INTERFAZ :: EFF ()
DIBUJAR_INTERFAZ PROC
  LIMPIAR_PANTALLA
  IMPRIMIR_CADENA ui_buff

  ret
ENDP

; REALIZAR_OPERACION :: Char[5] {variables} -> Int8 [al] :: Using DX
REALIZAR_OPERACION PROC
  push dx

  ESTABLECER_OPERANDOS

  mov [resultado+1],'+'
  
  cmp operador,'+'
  je SUMA
  cmp operador,'-'
  je RESTA
  jmp FIN_OPERACION

  SUMA:
  add al,dl
  jmp FIN_OPERACION

  RESTA:
  sub al,dl
  js NEGATIVO
  jmp FIN_OPERACION

  NEGATIVO:
  mov [resultado+1],'-'
  not al
  inc al
  
  FIN_OPERACION:
  pop dx
  ret
ENDP

; MOSTRAR_RESULTADO :: Int8 [al] -> Eff () :: Using AX
MOSTRAR_RESULTADO PROC
  mov res_numer,al
  aam
  push ax

  add al,'0'
  mov [resultado+6],al

  pop ax
  mov al,ah
  aam
  add al,'0'
  mov [resultado+5],al
  add ah,'0'
  mov [resultado+4],ah

  GOTOXY 5,9
  IMPRIMIR_CADENA resultado
  PEDIR_CHAR
  GOTOXY 5,9

  mov cx,7
  MOSTRAR_BINARIO:
    mov dl,res_numer
    shr dl,cl
    and dl,00000001b
    add dl,'0'
    mov ah,02h
    int 21h

    dec cx
    jns MOSTRAR_BINARIO
  
  PEDIR_CHAR

  ret
ENDP

CALCULADORA PROC
  CALCULADORA_CICLO:
    call DIBUJAR_INTERFAZ

    CAPTURAR_DECENAS_N1:
      PEDIR_DIGITO 5,9,CAPTURAR_DECENAS_N1,CAPTURAR_DECENAS_N1,n1_decenas
    
    CAPTURAR_UNIDADES_N1:
      PEDIR_DIGITO 5,10,CAPTURAR_DECENAS_N1,CAPTURAR_UNIDADES_N1,n1_unidades
    
    CAPTURAR_OPERADOR:
      GOTOXY 5,12
      mov al,' '
      call IMPRIMIR_CARACTER
      GOTOXY 5,12
      call CAPTURAR_TECLA
      
      cmp ah,tecla_esc
      je SALIR_CALC
      cmp ah,tecla_bsp
      je CAPTURAR_UNIDADES_N1
      cmp al,'+'
      je GUARDAR_OPERADOR
      cmp al,'-'
      je GUARDAR_OPERADOR
      jmp CAPTURAR_OPERADOR

      GUARDAR_OPERADOR:
      call IMPRIMIR_CARACTER
      mov operador,al
    
    CAPTURAR_DECENAS_N2:
      PEDIR_DIGITO 5,14,CAPTURAR_OPERADOR,CAPTURAR_DECENAS_N2,n2_decenas
    
    CAPTURAR_UNIDADES_N2:
      PEDIR_DIGITO 5,15,CAPTURAR_DECENAS_N2,CAPTURAR_UNIDADES_N2,n2_unidades

    call REALIZAR_OPERACION
    call MOSTRAR_RESULTADO

    jmp CALCULADORA_CICLO

  SALIR_CALC:
    LIMPIAR_PANTALLA
    ret
ENDP

SOLICITAR_DIGITO_DIVISION MACRO prompt,decenas,unidades
  IMPRIMIR_CADENA prompt
  PEDIR_CHAR
  sub al,'0'
  mov decenas,al
  PEDIR_CHAR
  sub al,'0'
  mov unidades,al
ENDM

DIVISION_DOS_DIGITOS PROC
  LIMPIAR_PANTALLA
  
  SOLICITAR_DIGITO_DIVISION n1_prompt,n1_decenas,n1_unidades
  SOLICITAR_DIGITO_DIVISION n2_prompt,n2_decenas,n2_unidades

  IMPRIMIR_CADENA division

  xor ax,ax
  xor bx,bx

  ESTABLECER_OPERANDOS

  xor ah,ah
  div dl
  xor ah,ah
  aam

  add ax,3030h
  mov dl,al
  mov al,ah
  call IMPRIMIR_CARACTER
  mov al,dl
  call IMPRIMIR_CARACTER

  PEDIR_CHAR
  LIMPIAR_PANTALLA
  ret
ENDP

MAIN PROC
  INICIALIZAR

  MENU:
    LIMPIAR_PANTALLA
    IMPRIMIR_CADENA menu_l1
    IMPRIMIR_CADENA menu_l2
    IMPRIMIR_CADENA menu_l3
    IMPRIMIR_CADENA menu_l4
    IMPRIMIR_CADENA menu_l5
    IMPRIMIR_CADENA menu_l6
    PEDIR_CHAR

    cmp al,'1'
    je MOSTRAR_CALCULADORA
    cmp al,'2'
    je DIVISION_NUMEROS
    cmp al,'3'
    je SALIR_MENU

    IMPRIMIR_CADENA opcion_incorrecta
    PEDIR_CHAR
    jmp MENU
  
  MOSTRAR_CALCULADORA:
    call CALCULADORA
    jmp MENU
  
  DIVISION_NUMEROS:
    call DIVISION_DOS_DIGITOS
    jmp MENU
  
  SALIR_MENU:
    .exit
ENDP

end MAIN
