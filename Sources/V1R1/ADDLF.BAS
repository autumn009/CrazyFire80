��ad �"ADDING LF CODE FOR PEA FILE" bn � "SRC FILE NAME";S$ bx � "DST FILE NAME";D$ .b� � "I",,S$ =b� � "O",,D$ Mb,V$��$(,#) bb6� V$���() � � �b@� V$���() � � #,:�:� � �b�� #,V$; �b�� V$; �b�� , �b�� �b�� "COMPLETED." �b��   $(,EFB	48	
	DEFB	52	
	DEFB	54	
;
BOOMDS:			
	CALL	DSET	
	LD	A,(IX+REPCON)	
	CP	10	
	PUSH	AF	
	CALL	NZ,DISPXX	
	POP	AF	
	RET	NZ	
	CALL	CLRSXX	
	LD	(IX+IDCODE),0	
	RET		
;
;
COUNT:			
	XOR	A	
	LD	(CNTS),A	
	LD	B,20	
	LD	C,23	
	LD	HL,KYORI	
COUNT0:			
	LD	A,(CNTS)	
	INC	A	
	LD	(CNTS),A	
	LD	A,(HL)	
	INC	A	
	LD	(HL),A	
	CP	10	
	PUSH	AF	
	JR	NZ,COUNT1	
	LD	(HL),0	
COUNT1:			
	POP	AF	
	RET	NZ	
	INC	HL	
	LD	A,B	
	SUB	3	
	LD	B,A	
	RET	C	
	JR	COUNT0	
;
DSPCNT:			
	LD	HL,KYORI	
	LD	BC,8020H+1400H	
	CALL	SETCUR	
	LD	A,(CNTS)	
	LD	D,A	
DCN1:			
	LD	A,(HL)	
	INC	HL	
	ADD	A,30H	
	CALL	PUTCHR	
	LD	A,(CURX)	
	SUB	8	
	LD	(CURX),A	
	DEC	D	
	JR	NZ,DCN1	
	RET		
;
CLDSTN:			
	LD	HL,KYORI	
	LD	B,10	
CLDS1:	LD	(HL),0	
	INC	HL	
	DJNZ	CLDS1	
	RET		
;
; OUTPUT GRAPHIC ALPHANUMERIC CHARACTORS
;
; BC=(X,Y)CHR POS
SETCUR:			
	PUSH	AF	
	LD	A,B	
	LD	(CURX),A	
	LD	A,C	
	LD	(CURY),A	
	POP	AF	
	RET		
;
CURY:	DEFB	0	
CURX:	DEFB	0	
;
PUTLIN:			
	LD	A,(HL)	
	INC	HL	
	OR	A	
	RET	Z	
	CALL	PUTCHR	
	JR	PUTLIN	
;
;
;TO CHANGE MSL TO SMOKE
SMOKEN:			
	LD	(IX+IDCODE),18	
	LD	A,(IX+XPOS)	
	ADD	A,(IX+DX+16)	
	LD	(IX+XPOS),A	
	LD	(IX+XPOS+16),A	
	LD	B,A	
	LD	A,(IX+YPOS)	
	ADD	A,(IX+DY+16)	
	LD	(IX+YPOS),A	
	LD	(IX+YPOS+16),A	
	LD	C,A	
	LD	A,(IX+SXPOS)	
	ADD	A,(IX+DX+16)	
	LD	(IX+SXPOS),A	
	LD	D,A	
	LD	A,(IX+SYPOS)	
	ADD	A,(IX+DY+16)	
	LD	(IX+SYPOS),A	
	LD	E,A	
;
	INC	D	
	INC	D	
	LD	A,B	
	ADD	A,2	
	CP	D	
	JR	C,SMN100	
	LD	A,(IX+DX)	
	NEG		
	LD	(IX+DX),A	
	LD	A,(IX+DY)	
	NEG		
	LD	(IX+DY),A	
	RET		
;
SMN100:			
	DEC	D	
	DEC	D	
	LD	A,D	
	SUB	(IX+DX)	
	LD	(IX+XPOS),A	
	LD	(IX+XPOS+16),A	
	LD	A,E	
	SUB	(IX+DY)	
	LD	(IX+YPOS),A	
	LD	(IX+YPOS+16),A	
	LD	A,B	
	SUB	(IX+DX)	
	LD	(