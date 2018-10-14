; ---------------------------------- ;
; Final Project - Classic snake game ;
; recreated  in  DOS 8086  language. ;
; ---------------------------------- ;
; Instituto  Tecnológico  de Tijuana ;
; LDI   -    SC-SERIE    -    2018-2 ;
; López Garay Luis Felipe - 15211312 ;
; Tijuana, México @ December of 2018 ;
; __________________________________ ;

.model small

.stack 100h

.data
  snake_body dw 100 dup(?) ; Max Snake Body Size +1
  snake_size dw 3 ; Current Snake Body Size
  snake_h_y  db 12 ; Snake head's position (row)
  snake_h_x  db 33 ; Snake head's position (col)
  foodpos_y  db 5 ; Food position (row)
  foodpos_x  db 60 ; Food position (col)
  gamesize_y db 25 ; Canvas size (height in rows)
  gamesize_x db 80 ; Canvas size (width in cols)

.code
include console.inc
include snake.inc
include game.inc

MAIN PROC
  mov ax,@data
  mov ds,ax
  INIT_SNAKE
  call CLR_SCR
  call RENDER_ACTORS

  .exit
ENDP

; Import procedures from console.inc
IMPORT_CLR_SCR
; Import procedures from game.inc
IMPORT_RENDER_ACTORS

end MAIN
