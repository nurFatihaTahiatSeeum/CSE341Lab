
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  
.model small
.data
msg1 db 10,13, "Enter First Number:$" 
msg2 db 10,13, "Enter Second Number:$"
msg3 db 10,13, "Enter Third Number:$" 
msg4 db 10,13, "Minimum Number:$"
msg5 db 10,13, "Maximum Number:$" 

num1 db ?
num2 db ? 
num3 db ? 


.stack 100h
.code
main proc
mov ax, @data
mov ds,ax 

lea dx, msg1
mov ah,09
int 21h 

mov ah, 01
int 21h

mov num1,al

lea dx, msg2
mov ah,09
int 21h   

mov ah, 01
int 21h

mov num2,al 

lea dx, msg3
mov ah,09
int 21h   

mov ah, 01
int 21h

mov num3,al 

lea dx,msg4
mov ah,09
int 21h 

mov bl,num1
cmp bl,num2
jnl number2 
cmp bl, num3
jnl number3


mov dl, num1
jmp display   

lea dx,msg5
mov ah,09
int 21h 

mov bl,num1
cmp bl,num2
jge G_numbr2 
cmp bh, num3
jge number3


mov dl, num1
jmp display
  
G_numbr2:
cmp bl,num3
jge G_numbr3
mov ah,02
mov dl,num3
int 21h
jmp display
 
 
G_numbr3:
mov dl,bl

  
number2:
mov bl,num2
cmp bl, num3
jnl number3
mov dl,num2
jmp display

number3:
mov dl,num3



display:
mov ah,02
int 21h

ret




