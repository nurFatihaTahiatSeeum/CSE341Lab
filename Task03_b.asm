
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.code

main proc  
    mov ah,1     ;input
    int 21h
    mov bl,al
    
    add bl,32 
    mov ah,02    ;output
    mov dl,bl
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
    
    
end main





