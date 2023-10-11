include emu8086.inc
 ORG 100h                                 
;MOV AH,01
;INT 21H        
;MOV DL,AL
;MOV AH,02
;INT 21H    
PRINT "HELLO WORLD"
 
 RET                  
 
 A DB 07H             ;VARIABLES    
 DEFINE_SCAN_NUM