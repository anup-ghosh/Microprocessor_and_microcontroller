.model small
.stack 100
.data

msg db "Hello world in 8086!!!$" , "anup ghosh$"    
msg1 db 

.code
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,09h
    int 21h
    
    ;mov ah,4ch
    ;int 21h
end
