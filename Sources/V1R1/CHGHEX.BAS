��ad � CHGHEX �ai � A�Z:� V,U bn � � "FILE NAME               ?";FILE$ <bx � � "distination             ?";DFILE$ Ob� � "I",#,FILE$ qb� � DFILE$�"" � � "O",#,DFILE$ �b� � ��() � @ �b,V��$(,#) �b6� V���( ) � @ �b@� V�"'" � V���(") � � �bJ� V��"$" � � V;:� DFILE$�"" � � #,V;:� �  :� �  cTVN�"" c^V��$(,#) ?ch�(V�"0" � V�"9")�(V�"A" � V�"F")� � QcrVN�VN�V:� ^ gc�U���(��("&H"�VN)) vc�U1���(U,) �c�(U1��"A" � U1��"F") � U�"0"�U �c� U;"H";V; �c� DFILE$�"" � � #,U;"H";V; �c� �  �c�F� �c�� V; �c�� DFILE$�"" � � #,V; d��� F d� V��$(,#) Vd� � V�"'" � V���(") � V���(
) � V���() � V���( ) � F� `d� � V; zd�� DFILE$�"" � � #,V; �d� �d� �  �d@� �dJ� "Completed. �dT�   ) � V���(
) � V���() � V��	
	LD	A,B	
	SUB	(IX+DX)	
	LD	(IX+SXPOS),A	
	LD	A,C	
	SUB	(IX+DY)	
	LD	(IX+SYPOS),A	
;
	RET		
;
SMOKEM:			
	LD	IX,XTBL	
	LD	A,D	
	SUB	(IX+DX)	
	LD	(IX+XPOS),A	
	LD	(IX+XPOS+16),A	
	LD	A,E	
	SUB	(IX+DY)	
	LD	(IX+YPOS),A	
	LD	(IX+YPOS+16),A,SMN100	
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
	DEC	D,A	
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
	JR	C	A,(IX+DY+16)	
	LD	(IX+YPOS),A	
	LD	(IX+YPOS+16),A	
	LD	C,A	
	LD	A,(IX+SXPOS)	
	ADD	A,(IX+DX+16)	
	LD	(IX+SXPOS),A	
	LD	DD	(IX+IDCODE),18	
	LD	A,(IX+XPOS)	
	ADD	A,(IX+DX+16)	
	LD	(IX+XPOS),A	
	LD	(IX+XPOS+16),A	
	LD	B,A	
	LD	A,(IX+YPOS)	
	ADD;
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
	LHR POS
SETCUR:			
	PUSH	AF	
	LD	A,B	
	LD	(CURX),A	
	LD	A,C	
	LD	(CURY),A	
	POP	AF	
	RET		
;
CURY:	DB	0	
CURX:	DB	0	
YORI	
	LD	B,10	
CLDS1:	LD	(HL),0	
	INC	HL	
	DJNZ	CLDS1	
	RET		
;
; OUTPUT GRAPHIC ALPHANUMERIC CHARACTORS
;
; BC=(X,Y)CC	HL	
	ADD	A,$30	
	CALL	PUTCHR	
	LD	A,(CURX)	
	SUB	8	
	LD	(CURX),A	
	DEC	D	
	JR	NZ,DCN1	
	RET		
;
CLDSTN:			
	LD	HL,K