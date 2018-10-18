; 30 - Men£ para trabajr con archivos binarios (p30,p31,p32 condensadas)
; L¢pez Garay Luis Felipe
; 15211312
; 18 de Octubre del 2018
; DOS Encoded [­¨¢‚¡ ]

.model small

.386 ; Permite saltos m s grandes

.stack 100h

.data
  menu_titulo1 db "Manipulaci¢n de archivos | ¨Qu‚ deseas hacer?",10,13,'$'
  menu_titulo2 db "---------------------------------------------",10,13,'$'
  menu_opcion1 db "[1] Crear un archivo",10,13,'$'
  menu_opcion2 db "[2] Escribir en un archivo (sobreescritura)",10,13,'$'
  menu_opcion3 db "[3] Leer un archivo",10,13,'$'
  menu_opcion4 db "[4] Eliminar un archivo",10,13,'$'
  menu_opcion5 db "[5] Salir del programa",10,13,10,13,'$'
  menu_op_prmp db "Elige una de las 5 opciones: $"
  menu_op_err  db 10,13,"Opci¢n incorrecta, pruebe de nuevo!$"

  crear_prompt db 10,13,"Nombre del archivo a crear: $"
  crear_ans_ok db 10,13,"­Se ha creado el archivo! (Si ya exist¡a, fue sobreescrito)$"
  crear_ans_er db 10,13,"Hubo un error al crear el archivo...$"

  escr_na_prmp db 10,13,"¨Sobre qu‚ archivo quieres escribir? (Debe existir): $"
  escr_ca_prmp db 10,13,"Escribe el contenido (M ximo 80 caracteres):",10,13,'$'
  escribir_a_o db 10,13,"­Se ha escrito exitosamente en el archivo!$"
  escr_abr_a_e db 10,13,"Error al abrir el archivo! Quiz  est  abierto o no existe...$"
  escribir_a_e db 10,13,"Ocurri¢ error al intentar escribir en el archivo...$"

  leer_na_prmp db 10,13,"Nombre del archivo a leer: $"
  leer_arch_o1 db "Aqu¡ est  el contenido del archivo:",10,13,'$'
  leer_arch_o2 db "-----------------------------------$"

  archivo_nom db 13 dup(' ')
  escr_buffer db 80 dup(?)
  lect_buffer db 240 dup(' '),'$'

