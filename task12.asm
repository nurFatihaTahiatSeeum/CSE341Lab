
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  
.model small
.data
number db "Enter Your Number: $"
output db "Falls in the segment: $"
i db "i$"
k db "k$"
l db "l$"
m db "m&" 

.stack 100h
.code
main proc
mov ax, @data
mov ds, ax
mov es, ax

lea dx, number
mov ah, 9
int 21h
    
mov ah, 1
int 21h
    
cmp al , 30h
je segmentI
cmp al , 31h
je segmentI
cmp al , 32h
je segmentI
cmp al , 33h
je segmentI
    
    
cmp al , 34h
je segmentK
cmp al , 35h
je segmentK
cmp al , 36h
je segmentK
    
cmp al , 37h
je segmentL
cmp al , 38h
je segmentL
cmp al , 39h
je segmentL   
cmp al , 37h
je segmentL
cmp al , 38h
je segmentL
cmp al , 39h
je segmentL
cmp al , 40h
je segmentM
    
    
segmentI:
mov dl, 0AH
mov ah , 2
int 21h
mov dL,0DH 
int 21h 
mov dL,0AH 
int 21h
lea dx, output
mov ah, 9
int 21h
lea dx, i
mov ah, 9
int 21h
jmp exit
        
              
        
        
segmentK:
mov dl, 0AH
mov ah , 2
int 21h
mov dL,0DH 
int 21h 
mov dL,0AH 
int 21h
lea dx, output
mov ah, 9
int 21h
lea dx, k
mov ah, 9
int 21h
jmp exit
        
segmentL:
mov dl, 0AH
mov ah , 2
int 21h
mov dL,0DH 
int 21h 
mov dL,0AH 
int 21h
lea dx, output
mov ah, 9
int 21h
lea dx, l
mov ah, 9
int 21h
jmp exit
        
segmentM:
mov dl, 0AH
mov ah , 2
int 21h
mov dL,0DH 
int 21h 
mov dL,0AH 
int 21h
lea dx, output
mov ah, 9
int 21h
lea dx, m
mov ah, 9
int 21h
jmp exit
        
exit:
ends