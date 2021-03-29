
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
.model small
.data 
even db " even numver$"
odd db "  odd number$"
.stack
.code  

mov ah,01
int 21h
mov dl,al
mov bl,2
div bl  

cmp ah,0
jne e:
lea dx,even
mov ah,09
int 21h   
jmp p 

e:
lea dx,odd
mov ah,09
int 21h  

p:


ret




