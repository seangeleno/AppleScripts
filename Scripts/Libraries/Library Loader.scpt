FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
Library Loader
v1.0
Dov Frankel, 2013

loadScript() handler originally from http://codemunki.com


*** Instructions ***

Copy the compiled version (.scpt) into your ~/Library/Scripts directory, and then include it in your scripts like so:

property LibLoader : load script file ((path to scripts folder from user domain as text) & "Library Loader.scpt")

You can load compiled scripts (.scpt) or plain text scripts (.applescript). Make sure, though, that your .applescript files are encoded as either Mac (what AppleScript Editor uses) UTF-8 (if you use another text editor). Any scripts loaded are expected to be installed into your Scripts directory. Use the line below to reference the script:

property LibName : LibLoader's loadScript("FolderName:SomeCoolScript.applescript")     � 	 	 
 L i b r a r y   L o a d e r 
 v 1 . 0 
 D o v   F r a n k e l ,   2 0 1 3 
 
 l o a d S c r i p t ( )   h a n d l e r   o r i g i n a l l y   f r o m   h t t p : / / c o d e m u n k i . c o m 
 
 
 * * *   I n s t r u c t i o n s   * * * 
 
 C o p y   t h e   c o m p i l e d   v e r s i o n   ( . s c p t )   i n t o   y o u r   ~ / L i b r a r y / S c r i p t s   d i r e c t o r y ,   a n d   t h e n   i n c l u d e   i t   i n   y o u r   s c r i p t s   l i k e   s o : 
 
 p r o p e r t y   L i b L o a d e r   :   l o a d   s c r i p t   f i l e   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   " L i b r a r y   L o a d e r . s c p t " ) 
 
 Y o u   c a n   l o a d   c o m p i l e d   s c r i p t s   ( . s c p t )   o r   p l a i n   t e x t   s c r i p t s   ( . a p p l e s c r i p t ) .   M a k e   s u r e ,   t h o u g h ,   t h a t   y o u r   . a p p l e s c r i p t   f i l e s   a r e   e n c o d e d   a s   e i t h e r   M a c   ( w h a t   A p p l e S c r i p t   E d i t o r   u s e s )   U T F - 8   ( i f   y o u   u s e   a n o t h e r   t e x t   e d i t o r ) .   A n y   s c r i p t s   l o a d e d   a r e   e x p e c t e d   t o   b e   i n s t a l l e d   i n t o   y o u r   S c r i p t s   d i r e c t o r y .   U s e   t h e   l i n e   b e l o w   t o   r e f e r e n c e   t h e   s c r i p t : 
 
 p r o p e r t y   L i b N a m e   :   L i b L o a d e r ' s   l o a d S c r i p t ( " F o l d e r N a m e : S o m e C o o l S c r i p t . a p p l e s c r i p t " )    
  
 l     ��������  ��  ��        i         I      �� ���� 0 
loadscript 
loadScript   ��  o      ���� (0 scriptrelativepath scriptRelativePath��  ��    k     �       l     ��������  ��  ��        l    
     r     
    c         n        I    ��  ���� 40 filealiasinscriptsfolder fileAliasInScriptsFolder    !�� ! o    ���� (0 scriptrelativepath scriptRelativePath��  ��     f       m    ��
�� 
ctxt  o      ���� $0 scriptfiletoload scriptFileToLoad    to be safe      � " "    t o   b e   s a f e     # $ # Q    � % & ' % r     ( ) ( I   �� *��
�� .sysoloadscpt        file * 4    �� +
�� 
alis + o    ���� $0 scriptfiletoload scriptFileToLoad��   ) o      ���� 0 scriptobject scriptObject & R      ���� ,
�� .ascrerr ****      � ****��   , �� -��
�� 
errn - d       . . m      �������   ' l    � / 0 1 / k     � 2 2  3 4 3 r     # 5 6 5 m     ! 7 7 � 8 8   6 o      ���� 0 
scripttext 
scriptText 4  9 : 9 Q   $ G ; < = ; k   ' 3 > >  ? @ ? l  ' '�� A B��   A ( " Try reading as Mac encoding first    B � C C D   T r y   r e a d i n g   a s   M a c   e n c o d i n g   f i r s t @  D�� D r   ' 3 E F E I  ' 1�� G H
�� .rdwrread****        **** G 4   ' +�� I
�� 
alis I o   ) *���� $0 scriptfiletoload scriptFileToLoad H �� J��
�� 
as   J m   , -��
�� 
ctxt��   F o      ���� 0 
scripttext 
scriptText��   < R      ���� K
�� .ascrerr ****      � ****��   K �� L��
�� 
errn L d       M M m      �������   = l  ; G N O P N k   ; G Q Q  R S R l  ; ;�� T U��   T   Finally try UTF-8    U � V V $   F i n a l l y   t r y   U T F - 8 S  W�� W r   ; G X Y X I  ; E�� Z [
�� .rdwrread****        **** Z 4   ; ?�� \
�� 
alis \ o   = >���� $0 scriptfiletoload scriptFileToLoad [ �� ]��
�� 
as   ] m   @ A��
�� 
utf8��   Y o      ���� 0 
scripttext 
scriptText��   O &   Error reading script's encoding    P � ^ ^ @   E r r o r   r e a d i n g   s c r i p t ' s   e n c o d i n g :  _ ` _ l  H H��������  ��  ��   `  a�� a Q   H � b c d b r   K ^ e f e I  K \�� g��
�� .sysodsct****        scpt g l  K X h���� h b   K X i j i b   K V k l k b   K T m n m b   K R o p o b   K P q r q b   K N s t s m   K L u u � v v  s c r i p t   s t o   L M��
�� 
ret  r l 	 N O w���� w o   N O���� 0 
scripttext 
scriptText��  ��   p l 	 P Q x���� x o   P Q��
�� 
ret ��  ��   n m   R S y y � z z  e n d   s c r i p t   l o   T U��
�� 
ret  j m   V W { { � | |  r e t u r n   s��  ��  ��   f o      ���� 0 scriptobject scriptObject c R      �� } ~
�� .ascrerr ****      � **** } o      ���� 0 e   ~ ��  �
�� 
errn  o      ���� 0 n   � �� � �
�� 
ptlr � o      ���� 0 p   � �� � �
�� 
erob � o      ���� 0 f   � �� ���
�� 
errt � o      ���� 0 t  ��   d k   f � � �  � � � I  f y�� ���
�� .sysodlogaskr        TEXT � b   f u � � � b   f q � � � b   f o � � � b   f k � � � l 	 f i ����� � m   f i � � � � � . E r r o r   r e a d i n g   l i b r a r y   
��  ��   � o   i j���� $0 scriptfiletoload scriptFileToLoad � m   k n � � � � �  
 
 � o   o p���� 0 e   � m   q t � � � � � > 
 
 P l e a s e   e n c o d e   a s   M a c   o r   U T F - 8��   �  ��� � R   z ��� � �
