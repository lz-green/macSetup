FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ` Z v1.1.20060301 (by Conrad Albrecht-Buehler) updated to handle displays with the same name.     � 	 	 �   v 1 . 1 . 2 0 0 6 0 3 0 1   ( b y   C o n r a d   A l b r e c h t - B u e h l e r )   u p d a t e d   t o   h a n d l e   d i s p l a y s   w i t h   t h e   s a m e   n a m e .   
  
 l     ��  ��    F @ v2.0 (by hypert) updated to simply toggle between two rotations     �   �   v 2 . 0   ( b y   h y p e r t )   u p d a t e d   t o   s i m p l y   t o g g l e   b e t w e e n   t w o   r o t a t i o n s      l     ��������  ��  ��        l      ��  ��    � � Set rotationA and rotationB to your two main rotation values.
	1 = Standard
	2 = 90 degrees (clockwise)
	3 = 180 degrees
	4 = 270 degrees
     �     S e t   r o t a t i o n A   a n d   r o t a t i o n B   t o   y o u r   t w o   m a i n   r o t a t i o n   v a l u e s . 
 	 1   =   S t a n d a r d 
 	 2   =   9 0   d e g r e e s   ( c l o c k w i s e ) 
 	 3   =   1 8 0   d e g r e e s 
 	 4   =   2 7 0   d e g r e e s 
      j     �� �� 0 	rotationa 	rotationA  m     ����       j    �� �� 0 	rotationb 	rotationB  m    ����       l     ��������  ��  ��        l     ��   !��     D > this function gets a list of the display preferences windows.    ! � " " |   t h i s   f u n c t i o n   g e t s   a   l i s t   o f   t h e   d i s p l a y   p r e f e r e n c e s   w i n d o w s .   # $ # l     �� % &��   % A ; needed if you have more than one display that you want to     & � ' ' v   n e e d e d   i f   y o u   h a v e   m o r e   t h a n   o n e   d i s p l a y   t h a t   y o u   w a n t   t o   $  ( ) ( l     �� * +��   * ? 9 rotate.  Note: PowerBooks will not rotate their built-in    + � , , r   r o t a t e .     N o t e :   P o w e r B o o k s   w i l l   n o t   r o t a t e   t h e i r   b u i l t - i n )  - . - l     �� / 0��   /   LCDs with this script.    0 � 1 1 .   L C D s   w i t h   t h i s   s c r i p t . .  2 3 2 i    	 4 5 4 I      �������� 0 getdisplays getDisplays��  ��   5 k      6 6  7 8 7 O      9 : 9 k     ; ;  < = < e     > > 1    ��
�� 
pALL =  ?�� ? O   	  @ A @ r     B C B 2    ��
�� 
cwin C o      ���� 0 alldisplays allDisplays A 4   	 �� D
�� 
prcs D m     E E � F F $ S y s t e m   P r e f e r e n c e s��   : m      G G�                                                                                  sevs  alis    �  Macintosh HD               �R�H+     2System Events.app                                               �^�2�7        ����  	                CoreServices    �S!�      �2�w       2   &   %  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   8  H�� H L     I I o    ���� 0 alldisplays allDisplays��   3  J K J l     ��������  ��  ��   K  L M L l     �� N O��   N 9 3 This function simply clicks the pop-up button that    O � P P f   T h i s   f u n c t i o n   s i m p l y   c l i c k s   t h e   p o p - u p   b u t t o n   t h a t M  Q R Q l     �� S T��   S 7 1 controls rotation, and selects the next in order    T � U U b   c o n t r o l s   r o t a t i o n ,   a n d   s e l e c t s   t h e   n e x t   i n   o r d e r R  V W V l     �� X Y��   X . ( (either clockwise or counter-clockwise)    Y � Z Z P   ( e i t h e r   c l o c k w i s e   o r   c o u n t e r - c l o c k w i s e ) W  [ \ [ i   
  ] ^ ] I      �� _���� 0 
setdisplay 
setDisplay _  `�� ` o      ���� 0 thisdisplay thisDisplay��  ��   ^ k     � a a  b c b r      d e d m     ��
�� boovfals e o      ���� 0 	rotatable   c  f�� f O    � g h g k    � i i  j k j e     l l 1    ��
�� 
pALL k  m�� m O    � n o n k    � p p  q r q O    � s t s O    � u v u k   " � w w  x y x I  " *�� z��
�� .prcsclicnull��� ��� uiel z 4   " &�� {
�� 
radB { m   $ % | | � } }  D i s p l a y��   y  ~�� ~ O   + �  �  Q   2 � � � � � k   5 � � �  � � � I  5 =�� ���
�� .prcsclicnull��� ��� uiel � 4   5 9�� �
�� 
popB � m   7 8���� ��   �  � � � O   > � � � � k   E � � �  � � � Y   E g ��� � ��� � Z   O b � ����� � =  O Z � � � n   O X � � � 1   V X��
�� 
selE � n   O V � � � 4   S V�� �
�� 
menI � o   T U���� 0 rotationvalue rotationValue � 4   O S�� �
�� 
menE � m   Q R����  � m   X Y��
�� boovtrue �  S   ] ^��  ��  �� 0 rotationvalue rotationValue � m   H I����  � m   I J���� ��   �  � � � l  h h��������  ��  ��   �  � � � Z   h � � ��� � � =  h o � � � o   h i���� 0 rotationvalue rotationValue � o   i n���� 0 	rotationa 	rotationA � r   r y � � � o   r w���� 0 	rotationb 	rotationB � o      ����  0 rotatemenuitem rotateMenuItem��   � r   | � � � � o   | ����� 0 	rotationa 	rotationA � o      ����  0 rotatemenuitem rotateMenuItem �  ��� � I  � ��� ���
�� .prcsclicnull��� ��� uiel � n   � � � � � 4   � ��� �
�� 
menI � o   � �����  0 rotatemenuitem rotateMenuItem � 4   � ��� �
�� 
menE � m   � ����� ��  ��   � 4   > B�� �
�� 
popB � m   @ A����  �  � � � l  � ��� � ���   � F @ If "Standard" is selected, no confirmation dialog is displayed.    � � � � �   I f   " S t a n d a r d "   i s   s e l e c t e d ,   n o   c o n f i r m a t i o n   d i a l o g   i s   d i s p l a y e d . �  ��� � Z   � � � ����� � >  � � � � � o   � �����  0 rotatemenuitem rotateMenuItem � m   � �����  � r   � � � � � m   � ���
�� boovtrue � o      ���� 0 	rotatable  ��  ��  ��   � R      ������
�� .ascrerr ****      � ****��  ��   � I  � ��� ���
�� .ascrcmnt****      � **** � m   � � � � � � � | C a n ' t   r o t a t e   d i s p l a y .   I t   m a y   b e   t h e   l a p t o p ' s   b u i l t   i n   d i s p l a y .��   � 4   + /�� �
�� 
sgrp � m   - .���� ��   v 4    �� �
�� 
tabg � m    ����  t 4    �� �
�� 
cwin � o    ���� 0 thisdisplay thisDisplay r  ��� � Z   � � � ����� � o   � ����� 0 	rotatable   � k   � � � �  � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � ����� ��   �  � � � l  � ��� � ���   � U O After rotation, for some reason the confirmation dialog is always in window 1.    � � � � �   A f t e r   r o t a t i o n ,   f o r   s o m e   r e a s o n   t h e   c o n f i r m a t i o n   d i a l o g   i s   a l w a y s   i n   w i n d o w   1 . �  ��� � O   � � � � � O   � � � � � I  � ��� ���
�� .prcsclicnull��� ��� uiel � 4   � ��� �
�� 
butT � m   � � � � � � �  C o n f i r m��   � 4   � ��� �
�� 
sheE � m   � �����  � 4   � ��� �
�� 
cwin � m   � ����� ��  ��  ��  ��   o 4    �� �
�� 
prcs � m     � � � � � $ S y s t e m   P r e f e r e n c e s��   h m     � ��                                                                                  sevs  alis    �  Macintosh HD               �R�H+     2System Events.app                                               �^�2�7        ����  	                CoreServices    �S!�      �2�w       2   &   %  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��   \  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � $  the "main" part of the script    � � � � <   t h e   " m a i n "   p a r t   o f   t h e   s c r i p t �  � � � l     �� � ���   �   Prompt for change:    � � � � &   P r o m p t   f o r   c h a n g e : �  � � � l     �� � ���   � � �set rotationValue to the button returned of (display dialog "Pick your rotation" with title "Rotation" buttons {"Standard", "270"} default button 1)    � � � �( s e t   r o t a t i o n V a l u e   t o   t h e   b u t t o n   r e t u r n e d   o f   ( d i s p l a y   d i a l o g   " P i c k   y o u r   r o t a t i o n "   w i t h   t i t l e   " R o t a t i o n "   b u t t o n s   { " S t a n d a r d " ,   " 2 7 0 " }   d e f a u l t   b u t t o n   1 ) �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � "  activate System Preferences    � � � � 8   a c t i v a t e   S y s t e m   P r e f e r e n c e s �  � � � l     ���~ � O      � � � k     � �  � � � I   	�}�|�{
�} .miscactvnull��� ��� null�|  �{   �  ��z � r   
  �  � 4   
 �y
�y 
xppb m     � : c o m . a p p l e . p r e f e r e n c e . d i s p l a y s  1    �x
�x 
xpcp�z   � m     �                                                                                  sprf  alis    ~  Macintosh HD               �R�H+     �System Preferences.app                                          ���AN?        ����  	                Applications    �S!�      �A�       �  1Macintosh HD:Applications: System Preferences.app   .  S y s t e m   P r e f e r e n c e s . a p p    M a c i n t o s h   H D  #Applications/System Preferences.app   / ��  �  �~   �  l     �w�v�u�w  �v  �u    l     �t�s�r�t  �s  �r   	
	 l     �q�q   2 , get all the display preference pane windows    � X   g e t   a l l   t h e   d i s p l a y   p r e f e r e n c e   p a n e   w i n d o w s
  l     �p�p   , & and rotate each corresponding display    � L   a n d   r o t a t e   e a c h   c o r r e s p o n d i n g   d i s p l a y  l   �o�n r     n    I    �m�l�k�m 0 getdisplays getDisplays�l  �k    f     o      �j�j 0 alldisplays allDisplays�o  �n    l   4�i�h Y    4�g�f n  ) / !  I   * /�e"�d�e 0 
setdisplay 
setDisplay" #�c# o   * +�b�b 0 i  �c  �d  !  f   ) *�g 0 i   m     �a�a  n     $$%$ 1   ! #�`
�` 
leng% o     !�_�_ 0 alldisplays allDisplays�f  �i  �h   &'& l     �^�]�\�^  �]  �\  ' ()( l     �[*+�[  *   quit system preferences   + �,, 0   q u i t   s y s t e m   p r e f e r e n c e s) -�Z- l  5 ?.�Y�X. O   5 ?/0/ I  9 >�W�V�U
�W .aevtquitnull��� ��� null�V  �U  0 m   5 611�                                                                                  sprf  alis    ~  Macintosh HD               �R�H+     �System Preferences.app                                          ���AN?        ����  	                Applications    �S!�      �A�       �  1Macintosh HD:Applications: System Preferences.app   .  S y s t e m   P r e f e r e n c e s . a p p    M a c i n t o s h   H D  #Applications/System Preferences.app   / ��  �Y  �X  �Z       �T2�S�R345�T  2 �Q�P�O�N�M�Q 0 	rotationa 	rotationA�P 0 	rotationb 	rotationB�O 0 getdisplays getDisplays�N 0 
setdisplay 
setDisplay
�M .aevtoappnull  �   � ****�S �R 3 �L 5�K�J67�I�L 0 getdisplays getDisplays�K  �J  6 �H�H 0 alldisplays allDisplays7  G�G�F E�E
�G 
pALL
�F 
prcs
�E 
cwin�I � *�,EO*��/ *�-E�UUO�4 �D ^�C�B89�A�D 0 
setdisplay 
setDisplay�C �@:�@ :  �?�? 0 thisdisplay thisDisplay�B  8 �>�=�<�;�> 0 thisdisplay thisDisplay�= 0 	rotatable  �< 0 rotationvalue rotationValue�;  0 rotatemenuitem rotateMenuItem9  ��:�9 ��8�7�6 |�5�4�3�2�1�0�/�.�- ��,�+�*�) �
�: 
pALL
�9 
prcs
�8 
cwin
�7 
tabg
�6 
radB
�5 .prcsclicnull��� ��� uiel
�4 
sgrp
�3 
popB�2 
�1 
menE
�0 
menI
�/ 
selE�.  �-  
�, .ascrcmnt****      � ****
�+ .sysodelanull��� ��� nmbr
�* 
sheE
�) 
butT�A �fE�O� �*�,EO*��/ �*�/ �*�k/ �*��/j O*�k/ } n*�m/j O*�m/ L !k�kh *�k/��/�,e  Y h[OY��O�b     b  E�Y 	b   E�O*�k/��/j UO�k eE�Y hW X  a j UUUO� )mj O*�k/ *a k/ *a a /j UUY hUU5 �(;�'�&<=�%
�( .aevtoappnull  �   � ****; k     ?>>  �?? @@ AA -�$�$  �'  �&  < �#�# 0 i  = 
�"�!� �����
�" .miscactvnull��� ��� null
�! 
xppb
�  
xpcp� 0 getdisplays getDisplays� 0 alldisplays allDisplays
� 
leng� 0 
setdisplay 
setDisplay
� .aevtquitnull��� ��� null�% @� *j O*��/*�,FUO)j+ E�O k��,Ekh  )�k+ [OY��O� *j 	Uascr  ��ޭ