; 2 - Programa que despliega una cadena
; López Garay Luis Felipe
; 15211312
; 25 de Septiembre del 2018

.Model small

.Stack 64

.Data
  ; 10  -> \n Line Feed (New Line)
  ; 13  -> \r Carriage Return (Inutil en Linux)
  ; "$" -> Imprimir caracteres hasta aqui
  nombre db "Lopez Garay Luis Felipe", 10, 13, "$"

.Code
  mov ax,@Data  ; Se inicializan las variables
  mov ds,ax     ; Se pasa la info de ax a ds (segmento de datos)
  lea dx,nombre ; Lee la cadena ingresada en la variable
  mov ah,09h    ; Servicio de impresion de cadenas
  int 21h       ; Interrupcion de sistema
.Exit

end
