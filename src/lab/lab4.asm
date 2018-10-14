; Programa que ejemplifica las operaciones aritméticas comunes

.Model small

.Stack 100h

.Data
  newline db 10,13,'$'
  num_a   dw 3
  num_b   dw 3

.Code
  mov ax,@Data
  mov ds,ax

  ; Adición con ADD
  mov ax,num_a
  add ax,num_b

  add ax,48 ; '0' ó 0x30/30h
  mov dx,ax
  mov ah,02h
  int 21h

  mov ah,09h
  lea dx,newline
  int 21h

  ; Resta con SUB
  mov ax,num_a
  sub ax,num_b

  add ax,48 ; '0' ó 0x30/30h
  mov dx,ax
  mov ah,02h
  int 21h

  mov ah,09h
  lea dx,newline
  int 21h

  ; Multiplicación con MUL
  mov ax,num_a
  mul num_b

  add ax,48 ; '0' ó 0x30/30h
  mov dx,ax
  mov ah,02h
  int 21h

  mov ah,09h
  lea dx,newline
  int 21h

  ; División con DIV
  mov dx,0
  mov ax,num_a
  mov cx,num_b
  div cx
  
  push ax

  add dx,48 ; '0' ó 0x30/30h
  mov ah,02h
  int 21h
  mov dx,32
  int 21h
  pop dx
  add dx,48 ; '0' ó 0x30/30h
  int 21h

.Exit
End 
