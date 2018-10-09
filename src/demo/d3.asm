; 3 - Programa que pide cadenas y las muestra con formato
; López Garay Luis Felipe
; 15211312
; 4 de Octubre del 2018

.Model small

.Stack 64

.Data  
  prompt_nombre  db "Cual es tu nombre? $"
  prompt_noctrl  db "Cual es tu numero de control? $"
  prompt_carrera db "En que carrera estudias? $"
  prompt_sem     db "En que semestre estas cursando? $"

  ans_nombre     db "Tu nombre es $"
  ans_nocrl      db "Tu numero de control es $"
  ans_carrera    db "Estudias la carrera de $"
  ans_sem        db "Cursas el semestre #$"

  input_nombre   db 30 dup(?),10,13,'$'
  input_noctrl   db 30 dup(?),10,13,'$'
  input_carrera  db 30 dup(?),10,13,'$'
  input_sem      db 30 dup(?),'$'

.Code
  Main PROC
    mov ah,00h ; Modo de video
    mov al,03h ; Limpiar pantalla
    int 10h    ; Interrupcion de video

    mov ax,@Data
    mov ds,ax

    mov ah,09h
    lea dx,prompt_nombre
    int 21h

    mov ah,3fh
    mov cx,30
    lea dx,input_nombre
    int 21h

    mov ah,09h
    lea dx,prompt_noctrl
    int 21h

    mov ah,3fh
    mov cx,30
    lea dx,input_noctrl
    int 21h

    mov ah,09h
    lea dx,prompt_carrera
    int 21h

    mov ah,3fh
    mov cx,30
    lea dx,input_carrera
    int 21h

    mov ah,09h
    lea dx,prompt_sem
    int 21h

    mov ah,3fh
    mov cx,30
    lea dx,input_sem
    int 21h

    mov ah,00h ; Modo de video
    mov al,03h ; Limpiar pantalla
    int 10h    ; Interrupcion de video

    mov ah,09h
    lea dx,ans_nombre
    int 21h
    lea dx,input_nombre
    int 21h
    lea dx,ans_nocrl
    int 21h
    lea dx,input_noctrl
    int 21h
    lea dx,ans_carrera
    int 21h
    lea dx,input_carrera
    int 21h
    lea dx,ans_sem
    int 21h
    lea dx,input_sem
    int 21h

    .Exit
  ENDP

End Main
