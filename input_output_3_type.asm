.model small
.stack 100h

.data
 m db "Anup ghosh$" 
 n db "how are you?$" 
 enter_data db "Enter the value of a$"
 enter_data1 db "Enter the value of b$" 
output db "The output is:$"

.code
main proc
    ;1-> single key input
    ;2-> single character output
    ;9-> charcter string output
    
    mov ax,@data
    mov ds,ax  
    
    mov ah,9
    lea dx,enter_data
    int 21h  
    
    mov ah,1
    int 21h 
    mov bl,al
    
    mov ah,2     ;for new line
    mov dl,10
    int 21h
    mov dl,13
    int 21h
      
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,2     ;for new line
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,enter_data1
    int 21h  
   
    mov ah,1
    int 21h 
    mov cl,al  
    
    mov ah,2     ;for new line
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    
    
    
    mov ah,2
    mov dl,cl
    int 21h
    

    exit:
    mov ah,4ch
    int 21h
    main endp
end main