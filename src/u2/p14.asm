; 14 - Programa que compara un n£mero
; L¢pez Garay Luis Felipe
; 15211312
; 9 de Octubre del 2018
; DOS Encoded [¢£]

.Model small

.Stack 64

.Data
  menor_ans db "El n£mero [55] es menor que 50",10,13,'$'
  medio_ans db "El n£mero [33] es igual que 50",10,13,'$'
  mayor_ans db "El n£mero [50] es mayor que 50",10,13,'$'
  numero1 dw 55
  numero2 dw 33
  numero3 dw 50

.Code
MAIN PROC
  mov ax,@Data
  mov ds,ax
  mov ah,09h

  cmp numero1,49
  jbe MENOR1

  cmp numero1,51
  jae MAYOR1

  jmp MEDIO1

  MENOR1:
    lea dx,menor_ans
    int 21h
    jmp CONTINUE_N2
  
  MAYOR1:
    lea dx,mayor_ans
    int 21h
    jmp CONTINUE_N2
  
  MEDIO1:
    lea dx,medio_ans
    int 21h

  CONTINUE_N2:
  cmp numero2,49
  jbe MENOR2

  cmp numero2,51
  jae MAYOR2

  jmp MEDIO2

  MENOR2:
    lea dx,menor_ans
    int 21h
    jmp CONTINUE_N3
  
  MAYOR2:
    lea dx,mayor_ans
    int 21h
    jmp CONTINUE_N3
  
  MEDIO2:
    lea dx,medio_ans
    int 21h
  
  CONTINUE_N3:
  cmp numero3,49
  jbe MENOR3

  cmp numero3,51
  jae MAYOR3

  jmp MEDIO3

  MENOR3:
    lea dx,menor_ans
    int 21h
    jmp FIN
  
  MAYOR3:
    lea dx,mayor_ans
    int 21h
    jmp FIN
  
  MEDIO3:
    lea dx,medio_ans
    int 21h
  
  FIN:
    .Exit
ENDP

End MAIN
