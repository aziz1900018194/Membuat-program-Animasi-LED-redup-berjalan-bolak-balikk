 Org   0h
 MOV   A, #0FEh

MULAI:
 MOV   P0,A           
 ACALL DELAY   
 RL    A    
 CJNE  A,#7FH,MULAI   

MULAI1:               
 MOV   P0,A      
 ACALL DELAY    
 RR    A          
 CJNE  A,#0FEh,MULAI1
 SJMP  MULA  
 Delay:
Mov R0,#5

Delay1:
 Mov R1,#2h
 Djnz    R1,$
 Djnz R0,Delay1
 Ret

End