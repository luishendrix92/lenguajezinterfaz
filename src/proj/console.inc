; Header File - Helper  procedures that aid in ;
; the  console interrupts  such  as  input and ;
; output,  among   other   useful   functions. ;
; -------------------------------------------- ;
; typalias Char = Byte                         ;
; ____________________________________________ ;

; [M] GOTOXY :: Byte -> Byte -> Eff ()
; """"""""""""""""""""""""""""""""""""""""""""""""
; Sets the console  screen cursor at a  zero based
; point (Y,X) where X and Y aregiven as arguments.
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

; [M] PRINT_STRING :: [Char] -> Eff ()
; """""""""""""""""""""""""""""""""""""""""""""""""""""""
; Prints a string from a byte array source variable given
; as its argument on the current console screen position.
PRINT_STRING MACRO variable
  push ax
  push dx

  mov ah,09h
  lea dx,variable
  int 21h

  pop dx
  pop ax
ENDM

; [M] PRINT_CHAR :: Char -> Eff ()
; """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
; Puts X character on the console screen given by ASCII code.
PRINT_CHAR MACRO character
  push ax
  push dx

  mov ah,02h
  mov dx,character
  int 21h

  pop dx
  pop ax
ENDM

; [M] PRINT_CHAR_COLOR :: Char -> Byte -> Byte -> Eff ()
; """""""""""""""""""""""""""""""""""""""""""""""""""""""
; Puts X character on the  console screen at the  current
; cursor position Y times coloured by Z BIOS colour code.
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
  ; [P] CLR_SCR :: EFF ()
  ; """"""""""""""""""""""""""""""""""""""""""
  ; Clears the contents of the console screen.
  CLR_SCR PROC
    push ax

    mov ah,00h
    mov al,03h
    int 10h

    pop ax
    ret
  ENDP
ENDM

; [M] TICK :: Word -> Eff ()
; """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
; Tells the BIOS to wait X amount  of microseconds  determined
; by the division of 1 second (1M microseconds) and Y tickrate
; number that emulates the frames-per-second animation system.
TICK MACRO tickrate
  push cx
  push dx
  push ax

  ; 0000000000001111 (0xF) | 0100001001000000 (0x4240)
  ; Hexadecimal it means 0xF4240 (1,000,000 decimal)
  xor dx,dx ; Set remainder to 0
  mov ax,0fh
  div tickrate
  mov cx,ax
  xor dx,dx ; Set remainder to 0
  mov ax,4240h
  div tickrate
  mov dx,ax
  mov ah,86h
  int 15h

  pop ax
  pop dx
  pop cx
ENDM
