; Header File  -  Core  mechanics  of  the  game ;
; corresponding to the functions  that  go  into ;
; separating  the  concerns of the  gameplay and ;
; console visuals (and user input) from the main ;
; rules of game and data structure handling.     ;

DEFINE_DROP_TAIL MACRO
  DROP_TAIL PROC
    push cx

    mov cx,snake_size

    pop cx
  ENDP
ENDM

; Source of the RAND_NUM procedure:
; https://stackoverflow.com/questions/17855817
DEFINE_RAND_NUM MACRO
  RAND_NUM PROC
    push ax
    push dx
    push cx

    mov ah,00h ; interrupts to get system time        
    int 1ah    ; CX:DX now hold number of clock ticks since midnight      

    mov ax, dx
    xor dx, dx
    mov cx, 10    
    div cx     ; here dx contains the remainder of the division - from 0 to 9

    add dl,'0' ; to ascii from '0' to '9'
    mov ah,02h ; call interrupt to display a value in DL
    int 21h

    pop cx
    pop dx
    pop ax
    ret
  ENDP
ENDM
