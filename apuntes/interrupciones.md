# Interrupciones

Rompiendo en la secuencia de un programa para ejecutrar un programa especial llamado una rutina de servicio cuya caracteristica principal es regresar al punto de interrupcióm.

## Tipos de interrupciones

- **Por Software**: Son aquellas programadas por el usuario, es decir, el usuario decide dónde y cuándo ejecutarlas.
- **Por Hardware**: Son aquellas que son ejectuadas por dispositivos externos al procesador, su caracteristica principal es que no son programadas.

Existen dos clases de interrupciones por Hardware

- **Por hardware enmascarable**: Son aquellas donde el usuario decide si ser o no ser interrumpido.
- **Por hardware no enmascarable (*NMI*)**: Aquellas que siempre interrumpen el programa.

## Instrucción MOV

`mov` es una instrucción del lenguaje ensamblador que se utiliza para mover datos entre registros.

## Esqueleto del programa

```asm
; programa que muestra un caracter
; Gustavo Ramirez
; 10211430
; 11 de Septiembre del 2018

.Model small
.stack 64
.Data
.Code
.Exit
end
```
