.model small
.stack 100h
.data  
a db 'Input three numbers :$'
b db 10,13,'Largest number is :$'

.code
main proc
    mov ax,@data
    mov ds,ax 
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov bh,al
    int 21h
    mov cl,al
    
    
    
    mov ah,9
    lea dx,b
    int 21h
    
    cmp bl,bh
    jge l2     ;if bl>=bh else l1 means next step
    
    
    l1:         ;next step
    cmp bh,cl 
    jge l3    ;if bh>=cl
    mov ah,2   ;else cl
    mov dl,cl
    int 21h
    jmp exit
    
    l2:           ;if bl>=bh
    cmp bl,cl
    jge l4        ;if bl>=cl 
    mov ah,2      ;else cl is greater than bl and bh
    mov dl,cl
    int 21h
    jmp exit
    
    l3:             ; bh>=cl    from l1
    mov ah,2        ;  bh>=bl and bh>=cl
    mov dl,bh
    int 21h
    jmp exit 
    
    l4:            ; from l2 bl>=cl
    mov ah,2       ; bl>=cl and bl>=bh
    mov dl,bl
    int 21h
    jmp exit
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main