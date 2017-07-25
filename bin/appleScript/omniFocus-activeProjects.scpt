FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
? Veritrope.com
OmniFocus - Write Active Project List to Text File
VERSION 1.02
October 9, 2014

Project Status, Latest Updates, and Comments Collected at:
http://veritrope.com/code/omnifocus-write-active-project-list-to-text-file

// CHANGELOG:
1.02  Fix for OF2 Changes in Rich Text AppleScript
1.01  Fix for Projects not contained in folders.
1.00  Initial Release


// RECOMMENDED INSTALLATION INSTRUCTIONS:

FastScripts Installation (Optional, but recommended):
--Download and Install FastScripts from http://www.red-sweater.com/fastscripts/index.html
--Copy script or an Alias to ~/Library/Scripts/Applications/NAME OF APP
--Set up your keyboard shortcut
     � 	 	, 
%�   V e r i t r o p e . c o m 
 O m n i F o c u s   -   W r i t e   A c t i v e   P r o j e c t   L i s t   t o   T e x t   F i l e 
 V E R S I O N   1 . 0 2 
 O c t o b e r   9 ,   2 0 1 4 
 
 P r o j e c t   S t a t u s ,   L a t e s t   U p d a t e s ,   a n d   C o m m e n t s   C o l l e c t e d   a t : 
 h t t p : / / v e r i t r o p e . c o m / c o d e / o m n i f o c u s - w r i t e - a c t i v e - p r o j e c t - l i s t - t o - t e x t - f i l e 
 
 / /   C H A N G E L O G : 
 1 . 0 2     F i x   f o r   O F 2   C h a n g e s   i n   R i c h   T e x t   A p p l e S c r i p t 
 1 . 0 1     F i x   f o r   P r o j e c t s   n o t   c o n t a i n e d   i n   f o l d e r s . 
 1 . 0 0     I n i t i a l   R e l e a s e 
 
 
 / /   R E C O M M E N D E D   I N S T A L L A T I O N   I N S T R U C T I O N S : 
 
 F a s t S c r i p t s   I n s t a l l a t i o n   ( O p t i o n a l ,   b u t   r e c o m m e n d e d ) : 
 - - D o w n l o a d   a n d   I n s t a l l   F a s t S c r i p t s   f r o m   h t t p : / / w w w . r e d - s w e a t e r . c o m / f a s t s c r i p t s / i n d e x . h t m l 
 - - C o p y   s c r i p t   o r   a n   A l i a s   t o   ~ / L i b r a r y / S c r i p t s / A p p l i c a t i o n s / N A M E   O F   A P P 
 - - S e t   u p   y o u r   k e y b o a r d   s h o r t c u t 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l      ��  ��    g a 
======================================
// MAIN PROGRAM 
======================================
     �   �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   M A I N   P R O G R A M   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
      l     ��������  ��  ��        l    � ����  O     �    k    �       r        J    ����    o      ���� 0 list_projects list_Projects       r   	  ! " ! 1   	 ��
