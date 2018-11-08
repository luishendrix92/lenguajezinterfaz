; 1 - Mostrar nombre, edad, número de control, carrera, hobby y trabajo (o "No Trabajo") con macros.
; López Garay Luis Felipe
; 15211312
; 23 de Octubre del 2018

INICIALIZAR MACRO
  mov ax,@data
  mov ds,ax
ENDM

IMPRIMIR_NOMBRE MACRO  
  mov ah,09h
  lea dx,nombre
  int 21h
ENDM

IMPRIMIR_EDAD MACRO  
  mov ah,09h
  lea dx,edad
  int 21h
ENDM

IMPRIMIR_NOCONTROL MACRO  
  mov ah,09h
  lea dx,nocontrol
  int 21h
ENDM

IMPRIMIR_CARRERA MACRO  
  mov ah,09h
  lea dx,carrera
  int 21h
ENDM

IMPRIMIR_HOBBY MACRO  
  mov ah,09h
  lea dx,hobby
  int 21h
ENDM

IMPRIMIR_TRABAJO MACRO  
  mov ah,09h
  lea dx,trabajo
  int 21h
ENDM

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
  INICIALIZAR
  
  IMPRIMIR_NOMBRE
  IMPRIMIR_EDAD
  IMPRIMIR_NOCONTROL
  IMPRIMIR_CARRERA
  IMPRIMIR_HOBBY
  IMPRIMIR_TRABAJO

.exit
end
