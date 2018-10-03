; 8 - Imprimir 5 veces una frase cualquiera
; López Garay Luis Felipe
; 15211312
; 02 de Octubre del 2018

.Model small

.Stack 64

.Data
	frase db "Mas vale pajaro en mano que un ciento volando", 10, 13, "$"

.Code
	mov ax,@Data
	mov ds,ax

	mov cx,5
	ciclofrase:
		lea dx,frase
		mov ah,09h
		int 21h
	loop ciclofrase

.Exit

end

; 9 - Imprimir ni nombre la cantidad de veces de mi edad
; López Garay Luis Felipe
; 15211312
; 102 de Octubre del 2018
; DOS Encoded

.Model small

.Stack 64

.Data
	nombre db "López Garay Luis Felipe", 10, 13, "$"

.Code
	mov ax,@Data
	mov ds,ax

	mov cx,20 ; En readlidad tengo 26
	ciclonombre:
		lea dx,nombre
		mov ah,09h
		int 21h
	loop ciclonombre

.Exit

end

; 10 - Imprimir 2 veces una frase, 3 veces mi nombre y 4 mi número de control
; López Garay Luis Felipe
; 15211312
; 02 de Octubre del 2018
; DOS Encoded

.Model small

.Stack 64

.Data
	nombre db "López Garay Luis Felipe", 10, 13, "$"
	frase db "Hola mundo cruel!", 10, 13, "$"
	nocontrol db "15211312", 10, 13, "$"

.Code
	mov ax,@Data
	mov ds,ax

	mov cx,2
	ciclofrase:
		lea dx,frase
		mov ah,09h
		int 21h
	loop ciclofrase

	mov cx,3
	ciclonombre:
		lea dx,nombre
		mov ah,09h
		int 21h
	loop ciclonombre

	mov cx,4
	ciclonc:
		lea dx,nocontrol
		mov ah,09h
		int 21h
	loop ciclonc

.Exit

end
