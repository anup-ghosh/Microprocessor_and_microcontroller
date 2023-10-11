.model small 
.data
a dw 1
b dw ?
.code
main proc
    mov ax,@data
    mov ds,ax  
    
    mov ah,01h
    int 21h  
    sub al,48
    
    mov cx,0
    mov cl,al
    
    mov bx,0
    
    sum:
    ADD bx,a
    inc a
    loop sum
    
    mov b,bx
    
    
    
     
    
    mov ah,2
    int 21h
    mov ah,4Ch
    int 21h
main endp
end      