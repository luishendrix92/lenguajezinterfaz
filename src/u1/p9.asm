; 9 - Programa que dibuja un triángulo en pantalla
; López Garay Luis Felipe
; 15211312
; 24 de Septiembre del 2018

.Model small

.stack 64

.Data

.Code
  mov ax,03h
  int 10h

  mov ah,02h
  mov dh,5
  mov dl,39
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,6
  mov dl,38
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,6
  mov dl,40
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,7
  mov dl,37
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,7
  mov dl,41
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,8
  mov dl,36
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,8
  mov dl,42
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,9
  mov dl,35
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,9
  mov dl,43
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,10
  mov dl,34
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,10
  mov dl,44
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,11
  mov dl,33
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,11
  mov dl,45
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,12
  mov dl,32
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,12
  mov dl,46
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,13
  mov dl,31
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,13
  mov dl,47
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,14
  mov dl,30
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,14
  mov dl,48
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,29
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,30
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,31
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,32
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,33
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,34
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,35
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,36
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,37
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,38
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,39
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,40
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,41
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,42
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,43
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,44
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,45
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,46
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,47
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,48
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,49
  int 10h

  mov dx,111
  mov ah,02h
  int 21h

.Exit

end