.code
MAIN PROC
  mov ax,@data
  mov ds,ax

  MENU_LOOP:
    mov ah,00h
    mov al,03h
    int 10h

    mov ah,09h
    lea dx,menu_titulo1
    int 21h
    lea dx,menu_titulo2
    int 21h
    lea dx,menu_opcion1
    int 21h
    lea dx,menu_opcion2
    int 21h
    lea dx,menu_opcion3
    int 21h
    lea dx,menu_opcion4
    int 21h
    lea dx,menu_opcion5
    int 21h
    lea dx,menu_op_prmp
    int 21h

    mov ah,01h
    int 21h

    SWITCH:
      cmp al,'1'
      je CREAR_ARCHIVO
      cmp al,'2'
      je ESCRIBIR_ARCHIVO
      cmp al,'5'
      je FIN_MENU_LOOP
    SWITCH_DEFAULT:
    mov ah,09h
    lea dx,menu_op_err
    int 21h
    mov ah,01h
    int 21h

    jmp MENU_LOOP

    CREAR_ARCHIVO:
    mov ah,09h
    lea dx,crear_prompt
    int 21h

    mov cx,12 ; El nombre es 8 bits m ximo + ".EXT" (4 bits)
    push si
    PEDIR_NOMBRE_ARCHIVO_C:
      mov ah,01h
      int 21h
      
      cmp al,0dh ; ENTER
      je FIN_PEDIR_NOMBRE_ARCHIVO_C

      mov archivo_nom[si],al
      inc si

      loop PEDIR_NOMBRE_ARCHIVO_C
    FIN_PEDIR_NOMBRE_ARCHIVO_C:
    mov archivo_nom[si+1],0 ; Null-Terminator
    pop si

    mov ah,3ch ; Servicio de creaci¢n
    mov cx,00000000h ; Atributos del archivo | ReadOnly
    lea dx,archivo_nom
    int 21h

    jc ERROR_CREAR_ARCHIVO

    mov ah,09h
    lea dx,crear_ans_ok
    int 21h
    mov ah,01h
    int 21h
    
    jmp MENU_LOOP
    
    ERROR_CREAR_ARCHIVO:
    mov ah,09h
    lea dx,crear_ans_er
    int 21h
    mov ah,01h
    int 21h

    jmp MENU_LOOP

    ESCRIBIR_ARCHIVO:
    mov ah,09h
    lea dx,escr_na_prmp
    int 21h

    mov cx,12 ; El nombre es 8 bits m ximo + ".EXT" (4 bits)
    push si
    PEDIR_NOMBRE_ARCHIVO_E:
      mov ah,01h
      int 21h
      
      cmp al,0dh ; ENTER
      je FIN_PEDIR_NOMBRE_ARCHIVO_E

      mov archivo_nom[si],al
      inc si

      loop PEDIR_NOMBRE_ARCHIVO_E
    FIN_PEDIR_NOMBRE_ARCHIVO_E:
    mov archivo_nom[si+1],0 ; Null-Terminator
    pop si

    ABRIR_ARCHIVO_E:
    mov ah,3dh ; Servicio de apertura
    mov al,02h ; Modo Read/Write
    lea dx,archivo_nom
    int 21h ; Guarda handler en AX

    jc ERROR_ABRIR_ARCHIVO_E
    mov bx,ax ; Mover el handler a bx para cerrar/escribir

    mov ah,09h
    lea dx,escr_ca_prmp
    int 21h

    mov cx,80 ; El buffer es de 80 bits
    push si
    PEDIR_CONTENIDO:
      mov ah,01h
      int 21h
      
      cmp al,0dh ; ENTER
      je FIN_PEDIR_CONTENIDO

      mov escr_buffer[si],al
      inc si

      loop PEDIR_CONTENIDO
    FIN_PEDIR_CONTENIDO:

    mov ah,40h ; Servicio de escritura
    lea dx,escr_buffer
    mov cx,si ; Cantidad de caracteres a escribir
    pop si ; Recuperar antiguo registro SI
    int 21h

    jc ERROR_ESCRIBIR

    mov ah,09h
    lea dx,escribir_a_o
    int 21h
    mov ah,01h
    int 21h

    jmp CERRAR_ARCHIVO

    ERROR_ABRIR_ARCHIVO_E:
    mov ah,09h
    lea dx,escr_abr_a_e
    int 21h
    mov ah,01h
    int 21h

    jmp MENU_LOOP

    ERROR_ESCRIBIR:
    mov ah,09h
    lea dx,escribir_a_e
    int 21h
    mov ah,01h
    int 21h

    CERRAR_ARCHIVO:
    mov ah,3eh
    int 21h

    jmp MENU_LOOP

    LEER_ARCHIVO:
    mov ah,09h
    lea dx,escr_na_prmp
    int 21h

    mov cx,12 ; El nombre es 8 bits m ximo + ".EXT" (4 bits)
    push si
    PEDIR_NOMBRE_ARCHIVO_E:
      mov ah,01h
      int 21h
      
      cmp al,0dh ; ENTER
      je FIN_PEDIR_NOMBRE_ARCHIVO_E

      mov archivo_nom[si],al
      inc si

      loop PEDIR_NOMBRE_ARCHIVO_E
    FIN_PEDIR_NOMBRE_ARCHIVO_E:
    mov archivo_nom[si+1],0 ; Null-Terminator
    pop si

    ABRIR_ARCHIVO_E:
    mov ah,3dh ; Servicio de apertura
    mov al,02h ; Modo Read/Write
    lea dx,archivo_nom
    int 21h ; Guarda handler en AX

    jc ERROR_ABRIR_ARCHIVO_E
    mov bx,ax ; Mover el handler a bx para cerrar/escribir
  FIN_MENU_LOOP:
  .exit
ENDP

end MAIN
