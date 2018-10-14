; ---------------------------------- ;
; Final Project - Classic snake game ;
; recreated  in  DOS 8086  language. ;
; ---------------------------------- ;
; Instituto  Tecnológico  de Tijuana ;
; LDI   |    SC-SERIE    |    2018-2 ;
; López Garay Luis Felipe - 15211312 ;
; Tijuana, México @ December of 2018 ;
; __________________________________ ;

.model small

.stack 100h

.data
  snake_body dw 100 dup(?) ; Max Snake Body Size +1
  snake_size dw 3  ; Current Snake Body Size
  snake_h_y  db 12 ; Snake head's position (row)
  snake_h_x  db 33 ; Snake head's position (col)
  foodpos_y  db 5  ; Food position (row)
  foodpos_x  db 60 ; Food position (col)
  gamesize_y db 25 ; Canvas size (height in rows)
  gamesize_x db 80 ; Canvas size (width in cols)
  tickrate   dw 1  ; Frames-Per-Second delay factor

.code
include console.inc
include snake.inc
include game.inc

MAIN PROC
  mov ax,@data
  mov ds,ax

  GAME_LOOP:
    FIRST_KEY:
    mov ah,01h
    int 16h
    jz END_KEYPRESS_SCAN

    ; In case there's more than one key in buffer we
    ; must find the last one while clearing the buffer
    ; in the process, readying it for the next tick
    KEYRESS_SCAN:
      mov ah,00h
      int 16h ; Prepare next keypress in buffer
      push ax ; Save current keypress to stack

      mov ah,01h
      int 16h ; Peek the next keypress
      ; If there's no key next, then the one saved
      ; in stack was the last one, let's process it
      jz PROCESS_KEYPRESS
      pop ax ; Discard saved keypress
      jmp KEYRESS_SCAN ; Keep looking until the end

    PROCESS_KEYPRESS:
    pop ax ; Restore last keypress
    PRINT_CHAR ax

    END_KEYPRESS_SCAN:
    TICK tickrate
    jmp GAME_LOOP
  END_GAME_LOOP:

  .exit
ENDP

; Import procedures from console.inc
IMPORT_CLR_SCR
; Import procedures from game.inc
IMPORT_RENDER_ACTORS

end MAIN
