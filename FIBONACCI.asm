# BEGIN 0000H
LXI H,2000H
MVI C,0AH
MOV A,M
INX H
MOV B,M

REP:	  
                           
ADD B
INX H
MOV M,A
MOV A,B
MOV B,M
DCR C
JNZ REP
HLT
#ORG 2000H
#DB 00H,01H