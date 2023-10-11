
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
 include 'emu8086.inc'
org 100h

; add your code here 
CALL SCAN_NUM  
MOV BL,CL     
MOV AX , 0001H

FACT:
    MUL BL 
    DEC BL  
    DEC CL
    CMP CL,0
    JNE FACT
    ;LOOP FACT
CALL PRINT_NUM

ret
DEFINE_SCAN_NUM   
DEFINE_PRINT_NUM   
DEFINE_PRINT_NUM_UNS
                         
                         
              ;//VARIABLE
              ;//LOOP
              ;//ARITHMATIC OPERATION