�� 
FCDo " o      ���� 0 odoc oDoc    # $ # r    ) % & % l   ' '���� ' n    ' ( ) ( 1   % '��
�� 
pnam ) l   % *���� * 6  % + , + n     - . - 2   ��
�� 
FCfx . o    ���� 0 odoc oDoc , F    $ / 0 / =    1 2 1 n    3 4 3 m    ��
�� 
FCAr 4  g     2 m    ��
�� 
msng 0 =   # 5 6 5 n    7 8 7 1    ��
�� 
FCPs 8  g     6 m     "��
�� FCPsFCPa��  ��  ��  ��   & o      ���� &0 nofolder_projects nofolder_Projects $  9 : 9 r   * F ; < ; l  * D =���� = n   * D > ? > 1   B D��
�� 
pnam ? l  * B @���� @ 6 * B A B A n   * - C D C 2  + -��
�� 
FCfx D o   * +���� 0 odoc oDoc B F   . A E F E =  / 8 G H G n   0 4 I J I 1   2 4��
�� 
FCHi J n  0 2 K L K m   0 2��
�� 
FCAr L  g   0 0 H m   5 7��
�� boovfals F =  9 @ M N M n  : < O P O 1   : <��
�� 
FCPs P  g   : : N m   = ?��
�� FCPsFCPa��  ��  ��  ��   < o      ���� "0 folder_projects folder_Projects :  Q R Q r   G L S T S b   G J U V U o   G H���� &0 nofolder_projects nofolder_Projects V o   H I���� "0 folder_projects folder_Projects T o      ���� 0 	projnames 	projNames R  W X W l  M M�� Y Z��   Y   SORT THE LIST     Z � [ [    S O R T   T H E   L I S T   X  \ ] \ r   M W ^ _ ^ n  M S ` a ` I   N S�� b���� 0 simple_sort   b  c�� c o   N O���� 0 	projnames 	projNames��  ��   a  f   M N _ o      ���� "0 projects_sorted projects_Sorted ]  d e d l  X X��������  ��  ��   e  f g f l  X X�� h i��   h   CONVERT LIST TO TEXT    i � j j *   C O N V E R T   L I S T   T O   T E X T g  k l k r   X c m n m n  X _ o p o 1   [ _��
�� 
txdl p 1   X [��
�� 
ascr n o      ���� 0 	old_delim   l  q r q r   d o s t s o   d g��
�� 
ret  t n      u v u 1   j n��
�� 
txdl v 1   g j��
�� 
ascr r  w x w r   p { y z y c   p w { | { o   p s���� "0 projects_sorted projects_Sorted | m   s v��
�� 
ctxt z o      ���� "0 projects_sorted projects_Sorted x  } ~ } r   | �  �  o   | ���� 0 	old_delim   � n      � � � 1   � ���
�� 
txdl � 1    ���
�� 
ascr ~  � � � r   � � � � � c   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � @ C u r r e n t   L i s t   o f   A c t i v e   P r o j e c t s : � o   � ���
�� 
ret  � l  � � ����� � I  � �������
�� .misccurdldt    ��� null��  ��  ��  ��   � o   � ���
�� 
ret  � o   � ���
�� 
ret  � o   � ����� "0 projects_sorted projects_Sorted � m   � ���
�� 
utxt � o      ���� 0 
exportlist 
ExportList �  � � � r   � � � � � I  � ����� �
�� .sysonwflfile    ��� null��   � �� � �
�� 
prmt � m   � � � � � � �  N a m e   t h i s   f i l e � �� � �
�� 
dfnm � b   � � � � � m   � � � � � � � B L i s t   o f   A c t i v e   O m n i F o c u s   P r o j e c t s � l 	 � � ����� � m   � � � � � � �  . t x t��  ��   � �� ���
�� 
dflc � l  � � ����� � I  � ��� ���
�� .earsffdralis        afdr � m   � ���
�� afdmdesk��  ��  ��  ��   � o      ���� 0 fn   �  � � � O   � � � � � k   � � � �  � � � r   � � � � � I  � ��� � �
�� .rdwropenshor       file � o   � ����� 0 fn   � �� ���
�� 
perm � m   � ���
�� boovtrue��   � o      ���� 0 fid   �  � � � I  � ��� � �
�� .rdwrwritnull���     **** � o   � ����� 0 
exportlist 
ExportList � �� ���
�� 
refn � o   � ����� 0 fid  ��   �  ��� � I  � ��� ���
�� .rdwrclosnull���     **** � o   � ����� 0 fid  ��  ��   � m   � � � ��                                                                                  sevs  alis    �  Macintosh HD               �R�H+     2System Events.app                                               �^�2�7        ����  	                CoreServices    �S!�      �2�w       2   &   %  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  ��� � l  � ���������  ��  ��  ��    m      � ��                                                                                  OFOC  alis    �  Macintosh HD               �R�H+   ^_�OmniFocus.app                                                   �����        ����  	                2.2     �S!�      ��S�     ^_� ^_� G} G| 6  HMacintosh HD:opt: homebrew-cask: Caskroom: omnifocus: 2.2: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  6opt/homebrew-cask/Caskroom/omnifocus/2.2/OmniFocus.app  / ��  ��  ��     � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � n h 
======================================
// UTILITY SUBROUTINES 
======================================
    � � � � �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   U T I L I T Y   S U B R O U T I N E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  SORT SUBROUTINE    � � � �  S O R T   S U B R O U T I N E �  ��� � i      � � � I      �� ����� 0 simple_sort   �  ��� � o      ���� 0 my_list  ��  ��   � k     u � �  � � � r      � � � J     ��   � l      ��~�} � o      �|�| 0 
index_list  �~  �}   �  � � � r    	 � � � J    �{�{   � l      ��z�y � o      �x�x 0 sorted_list  �z  �y   �  � � � U   
 r � � � k    m � �  � � � r     � � � m     � � � � �   � l      ��w�v � o      �u�u 0 low_item  �w  �v   �  � � � Y    c ��t � ��s � Z   ) ^ � ��r�q � H   ) - � � E  ) , � � � l  ) * ��p�o � o   ) *�n�n 0 
