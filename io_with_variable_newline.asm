.model small
.stack 100h
.data

msg db 3d
msg1 db ?

   
.code
main proc
    mov ax,@data
    mov ds,ax
            
            
    
    mov ah,2       ;show output
    add msg,48
    mov dl,msg
    int 21h   
    
    
    mov ah,1    ;input
    int 21h
    mov msg1,al
 
    mov ah,2     ;for new line
    mov dl,10,13
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2       ;show output
    mov dl,msg1
    int 21h
             
    exit:         
    mov ah,4ch ;for ending
    int 21h
    main endp
end main