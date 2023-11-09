include 'emu8086.inc'
.model small
.stack 100h
.data

paralist label byte 
maxlen db 20
actuallen db ?
kbinput db 20 dup('$')
vowel db 'aeiouAEIOU'
prompt db 'Input String : ','$'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    call display_msg
    call read 
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    call count
    print "Number Of vowels in the string :"
    
    call display
    
    mov ah,4ch
    int 21h
    main endp
 

display_msg proc
    mov ah,9
    lea dx,prompt
    int 21h
    
    ret
    display_msg endp 
read proc
    mov ah,0Ah
    lea dx,paralist
    int 21h
    
    ret
    read endp
count proc
     
    lea si,kbinput
    mov bh,actuallen
    mov dx,00h
    back1:
    lea di,vowel
    mov bl,0AH  
    mov al,[si] 
    back:
    cmp al,[di]
    jne fwd
    inc dx
    
   fwd:
   inc di
   dec bl
   jnz back 
   inc si
   dec bh
   jnz back1  
   
   ret 
   count endp 
display proc
    
    mov al,dl
    mov ah,00
    
    mov cx,00Ah
    mov bx,0000h 
    up:
    mov dx,0000h
    div cx
    
    add dx,30h
    push dx
    inc bx
    
    cmp ax,00
    jne up 
    mov cx,bx
    mov ah,2
    x1:
    pop dx
    int 21h
    loop x1
    
    ret
    
    display endp 



    

