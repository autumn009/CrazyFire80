��a2 � CG80.BAS �aP �:� �aZ � BASE 1 	bd � CG80.PAT TO CG80.MAC bn SFILE$�"CG80.PAT" 5bx DFILE$�"CG80.MAC" Ub� � "FROM:"SFILE$,"TO:"DFILE$ sb� � "OK?";:� �$()�"N" � �  {b� �:� �b� � F(,) �b� � "I",#,SFILE$ �b� � "O",#,DFILE$ �b� � #,"; CG PATTERN FILE FOR M80 �b� � #,".Z80 c� � #,";5X7 DOT 3X2 CHRARACTER SCALE PC-8001 SCREEN -c� � #,"CGADR::" ?c,� ��() � @ Oc�� � #,NAM$ cc�� NAM$�"" � � �c�� ��(NAM$,)�";" � � NAM$:� #,NAM$:� � �c�� NAM$�"EOF" � @ �c�� F:� F(,) �c�F�:MAXY� �cV$���(NAM$,,��(NAM$)�):�  �c� F� � � 	d� #,V$ d� V$,MAXY d:�� /d&MAXX���(V$) ?d0MAXY�MAXY� Pd:� I� � MAXX tdD� ��(V$,I,)��" " � F(I,MAXY)� |dN� I �dS� MAXY� � � �dX�  �d�DATAS� �d�CX�(MAXX�)� �d�CY�(MAXY�)� �d�OFS� �d�� �:� � �d�:�� �d�� Y� �  e�� X� �  e�D� e�� YY� �  -e� XX� �  ;eX1�X��XX Me Y1�Y��YY�OFS _e% � Y1� � R �e*� F(X1�,Y1�)� � D�D � �(XX� � YY) �e4:��PRINT CHR$(27)"=";CHR$(X1+32);CHR$(Y1+32);USING"#";F(X1+1,Y1+1) �eR�:� �e\� p �ef�:� fp� DATAS� � � #,��();��(
); fz� f�� %f�� , 1f�DATAS� ;f�OFS� Mf�CY�(MAXY�)� Wf� � af� , gf�� �f�� ��(NAM$,)�";" � � NUM$:� � �fp� DATAS� � � #,��()"DEFB"��();"0"��(D)"H";:DATAS�DATAS�:� g�� DATAS� � � #,",0";��(D);"H";:DATAS�DATAS�:� $g�� #,",0"��(D);"H":DATAS�:� ;g@� #,��();"END":� WgJ� "FUNCTION COMPLETED." ]gT� tg'� "I",#,"CG80.MAC �g'� � #,V$:�V$ �g$'� ' �g N� &hF2,&HF2,&H02,&h72,&h72,&h02 �g!N� ��();"*"; �g"N�:�:� �g*N�  N �g4N� Y� �  �g>N� X� �  �gCN� I hHN�  ��X�Y�x,I h\N� X,Y )h�N� Q�,�  :h�N� Q��x,�    );"*"; �g"N COMPLETED." ]gT� tg'� "I",#,"CG80.MAC �g'� � #,V$:�V$ �g$'� ' �g N� &hF2,&HF2,&H02,&h72,&h72,&h02 �g!N� ��();"*"; �g"60H
	CALL	NC,PCHS10
	LD	L,A
	LD	H,0
	LD	E,L
	LD	D,H
	ADD	HL,HL
	ADD	HL,DE
	ADD	HL,HL
	LD	DE,CGADR
	ADD	HL,DE
	EX	DE,HL
	LD	BC,(CURY)
	CALL	DRADR
	LD	B,3
	LD	C,2
	CALL	DISPXX
	LD	A,(CURX)
	ADD	6
	LD	(CURX),A
	POP	BC
	POP	DE
	POP	HL
	P