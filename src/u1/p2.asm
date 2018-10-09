; 2 - Programa que imprime nombre y Num.Ctrl
; L¢pez Garay Luis Felipe
; 15211312
; 13 de Septiembre del 2018
; DOS Encoding - [¢ (162/0xAC)]

.Model small

.stack 64

.Data

.Code
  mov dx,76
  mov ah,02h
  int 21h

  mov dx,162
  mov ah,02h
  int 21h

  mov dx,112
  mov ah,02h
  int 21h

  mov dx,101
  mov ah,02h
  int 21h

  mov dx,122
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,71
  mov ah,02h
  int 21h

  mov dx,97
  mov ah,02h
  int 21h

  mov dx,114
  mov ah,02h
  int 21h

  mov dx,97
  mov ah,02h
  int 21h

  mov dx,121
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,76
  mov ah,02h
  int 21h

  mov dx,117
  mov ah,02h
  int 21h

  mov dx,105
  mov ah,02h
  int 21h

  mov dx,115
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,70
  mov ah,02h
  int 21h

  mov dx,101
  mov ah,02h
  int 21h

  mov dx,108
  mov ah,02h
  int 21h

  mov dx,105
  mov ah,02h
  int 21h

  mov dx,112
  mov ah,02h
  int 21h

  mov dx,101
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,45
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,49
  mov ah,02h
  int 21h

  mov dx,53
  mov ah,02h
  int 21h

  mov dx,50
  mov ah,02h
  int 21h

  mov dx,49
  mov ah,02h
  int 21h

  mov dx,49
  mov ah,02h
  int 21h

  mov dx,51
  mov ah,02h
  int 21h

  mov dx,49
  mov ah,02h
  int 21h

  mov dx,50
  mov ah,02h
  int 21h

  ; Line Feed y Carriage Return
  mov dx,10
  mov ah,02h
  int 21h

  mov dx,13
  mov ah,02h
  int 21h

.Exit

end

