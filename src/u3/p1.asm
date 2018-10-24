; 1 - Mostrar nombre, edad, número de control, carrera, hobby y trabajo (o "No Trabajo") con macros.
; López Garay Luis Felipe
; 15211312
; 23 de Octubre del 2018

.model small

.stack 64

.data
  nombre db "Luis Felipe Lopez Garay",10,13,'$'
  edad db "26",10,13,'$'
  nocontrol db "15211312",10,13,'$'
  carrera db "Ing. Sistemas Computacionales",10,13,'$'
  hobby db "Ir al cine y ver series es mi hobby",10,13,'$'
  trabajo db "Soy desempleado :($"

.code
IMPRIMIR MACRO cadena
  push ax
  push dx
  
  mov ah,09h
  lea dx,cadena
  int 21h
  
  pop dx
  pop ax
ENDM

INICIALIZAR MACRO
  mov ax,@data
  mov ds,ax
ENDM

MAIN PROC
  INICIALIZAR
  
  IMPRIMIR nombre
  IMPRIMIR edad
  IMPRIMIR nocontrol
  IMPRIMIR carrera
  IMPRIMIR hobby
  IMPRIMIR trabajo

  .exit
ENDP

end MAIN