�� .ascrerr ****      � **** � o   � ����� 0 e   � �� � �
�� 
errn � o   ~ ���� 0 n   � �� � �
�� 
ptlr � o   � ����� 0 p   � �� � �
�� 
erob � o   � ����� 0 f   � �� ���
�� 
errt � o   � ����� 0 t  ��  ��  ��   0   text format script     1 � � � (   t e x t   f o r m a t   s c r i p t   $  � � � l  � ���������  ��  ��   �  ��� � L   � � � � o   � ����� 0 scriptobject scriptObject��     � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 40 filealiasinscriptsfolder fileAliasInScriptsFolder �  ��� � o      ���� (0 scriptrelativepath scriptRelativePath��  ��   � L      � � c      � � � l     ����� � b      � � � l    	 ����� � I    	�� � �
�� .earsffdralis        afdr � m     ��
�� afdrscr� � �� � �
�� 
from � m    ��
�� fldmfldu � �� ���
�� 
rtyp � m    ��
�� 
ctxt��  ��  ��   � o   	 
���� (0 scriptrelativepath scriptRelativePath��  ��   � m    ��
�� 
alis �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � &   Useful for testing this library    � � � � @   U s e f u l   f o r   t e s t i n g   t h i s   l i b r a r y �  ��� � l     � � ��   � M Gproperty StringsLib : loadScript("Libraries:Strings utf16.applescript")    � � � � � p r o p e r t y   S t r i n g s L i b   :   l o a d S c r i p t ( " L i b r a r i e s : S t r i n g s   u t f 1 6 . a p p l e s c r i p t " )��       �~ � � ��~   � �}�|�} 0 
loadscript 
loadScript�| 40 filealiasinscriptsfolder fileAliasInScriptsFolder � �{ �z�y � ��x�{ 0 
loadscript 
loadScript�z �w ��w  �  �v�v (0 scriptrelativepath scriptRelativePath�y   � 	�u�t�s�r�q�p�o�n�m�u (0 scriptrelativepath scriptRelativePath�t $0 scriptfiletoload scriptFileToLoad�s 0 scriptobject scriptObject�r 0 
scripttext 
scriptText�q 0 e  �p 0 n  �o 0 p  �n 0 f  �m 0 t   � �l�k�j�i�h � 7�g�f ��e u�d y {�c�b � � � ��a�`�_�^�]�\�l 40 filealiasinscriptsfolder fileAliasInScriptsFolder
�k 
ctxt
�j 
alis
�i .sysoloadscpt        file�h   � �[�Z�Y
�[ 
errn�Z�(�Y  
�g 
as  
�f .rdwrread****        **** � �X�W�V
�X 
errn�W�\�V  
�e 
utf8
�d 
ret 
�c .sysodsct****        scpt�b 0 e   � �U�T �
�U 
errn�T 0 n   � �S�R �
�S 
ptlr�R 0 p   � �Q�P �
�Q 
erob�P 0 f   � �O�N�M
�O 
errt�N 0 t  �M  
�a .sysodlogaskr        TEXT
�` 
errn
�_ 
ptlr
�^ 
erob
�] 
errt�\ �x �)�k+  �&E�O *�/j E�W wX  �E�O *�/��l E�W X  	*�/��l E�O ��%�%�%�%�%�%j E�W 1X  a �%a %�%a %j O)a �a �a �a �a �O� � �L ��K�J � ��I�L 40 filealiasinscriptsfolder fileAliasInScriptsFolder�K �H ��H  �  �G�G (0 scriptrelativepath scriptRelativePath�J   � �F�F (0 scriptrelativepath scriptRelativePath � �E�D�C�B�A�@�?�>
�E afdrscr�
�D 
from
�C fldmfldu
�B 
rtyp
�A 
ctxt�@ 
�? .earsffdralis        afdr
�> 
alis�I ������ �%�& ascr  ��ޭ