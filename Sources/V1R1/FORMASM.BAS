��ad � bn � "ASSEMBLER SOUCE FILE FORMATTER VERSION 1.0 ,bx �  "                     by Akie 1983 2b� � wb� � "If you don't want DIST.FILE,type only RETURN DIST.FILE asked. }b� � �b� � A�Z:� V,U �b� � � "SOURCE FILE NAME without extent?";SFILE$ �b� � � "DISTINATION                    ?";DFILE$ c� � "I",#,SFILE$ 'c� � DFILE$�"" � � "O",#,DFILE$ 9c� � ��() � 4 Fc� � � #,V Zc� � ��(V)� � �  oc� � GET LABEL NAME �c� VL�"":VM�"":VO�"":VC�"" �cCOMF� �cU���(V,) �c� U�";" � � �c"� U�"." � � �c,� U�" " � U���() � COMF�:� | �c6P� d@U���(V,P,) 0dJ�(U�"0" � U�"9")�(U�"A" � U�"Z") � ^ HdTVL�VL�U:P�P�:� @ nd^� ��(V,P,)�":" � VL�VL�":":P�P� �dh� ��(V,P,)�":" � VL�VL�":":P�P�:��PUBLIC LABEL �drV���(V,P) �d|P�:F� �d��� F �d� U���(V,P,) e� � U�" " � U���() � F�:P�P� :� F� e�� e�V���(V,P) !e�P�:F� *e��� F ;e� U���(V,P,) |e� �(U�"0" � U�"9")�(U�"A" � U�"Z") � F� :� F�:VM�VM�U:P�P� �e�� �e�V���(V,P) �e�P�:F� �e��� F �e U���(V,P,) �e � U�" " � U���() � F�:P�P� :� F� �e�:V���(V,P) �e&P�:F� f0�� F f: U���(V,P,) )fD � U�"'" � � >fN� U���(") � � �fX � U��"-" � U��"+" � U��"("� U��")" �(U�"0" � U�"9")�(U�"A" � U�"Z")� U��"," � U��"$" � F� :� F�:VO�VO�U:P�P� �fb� �flV���(V,P) �fvP��(V,";"):� P � V���(V,P):� � �f�� OUTPUT -g�� COMF� � � VL�"" � VM�"" � VO�"" � V�VC:� � Qg�V�VL���()�VM���()�VO���()�VC Yg�� V rg�� DFILE$�"" � � #,V |g�� �  �g�VC�V:� � �g�� P� � � ��(V,P�,)�"F" � F�:VO�VO�U:P�P�:� b �g�VO�VO�U �g�P�P� �g�F�:�� F �g� U���(V,P,) h� VO�VO�U h P�P� 4h � U�"'" � U���(") � F� :� F� :h� Bh F� Lh*� b Vh4� eof \h>� phH�:� "Completed. vhR�    VO�VO�U h P�P� 4h � U�"'" � U���(") � F� :� F� :h� Bh F� Lh*� "
 INC HL
 DEC C
 JR NZ,DS13
 POP HL
DS15:INC HL
 INC HL
DS20:LD A,B
 PUSH HL
 ROMSUB 0664H
 POP HL
DS30:LD A,(HL)
 CP 00DH
 JR Z,DS50
 LD (DE),A
 INC HL
 INC DE
 JR DS30
DS50:INC B
 INC HL
 LD A,25
 CP B
 RET Z
 XOR A
 CP (HL)
 JR