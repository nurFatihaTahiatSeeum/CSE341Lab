
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data
    a db 0
    b db 0
    msg1 db '?$'
    msg2 db 'The sum of $' 
    msg3 db 'and $' 
    msg4 db 'is $'
    
.code    

main proc  
    mov ah,1     ;input
    int 21h
    mov a,al 
    
    mov ah,1     ;input
    int 21h
    mov b,al
    
    add al,a 
    mov ah,0
    aaa      
        
        
    mov bx,ax
    add bh,30h  
    add bl,30h   
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov ah,2
    mov dl,0dh
    int 21h 
    
    mov ah,9
    lea dx, msg1
    int 21h
    
    mov ah, 2
    mov dl,a
    int 21h
                 
    mov ah, 2
    mov dl,b
    int 21h
                    
    
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov ah,2
    mov dl,0dh
    int 21h
           
    mov ah,9
    lea dx, msg2
    int 21h
    
    mov ah, 2
    mov dl,a
    int 21h  
    
    mov ah,9
    lea dx, msg3
    int 21h 
    
    mov ah, 2
    mov dl,b
    int 21h 
    
    mov ah,9
    lea dx, msg4
    int 21h    
    
    mov ah,2
    mov dl,bh
    int 21h 
    mov ah,2 
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
    
    
end main


