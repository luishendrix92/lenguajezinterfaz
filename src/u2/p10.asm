; 10 - Imprimir 2 veces una frase, 3 veces mi nombre y 4 mi n£mero de control
; L¢pez Garay Luis Felipe
; 15211312
; 02 de Octubre del 2018
; DOS Encoded [¢]

.Model small

.Stack 64

.Data
	nombre db "L¢pez Garay Luis Felipe", 10, 13, "$"
	frase db "Como agua para chocolate", 10, 13, "$"
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
