; Examen U1 Oportunidad 2
; 15211312 - Lopez Garay Luis Felipe

.Model small

.Stack 64

.Data

.Code
  ; Limpiar la pantalla
  mov ax,03h
  int 10h

  ; Linea 1 -> "Mi nombre es Luis y este es mi"
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ; Mover Cursor
  mov ah,02h
  mov dh,10
  mov dl,25
  int 10h

  ; Color #1 aplica a "Mi nombre es"
  mov cx,12
  mov ah,09h
  mov bl,5
  int 10h

  mov dx,77
  mov ah,02h
  int 21h

  mov dx,105
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,110
  mov ah,02h
  int 21h

  mov dx,111
  mov ah,02h
  int 21h

  mov dx,109
  mov ah,02h
  int 21h

  mov dx,98
  mov ah,02h
  int 21h

  mov dx,114
  mov ah,02h
  int 21h

  mov dx,101
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,101
  mov ah,02h
  int 21h

  mov dx,115
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  ; Color #2 aplica a "Luis y este es mi"
  mov cx,17
  mov ah,09h
  mov bl,6
  int 10h

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

  mov dx,121
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,101
  mov ah,02h
  int 21h

  mov dx,115
  mov ah,02h
  int 21h

  mov dx,116
  mov ah,02h
  int 21h

  mov dx,101
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,101
  mov ah,02h
  int 21h

  mov dx,115
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,109
  mov ah,02h
  int 21h

  mov dx,105
  mov ah,02h
  int 21h

  ; Linea 2 -> "examen de la materia lenguajes de interfaz"
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ; Mover Cursor
  mov ah,02h
  mov dh,11
  mov dl,19
  int 10h

  ; Color #3 aplica a "examen de la materia lenguajes de interfaz"
  mov cx,42
  mov ah,09h
  mov bl,2
  int 10h

  mov dx,101
  mov ah,02h
  int 21h

  mov dx,120
  mov ah,02h
  int 21h

  mov dx,97
  mov ah,02h
  int 21h

  mov dx,109
  mov ah,02h
  int 21h

  mov dx,101
  mov ah,02h
  int 21h

  mov dx,110
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,100
  mov ah,02h
  int 21h

  mov dx,101
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,108
  mov ah,02h
  int 21h

  mov dx,97
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,109
  mov ah,02h
  int 21h

  mov dx,97
  mov ah,02h
  int 21h

  mov dx,116
  mov ah,02h
  int 21h

  mov dx,101
  mov ah,02h
  int 21h

  mov dx,114
  mov ah,02h
  int 21h

  mov dx,105
  mov ah,02h
  int 21h

  mov dx,97
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,108
  mov ah,02h
  int 21h

  mov dx,101
  mov ah,02h
  int 21h

  mov dx,110
  mov ah,02h
  int 21h

  mov dx,103
  mov ah,02h
  int 21h

  mov dx,117
  mov ah,02h
  int 21h

  mov dx,97
  mov ah,02h
  int 21h

  mov dx,106
  mov ah,02h
  int 21h

  mov dx,101
  mov ah,02h
  int 21h

  mov dx,115
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,100
  mov ah,02h
  int 21h

  mov dx,101
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,105
  mov ah,02h
  int 21h

  mov dx,110
  mov ah,02h
  int 21h

  mov dx,116
  mov ah,02h
  int 21h

  mov dx,101
  mov ah,02h
  int 21h

  mov dx,114
  mov ah,02h
  int 21h

  mov dx,102
  mov ah,02h
  int 21h

  mov dx,97
  mov ah,02h
  int 21h

  mov dx,122
  mov ah,02h
  int 21h

  ; Linea 3 -> "utilizando el lenguaje ensamblador"
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ; Mover Cursor
  mov ah,02h
  mov dh,12
  mov dl,23
  int 10h

  ; Color #4 aplica a "utilizando el lenguaje ensamblador"
  mov cx,34
  mov ah,09h
  mov bl,10
  int 10h

  mov dx,117
  mov ah,02h
  int 21h

  mov dx,116
  mov ah,02h
  int 21h

  mov dx,105
  mov ah,02h
  int 21h

  mov dx,108
  mov ah,02h
  int 21h

  mov dx,105
  mov ah,02h
  int 21h

  mov dx,122
  mov ah,02h
  int 21h

  mov dx,97
  mov ah,02h
  int 21h

  mov dx,110
  mov ah,02h
  int 21h

  mov dx,100
  mov ah,02h
  int 21h

  mov dx,111
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,101
  mov ah,02h
  int 21h

  mov dx,108
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,108
  mov ah,02h
  int 21h

  mov dx,101
  mov ah,02h
  int 21h

  mov dx,110
  mov ah,02h
  int 21h

  mov dx,103
  mov ah,02h
  int 21h

  mov dx,117
  mov ah,02h
  int 21h

  mov dx,97
  mov ah,02h
  int 21h

  mov dx,106
  mov ah,02h
  int 21h

  mov dx,101
  mov ah,02h
  int 21h

  mov dx,32
  mov ah,02h
  int 21h

  mov dx,101
  mov ah,02h
  int 21h

  mov dx,110
  mov ah,02h
  int 21h

  mov dx,115
  mov ah,02h
  int 21h

  mov dx,97
  mov ah,02h
  int 21h

  mov dx,109
  mov ah,02h
  int 21h

  mov dx,98
  mov ah,02h
  int 21h

  mov dx,108
  mov ah,02h
  int 21h

  mov dx,97
  mov ah,02h
  int 21h

  mov dx,100
  mov ah,02h
  int 21h

  mov dx,111
  mov ah,02h
  int 21h

  mov dx,114
  mov ah,02h
  int 21h

.Exit

end
