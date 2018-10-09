; 10 - Programa que muenstra nombre y 4 figuras
; López Garay Luis Felipe
; 15211312
; 24 de Septiembre del 2018 - OP2

.Model small

.stack 64

.Data

.Code
  mov ax,03h
  int 10h

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; NOMBRE COMPLETO
  mov ah,02h
  mov dh,12
  mov dl,27
  int 10h

  ; Mostrar caracteres => 15211312 Felipe L. G
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

  mov dx,76
  mov ah,02h
  int 21h

  mov dx,46
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,71
  mov ah,02h
  int 21h

  ; Mostrar figuras alrededor
  mov ah,02h
  mov dh,4
  mov dl,56
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,4
  mov dl,57
  int 10h

  mov dx,39
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,4
  mov dl,58
  int 10h

  mov dx,39
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,4
  mov dl,59
  int 10h

  mov dx,39
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,4
  mov dl,60
  int 10h

  mov dx,39
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,4
  mov dl,61
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,5
  mov dl,14
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,5
  mov dl,15
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,5
  mov dl,16
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,5
  mov dl,17
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,5
  mov dl,18
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,5
  mov dl,19
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,5
  mov dl,20
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,5
  mov dl,21
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,5
  mov dl,22
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,5
  mov dl,23
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,5
  mov dl,54
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,5
  mov dl,63
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,6
  mov dl,14
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,6
  mov dl,23
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,6
  mov dl,53
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,6
  mov dl,64
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,7
  mov dl,14
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,7
  mov dl,23
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,7
  mov dl,53
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,7
  mov dl,64
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,8
  mov dl,14
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,8
  mov dl,23
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,8
  mov dl,54
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,8
  mov dl,63
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,9
  mov dl,14
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,9
  mov dl,15
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,9
  mov dl,16
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,9
  mov dl,17
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,9
  mov dl,18
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,9
  mov dl,19
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,9
  mov dl,20
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,9
  mov dl,21
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,9
  mov dl,22
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,9
  mov dl,23
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,9
  mov dl,56
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,9
  mov dl,57
  int 10h

  mov dx,95
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,9
  mov dl,58
  int 10h

  mov dx,95
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,9
  mov dl,59
  int 10h

  mov dx,95
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,9
  mov dl,60
  int 10h

  mov dx,95
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,9
  mov dl,61
  int 10h

  mov dx,95
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,9
  mov dl,62
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,18
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,15
  mov dl,58
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,16
  mov dl,17
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,16
  mov dl,19
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,16
  mov dl,57
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,16
  mov dl,59
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,17
  mov dl,16
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,17
  mov dl,20
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,17
  mov dl,56
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,17
  mov dl,60
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,18
  mov dl,15
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,18
  mov dl,21
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,18
  mov dl,55
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,18
  mov dl,61
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,19
  mov dl,14
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,19
  mov dl,22
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,19
  mov dl,56
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,19
  mov dl,60
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,20
  mov dl,13
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,20
  mov dl,14
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,20
  mov dl,15
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,20
  mov dl,16
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,20
  mov dl,17
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,20
  mov dl,18
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,20
  mov dl,19
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,20
  mov dl,20
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,20
  mov dl,21
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,20
  mov dl,22
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,20
  mov dl,23
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,20
  mov dl,57
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,20
  mov dl,59
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

  mov ah,02h
  mov dh,21
  mov dl,58
  int 10h

  mov dx,42
  mov ah,02h
  int 21h

.Exit

end
