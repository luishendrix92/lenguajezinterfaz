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
