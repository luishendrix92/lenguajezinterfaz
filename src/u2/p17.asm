; 17 - Simula una sentencia switch
; L¢pez Garay Luis Felipe
; 15211312
; 14 de Octubre del 2018
; DOS Encoded [¨]

.model small

.stack 64

.data
  bienvenida db "¨Es mi tecla una flecha?",10,13,'$'
  prompt     db "Presiona una tecla para determinar: $"
  flecha_u   db 10,13,"Flecha ARRIBA$"
  flecha_r   db 10,13,"Flecha DERECHA$"
  flecha_d   db 10,13,"Flecha ABAJO$"
  flecha_l   db 10,13,"Flecha IZQUIERDA$"
  flecha_n   db 10,13,"No es flecha :($"

.code
MAIN PROC
  mov ax,@data
  mov ds,ax

  mov ah,09h
  lea dx,bienvenida
  int 21h
  lea dx,prompt
  int 21h

  ; Esperar una tecla presionada
  mov ah,00h
  int 16h

  ; Ciclo switch (pseudoc¢digo):
  ; ----------------------------
  ; switch (scanCode) {
  ;   case 0x48: print(flechaUp)   ; break;
  ;   case 0x4B: print(flechaLeft) ; break;
  ;   case 0x4D: print(flechaRight); break;
  ;   case 0x50: print(flechaDown) ; break;
  ;   default  : print(noFlecha)   ;
  ; }
  SWITCH:
    cmp ah,48h
    je FLECHA_UP

    cmp ah,4Bh
    je FLECHA_LEFT

    cmp ah,4Dh
    je FLECHA_RIGHT

    cmp ah,50h
    je FLECHA_DOWN

    jmp NO_FLECHA
  
  FLECHA_UP:
  lea dx,flecha_u
  jmp FIN_SWITCH

  FLECHA_LEFT:
  lea dx,flecha_l
  jmp FIN_SWITCH

  FLECHA_RIGHT:
  lea dx,flecha_r
  jmp FIN_SWITCH

  FLECHA_DOWN:
  lea dx,flecha_d
  jmp FIN_SWITCH

  NO_FLECHA:
  lea dx,flecha_n

  FIN_SWITCH:
  mov ah,09h
  int 21h

  .exit
ENDP

end MAIN
