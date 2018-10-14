; Header File - Helper  procedures that aid in ;
; the  visual aspect of the  console input and ;
; output  that mainly use 10h & 21h interrupts ;

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

PRINT_STRING MACRO variable
  push ax
  push dx

  mov ah,09h
  lea dx,variable
  int 21h

  pop dx
  pop ax
ENDM

PRINT_CHAR MACRO character
  push ax
  push dx

  mov ah,02h
  mov dx,character
  int 21h

  pop dx
  pop ax
ENDM

PRINT_CHAR_COLOR MACRO character,color,veces
  push ax
  push bx
  push cx

  mov al,character
  mov bh,00h
  mov bl,color
  mov cx,veces
  mov ah,09h
  int 10h

  pop cx
  pop bx
  pop ax
ENDM

IMPORT_CLR_SCR MACRO
  CLR_SCR PROC
    push ax

    mov ah,00h
    mov al,03h
    int 10h

    pop ax
    ret
  ENDP
ENDM
