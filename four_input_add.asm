.model small
.stack 100h
.data

a db ?
b db ?
ans db ?

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,1
    int 21h
    mov cl,al
    
    mov ah,1
    int 21h
    mov ch,al
    
    add bl,bh ;bl=bl+al
    sub bl,48
    mov a,bl

    add a,cl ;a=a+cl
    sub a,48

    add a,ch
    sub a,48 

    mov ah,2
    mov dl,a
    int 21h

    exit:
    mov ah,4ch
    int 21h
    main endp
end main