index_list  �p  �o   � o   * +�m�m 0 i   � k   0 Z � �  � � � r   0 8 � � � c   0 6 � � � n   0 4 �  � 4   1 4�l
�l 
cobj o   2 3�k�k 0 i    o   0 1�j�j 0 my_list   � m   4 5�i
�i 
ctxt � o      �h�h 0 	this_item   � �g Z   9 Z�f =  9 < l  9 :�e�d o   9 :�c�c 0 low_item  �e  �d   m   : ;		 �

   k   ? F  r   ? B o   ? @�b�b 0 	this_item   l     �a�` o      �_�_ 0 low_item  �a  �`   �^ r   C F o   C D�]�] 0 i   l     �\�[ o      �Z�Z 0 low_item_index  �\  �[  �^    A I L o   I J�Y�Y 0 	this_item   l  J K�X�W o   J K�V�V 0 low_item  �X  �W   �U k   O V  r   O R o   O P�T�T 0 	this_item   l      �S�R  o      �Q�Q 0 low_item  �S  �R   !�P! r   S V"#" o   S T�O�O 0 i  # l     $�N�M$ o      �L�L 0 low_item_index  �N  �M  �P  �U  �f  �g  �r  �q  �t 0 i   � m    �K�K  � l   $%�J�I% n    $&'& m   ! #�H
�H 
nmbr' n   !()( 2   !�G
�G 
cobj) o    �F�F 0 my_list  �J  �I  �s   � *+* r   d h,-, l  d e.�E�D. o   d e�C�C 0 low_item  �E  �D  - l     /�B�A/ n      010  ;   f g1 o   e f�@�@ 0 sorted_list  �B  �A  + 2�?2 r   i m343 l  i j5�>�=5 o   i j�<�< 0 low_item_index  �>  �=  4 l     6�;�:6 n      787  ;   k l8 l  j k9�9�89 o   j k�7�7 0 
index_list  �9  �8  �;  �:  �?   � l   :�6�5: l   ;�4�3; n    <=< m    �2
�2 
nmbr= n   >?> 2   �1
�1 
cobj? o    �0�0 0 my_list  �4  �3  �6  �5   � @�/@ L   s uAA l  s tB�.�-B o   s t�,�, 0 sorted_list  �.  �-  �/  ��       �+CDE�+  C �*�)�* 0 simple_sort  
�) .aevtoappnull  �   � ****D �( ��'�&FG�%�( 0 simple_sort  �' �$H�$ H  �#�# 0 my_list  �&  F �"�!� �����" 0 my_list  �! 0 
index_list  �  0 sorted_list  � 0 low_item  � 0 i  � 0 	this_item  � 0 low_item_index  G �� ��	
� 
cobj
� 
nmbr
� 
ctxt�% vjvE�OjvE�O g��-�,Ekh�E�O Hk��-�,Ekh �� /��/�&E�O��  �E�O�E�Y �� �E�O�E�Y hY h[OY��O��6FO��6F[OY��O�E �I��JK�
� .aevtoappnull  �   � ****I k     �LL  ��  �  �  J  K , �����M������
�	���������  ��������� ��� � ������������� �������������� 0 list_projects list_Projects
� 
FCDo� 0 odoc oDoc
� 
FCfxM  
� 
FCAr
� 
msng
� 
FCPs
� FCPsFCPa
� 
pnam�
 &0 nofolder_projects nofolder_Projects
�	 
FCHi� "0 folder_projects folder_Projects� 0 	projnames 	projNames� 0 simple_sort  � "0 projects_sorted projects_Sorted
� 
ascr
� 
txdl� 0 	old_delim  
� 
ret 
�  
ctxt
�� .misccurdldt    ��� null
�� 
utxt�� 0 
exportlist 
ExportList
�� 
prmt
�� 
dfnm
�� 
dflc
�� afdmdesk
�� .earsffdralis        afdr�� 
�� .sysonwflfile    ��� null�� 0 fn  
�� 
perm
�� .rdwropenshor       file�� 0 fid  
�� 
refn
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****� � �jvE�O*�,E�O��-�[[�,\Z�8\[�,\Z�8A1�,E�O��-�[[�,�,\Zf8\[�,\Z�8A1�,E�O��%E�O)�k+ E` O_ a ,E` O_ _ a ,FO_ a &E` O_ _ a ,FOa _ %*j %_ %_ %_ %a &E` O*a a a a a %a a  j !a " #E` $Oa % '_ $a &el 'E` (O_ a )_ (l *O_ (j +UOPUascr  ��ޭ