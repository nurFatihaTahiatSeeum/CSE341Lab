
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  
.model small
.data
DayNo db "Input: $"
DayName db "Output: $"
Saturday db "Saturday$"
Sunday db "Sunday$"
Monday db "Monday$"
Tuesday db "Tuesday$"
Wednesday db "Wednesday$"
Thursday db "Thursday$"
Friday db "Friday$" 

.stack 100h
.code
main proc
mov ax, @data
mov ds, ax
mov es, ax

lea dx,DayNo
mov ah, 9
int 21h
mov ah, 1
int 21h
cmp al , 31h
je DaySat
cmp al , 32h
je DaySun
cmp al , 33h
je DayMon
cmp al , 34h
je DayTue
cmp al , 35h
je DayWed
cmp al , 36h
je DayThu
cmp al , 37h
je DayFri
    
    
DaySat:
mov dl, 0AH
mov ah , 2
int 21h
mov dL,0DH 
int 21h 
mov dL,0AH 
int 21h
lea dx, DayName
mov ah, 9
int 21h
lea dx, Saturday
mov ah, 9
int 21h
jmp exit
        
        
DaySun:
mov dl, 0AH
mov ah , 2
int 21h
mov dL,0DH 
int 21h 
mov dL,0AH 
int 21h
lea dx, DayName
mov ah, 9
int 21h
lea dx, Sunday
mov ah, 9
int 21h
jmp exit 


DayMon:
mov dl, 0AH
mov ah , 2
int 21h
mov dL,0DH 
int 21h 
mov dL,0AH 
int 21h
lea dx, DayName
mov ah, 9
int 21h
lea dx, Monday
mov ah, 9
int 21h
jmp exit
        

DayTue:
mov dl, 0AH
mov ah , 2
int 21h
mov dL,0DH 
int 21h 
mov dL,0AH 
int 21h
lea dx, DayName
mov ah, 9
int 21h
lea dx, Tuesday
mov ah, 9
int 21h
jmp exit


DayWed:
mov dl, 0AH
mov ah , 2
int 21h
mov dL,0DH 
int 21h 
mov dL,0AH 
int 21h
lea dx, DayName
mov ah, 9
int 21h
lea dx, Wednesday
mov ah, 9
int 21h
jmp exit
        
    
DayThu:
mov dl, 0AH
mov ah , 2
int 21h
mov dL,0DH 
int 21h 
mov dL,0AH 
int 21h
lea dx, DayName
mov ah, 9
int 21h
lea dx, Thursday
mov ah, 9
int 21h
jmp exit


DayFri:
mov dl, 0AH
mov ah , 2
int 21h
mov dL,0DH 
int 21h 
mov dL,0AH 
int 21h
lea dx, DayName
mov ah, 9
int 21h
lea dx, Friday
mov ah, 9
int 21h
jmp exit
        
exit:
ends