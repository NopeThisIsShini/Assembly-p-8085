#BEGIN 0000H
LXI H,2040H
MOV B,M
INX H
MOV A,M
DCR B
UP :	 INX H
                       	 CMP M
	 JNC DOWN
	 MOV A,M
DOWN :	 DCR B
	 JNZ UP
	 STA 2049H
	 HLT
#ORG 2040H
#DB 05H,01H,02H,0AH,0DH,09H