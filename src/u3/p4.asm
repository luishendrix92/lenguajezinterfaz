; 4 - Ingresar una letra del teclado e imprimir un animal con esa letra
; López Garay Luis Felipe
; 15211312
; 1 de Noviembre del 2018

.model small

.stack 100h

.data
  animales    db "aguila  $ballena $caballo $dodo    $elefante$foca    $gallo   $hiena   $iguana  $jirafa  $komodo  $leon    $morsa   $nutria  $oso     $perro   $quetzal $reno    $salmon  $tucan   $urraca  $vaca    $wombat  $xolo    $yegua   $zebra   $"
  no_es_letra db 10,13,"No se presiono una letra...$"
  peticion    db "Escribe una letra: $"
  respuesta   db 10,13,"Tu animal es: $"
  str_len     db 9

.code
INICIALIZAR PROC
  mov ax,@data
  mov ds,ax

  ret
ENDP

; IMPRIMIR_CADENA :: String [variable] -> Eff () :: Using AX DX
IMPRIMIR_CADENA MACRO variable
  push ax
  push dx

  mov ah,09h
  lea dx,variable
  int 21h

  pop dx
  pop ax
ENDM

; PEDIR_CARACTER :: Char [al] :: Using AX(AH)
PEDIR_CARACTER PROC
  push bx
  push ax

  mov ah,01
  int 21h

  pop bx
  mov ah,bh
  pop bx

  ret
ENDP

; IMPRIMIR_ANIMAL :: Char [al] -> Eff ()
IMPRIMIR_ANIMAL PROC
  IMPRIMIR_CADENA respuesta

  sub al,'a'
  mul str_len

  mov dx,offset animales
  add dx,ax
  mov ah,09h
  int 21h

  ret
ENDP

MAIN PROC
  call INICIALIZAR

  IMPRIMIR_CADENA peticion
  call PEDIR_CARACTER

  cmp al,'a'
  jb CARACTER_INVALIDO
  cmp al,'z'
  ja CARACTER_INVALIDO
  
  
  call IMPRIMIR_ANIMAL
  jmp FINALIZAR

  CARACTER_INVALIDO:
    IMPRIMIR_CADENA no_es_letra
    
  FINALIZAR:
    .exit
ENDP

end MAIN
