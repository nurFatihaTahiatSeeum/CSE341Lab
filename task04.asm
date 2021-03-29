
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


.model small
.data 
.stack 
    dw   128  dup(0)

.code 
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax

    mov al , 4
    
    cmp al , 1
    je DisO
    cmp al , 3
    je DisO
    cmp al , 2
    je DisE
    cmp al , 4
    je DisE   
    
    DisO:
        mov ah , 2
        mov dl , 'o'
        int 21h
        jmp exit
        
    DisE:
        mov ah , 2
        mov dl , 'e'
        int 21h
        jmp exit
        
    exit:
            
   
ends

end start ;



