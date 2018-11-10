; Header File - Functions and procedures for handling ;
; the  gameplay  and  visual rendering logic that are ;
; either long  enough or single-purpose enough  to be ;
; kept  separate  from the main  file  into this one. ;

IMPORT_RENDER_ACTORS MACRO
  RENDER_ACTORS PROC
      push ax
      push bx
      push dx
      push cx

      ; Renders the snake body by looping through
      ; the word array that contains each part's
      ; position in the canvas (h=row,l=column).
      mov bx,offset snake_body
      mov cx,snake_size
      SHOW_BODY:
        mov dx,[bx]
        GOTOXY dh,dl
        PRINT_CHAR_COLOR 'o',2,1 ; Green

        add bx,2
        loop SHOW_BODY
      
      ; Renders the head of the snake with a color
      GOTOXY snake_h_y,snake_h_x
      PRINT_CHAR_COLOR 'o',10,1 ; Light Green

      ; Renders the food in its current position
      GOTOXY foodpos_y,foodpos_x
      PRINT_CHAR_COLOR 'o',15,1 ; White
      
      pop cx
      pop dx
      pop bx
      pop ax
      ret
  ENDP
ENDM

INIT_SNAKE MACRO
  mov dh,12
  mov dl,30
  mov [snake_body],dx
  mov dh,12
  mov dl,31
  mov [snake_body+2],dx
  mov dh,12
  mov dl,32
  mov [snake_body+4],dx
ENDM
