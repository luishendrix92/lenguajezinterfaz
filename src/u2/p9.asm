; 9 - Imprimir ni nombre la cantidad de veces de mi edad
; L¢pez Garay Luis Felipe
; 15211312
; 102 de Octubre del 2018
; DOS Encoded [¢]

.Model small

.Stack 64

.Data
	nombre db "L¢pez Garay Luis Felipe", 10, 13, "$"
	edad   dw 20 ; En realidad tengo 26 pero no caben en consola

.Code
	mov ax,@Data
	mov ds,ax

	mov cx,edad
	ciclonombre:
		lea dx,nombre
		mov ah,09h
		int 21h
		
		loop ciclonombre

.Exit

end
