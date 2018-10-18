.model small



.stack 64

.data
  escr_na_prmp db 10,13,"�Sobre qu� archivo quieres escribir? (Debe existir): $"
  escr_ca_prmp db 10,13,"Escribe el contenido (M�ximo 80 caracteres):",10,13,'$'
  escribir_a_o db 10,13,"�Se ha escrito exitosamente en el archivo!$"
  escr_abr_a_e db 10,13,"Error al abrir el archivo! Quiz� est� abierto o no existe...$"
  escribir_a_e db 10,13,"Ocurri� error al intentar escribir en el archivo...$"

  ;archivo_nom  db 13 dup(' ')
  archivo_nom db "pr.txt",0
  escr_buffer db "123"

.code
MAIN PROC
  mov ax,@data
  mov ds,ax


  ABRIR_ARCHIVO_E:
  mov ax,3d02h ; Servicio de apertura RW
  mov al,01
  lea dx,archivo_nom
  int 21h ; Guarda handler en AX

  jc ERROR_ABRIR_ARCHIVO_E
  push ax ; Salvar el handler para despu�s

  mov ah,09h
  lea dx,escr_ca_prmp
  int 21h

  mov ah,40h
  lea dx,escr_buffer
  mov cx,3 ; Cantidad de caracteres a escribir
  pop bx ; Mandar el handler a BX
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

  jmp FIN

  ERROR_ESCRIBIR:
  mov ah,09h
  lea dx,escribir_a_e
  int 21h
  mov ah,01h
  int 21h

  CERRAR_ARCHIVO:
  mov ah,3eh
  int 21h

  FIN:
  .exit
ENDP

end MAIN
