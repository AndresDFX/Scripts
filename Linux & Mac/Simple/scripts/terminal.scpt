FasdUAS 1.101.10   ��   ��    k             l     ��  ��    K E---------------------------------------------------------------------     � 	 	 � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   
  
 l     ��  ��    H B A Script that opens a specified command line folder name in a new     �   �   A   S c r i p t   t h a t   o p e n s   a   s p e c i f i e d   c o m m a n d   l i n e   f o l d e r   n a m e   i n   a   n e w      l     ��  ��      terminal tab.     �      t e r m i n a l   t a b .      l     ��������  ��  ��        l     ��  ��    + % Composed by Matthew McCullough, 2010     �   J   C o m p o s e d   b y   M a t t h e w   M c C u l l o u g h ,   2 0 1 0      l     ��  ��    !  MIT License. Share freely.     �   6   M I T   L i c e n s e .   S h a r e   f r e e l y .     !   l     �� " #��   " K E---------------------------------------------------------------------    # � $ $ � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - !  % & % l     �� ' (��   '  Reference for tab opening    ( � ) ) 2 R e f e r e n c e   f o r   t a b   o p e n i n g &  * + * l     �� , -��   , R L http://lambie.org/2007/11/03/tabs-in-terminal-using-applescript-on-leopard/    - � . . �   h t t p : / / l a m b i e . o r g / 2 0 0 7 / 1 1 / 0 3 / t a b s - i n - t e r m i n a l - u s i n g - a p p l e s c r i p t - o n - l e o p a r d / +  / 0 / l     �� 1 2��   1 < 6Reference for other scripting approaches with Terminal    2 � 3 3 l R e f e r e n c e   f o r   o t h e r   s c r i p t i n g   a p p r o a c h e s   w i t h   T e r m i n a l 0  4 5 4 l     �� 6 7��   6 2 , http://www.entropy.ch/software/applescript/    7 � 8 8 X   h t t p : / / w w w . e n t r o p y . c h / s o f t w a r e / a p p l e s c r i p t / 5  9 : 9 l     �� ; <��   ; G A http://forums.macosxhints.com/showthread.php?p=426240#post426240    < � = = �   h t t p : / / f o r u m s . m a c o s x h i n t s . c o m / s h o w t h r e a d . p h p ? p = 4 2 6 2 4 0 # p o s t 4 2 6 2 4 0 :  > ? > l     �� @ A��   @ B < http://octidextro.us/2008/01/11/openterminalhereapp-update/    A � B B x   h t t p : / / o c t i d e x t r o . u s / 2 0 0 8 / 0 1 / 1 1 / o p e n t e r m i n a l h e r e a p p - u p d a t e / ?  C D C l     �� E F��   E K E---------------------------------------------------------------------    F � G G � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - D  H I H i      J K J I     �� L��
�� .aevtoappnull  �   � **** L o      ���� 0 argv  ��   K k     r M M  N O N l     �� P Q��   P 4 .log "Item 1: " & item 1 of argv -- Folder path    Q � R R \ l o g   " I t e m   1 :   "   &   i t e m   1   o f   a r g v   - -   F o l d e r   p a t h O  S T S l     U V W U r      X Y X n      Z [ Z 4    �� \
�� 
cobj \ m    ����  [ o     ���� 0 argv   Y o      ���� 0 
foldername 
folderName V   Folder path    W � ] ]    F o l d e r   p a t h T  ^ _ ^ I   �� `��
�� .ascrcmnt****      � **** ` b    
 a b a m     c c � d d  F o l d e r   N a m e :   b o    	���� 0 
foldername 
folderName��   _  e�� e O    r f g f k    q h h  i j i I   ������
�� .miscactvnull��� ��� null��  ��   j  k l k r    * m n m 6   ( o p o n     q r q 1    ��
�� 
ID   r 4   �� s
�� 
cwin s m    ����  p =    ' t u t 1   ! #��
�� 
pisf u m   $ &��
�� boovtrue n o      ���� 0 	window_id   l  v w v l  + +�� x y��   x  repeat with i from 1 to 2    y � z z 2 r e p e a t   w i t h   i   f r o m   1   t o   2 w  { | { l  + +��������  ��  ��   |  } ~ } l  + +��  ���    > 8Two possible approaches for sending the New Tab command.    � � � � p T w o   p o s s i b l e   a p p r o a c h e s   f o r   s e n d i n g   t h e   N e w   T a b   c o m m a n d . ~  � � � l  + +�� � ���   � K EFirst is via a menu click, but requires knowing the New Tab type Name    � � � � � F i r s t   i s   v i a   a   m e n u   c l i c k ,   b u t   r e q u i r e s   k n o w i n g   t h e   N e w   T a b   t y p e   N a m e �  � � � l  + +�� � ���   � N HSecond just sends the keystroke and accepts the default user's tab style    � � � � � S e c o n d   j u s t   s e n d s   t h e   k e y s t r o k e   a n d   a c c e p t s   t h e   d e f a u l t   u s e r ' s   t a b   s t y l e �  � � � l  + +�� � ���   � > 8my menu_click({"Terminal", "Shell", "New Tab", "Basic"})    � � � � p m y   m e n u _ c l i c k ( { " T e r m i n a l " ,   " S h e l l " ,   " N e w   T a b " ,   " B a s i c " } ) �  � � � O   + 9 � � � I  / 8�� � �
�� .prcskprsnull���    utxt � m   / 0 � � � � �  t � �� ���
�� 
faal � J   1 4 � �  ��� � m   1 2��
�� eMdsKcmd��  ��   � m   + , � ��                                                                                  sevs  alis    �  Macintosh HD               �c�XH+   �System Events.app                                               =��7��        ����  	                CoreServices    �d�      �8'7     � �� ��  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � l  : :��������  ��  ��   �  � � � l  : K � � � � r   : K � � � b   : G � � � m   : = � � � � �  c d   � n   = F � � � 1   B F��
�� 
strq � l  = B ����� � c   = B � � � o   = >���� 0 
foldername 
folderName � m   > A��
�� 
TEXT��  ��   � o      ���� 0 commandtorun commandToRun � , &Quoted to handle spaces in foldernames    � � � � L Q u o t e d   t o   h a n d l e   s p a c e s   i n   f o l d e r n a m e s �  � � � l  L L�� � ���   �  set tabNum to i + 1    � � � � & s e t   t a b N u m   t o   i   +   1 �  � � � l  L L��������  ��  ��   �  � � � l  L L�� � ���   � 6 0set tab_id to index of first tab of first window    � � � � ` s e t   t a b _ i d   t o   i n d e x   o f   f i r s t   t a b   o f   f i r s t   w i n d o w �  � � � l  L L�� � ���   �  log "Tab id: " & tab_id    � � � � . l o g   " T a b   i d :   "   &   t a b _ i d �  � � � l  L L��������  ��  ��   �  � � � l  L L�� � ���   � [ Udo script commandToRun in tab tabNum of window id window_id of application "Terminal"    � � � � � d o   s c r i p t   c o m m a n d T o R u n   i n   t a b   t a b N u m   o f   w i n d o w   i d   w i n d o w _ i d   o f   a p p l i c a t i o n   " T e r m i n a l " �  � � � I  L ]�� � �
�� .coredoscnull��� ��� ctxt � o   L O���� 0 commandtorun commandToRun � �� ���
�� 
kfil � n   R Y � � � 5   S Y�� ���
�� 
cwin � o   T U���� 0 	window_id  
�� kfrmID   � m   R S � ��                                                                                      @ alis    j  Macintosh HD               �c�XH+   `�Terminal.app                                                    ���v�V        ����  	                	Utilities     �d�      �wG�     `�      0Macintosh HD:Applications:Utilities:Terminal.app    T e r m i n a l . a p p    M a c i n t o s h   H D  #Applications/Utilities/Terminal.app   / ��  ��   �  � � � I  ^ o�� � �
�� .coredoscnull��� ��� ctxt � m   ^ a � � � � �  c l e a r ; p w d � �� ���
�� 
kfil � n   d k � � � 5   e k�� ���
�� 
cwin � o   f g���� 0 	window_id  
�� kfrmID   � m   d e � ��                                                                                      @ alis    j  Macintosh HD               �c�XH+   `�Terminal.app                                                    ���v�V        ����  	                	Utilities     �d�      �wG�     `�      0Macintosh HD:Applications:Utilities:Terminal.app    T e r m i n a l . a p p    M a c i n t o s h   H D  #Applications/Utilities/Terminal.app   / ��  ��   �  ��� � l  p p�� � ���   �  
end repeat    � � � �  e n d   r e p e a t��   g m     � ��                                                                                      @ alis    j  Macintosh HD               �c�XH+   `�Terminal.app                                                    ���v�V        ����  	                	Utilities     �d�      �wG�     `�      0Macintosh HD:Applications:Utilities:Terminal.app    T e r m i n a l . a p p    M a c i n t o s h   H D  #Applications/Utilities/Terminal.app   / ��  ��   I  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 1 + `menu_click`, by Jacob Rus, September 2006    � � � � V   ` m e n u _ c l i c k ` ,   b y   J a c o b   R u s ,   S e p t e m b e r   2 0 0 6 �  � � � l     �� � ���   � E ? http://www.macosxhints.com/article.php?story=20060921045743404    � � � � ~   h t t p : / / w w w . m a c o s x h i n t s . c o m / a r t i c l e . p h p ? s t o r y = 2 0 0 6 0 9 2 1 0 4 5 7 4 3 4 0 4 �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � I C Accepts a list of form: `{"Finder", "View", "Arrange By", "Date"}`    � � � � �   A c c e p t s   a   l i s t   o f   f o r m :   ` { " F i n d e r " ,   " V i e w " ,   " A r r a n g e   B y " ,   " D a t e " } ` �  � � � l     �� � ���   � K E Execute the specified menu item.  In this case, assuming the Finder     � � � � �   E x e c u t e   t h e   s p e c i f i e d   m e n u   i t e m .     I n   t h i s   c a s e ,   a s s u m i n g   t h e   F i n d e r   �  � � � l     �� � ���   � I C is the active application, arranging the frontmost folder by date.    � � � � �   i s   t h e   a c t i v e   a p p l i c a t i o n ,   a r r a n g i n g   t h e   f r o n t m o s t   f o l d e r   b y   d a t e . �    i     I      ������ 0 
menu_click   �� o      ���� 0 mlist mList��  ��   k     T  q      		 ��
�� 0 appname appName
 ���� 0 topmenu topMenu ������ 0 r  ��    l     ��������  ��  ��    l     ����     Validate our input    � &   V a l i d a t e   o u r   i n p u t  Z    ���� A      n     1    ��
�� 
leng o     ���� 0 mlist mList m    ����  R    ����
�� .ascrerr ****      � **** m   
  � 8 M e n u   l i s t   i s   n o t   l o n g   e n o u g h��  ��  ��    l   ��������  ��  ��    !  l   ��"#��  " ; 5 Set these variables for clarity and brevity later on   # �$$ j   S e t   t h e s e   v a r i a b l e s   f o r   c l a r i t y   a n d   b r e v i t y   l a t e r   o n! %&% r    +'(' l   )����) n    *+* 7  ��,-
�� 
cobj, m    ���� - m    ���� + o    ���� 0 mlist mList��  ��  ( J      .. /0/ o      �� 0 appname appName0 1�~1 o      �}�} 0 topmenu topMenu�~  & 232 r   , ;454 l  , 96�|�{6 n   , 9787 7 - 9�z9:
�z 
cobj9 m   1 3�y�y : l  4 8;�x�w; n  4 8<=< 1   6 8�v
�v 
leng= o   4 6�u�u 0 mlist mList�x  �w  8 o   , -�t�t 0 mlist mList�|  �{  5 o      �s�s 0 r  3 >?> l  < <�r�q�p�r  �q  �p  ? @A@ l  < <�oBC�o  B A ; This overly-long line calls the menu_recurse function with   C �DD v   T h i s   o v e r l y - l o n g   l i n e   c a l l s   t h e   m e n u _ r e c u r s e   f u n c t i o n   w i t hA EFE l  < <�nGH�n  G > 8 two arguments: r, and a reference to the top-level menu   H �II p   t w o   a r g u m e n t s :   r ,   a n d   a   r e f e r e n c e   t o   t h e   t o p - l e v e l   m e n uF J�mJ O  < TKLK n  @ SMNM I   A S�lO�k�l 0 menu_click_recurse  O PQP o   A B�j�j 0 r  Q R�iR l  B OS�h�gS n  B OTUT l  L OV�f�eV 4   L O�dW
�d 
menEW o   M N�c�c 0 topmenu topMenu�f  �e  U n  B LXYX l  I LZ�b�aZ 4   I L�`[
�` 
mbri[ o   J K�_�_ 0 topmenu topMenu�b  �a  Y n  B I\]\ l 	 F I^�^�]^ l  F I_�\�[_ 4   F I�Z`
�Z 
mbar` m   G H�Y�Y �\  �[  �^  �]  ] l  B Fa�X�Wa 4   B F�Vb
�V 
prcsb o   D E�U�U 0 appname appName�X  �W  �h  �g  �i  �k  N  f   @ AL m   < =cc�                                                                                  sevs  alis    �  Macintosh HD               �c�XH+   �System Events.app                                               =��7��        ����  	                CoreServices    �d�      �8'7     � �� ��  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �m   ded l     �T�S�R�T  �S  �R  e fgf i    hih I      �Qj�P�Q 0 menu_click_recurse  j klk o      �O�O 0 mlist mListl m�Nm o      �M�M 0 parentobject parentObject�N  �P  i k     Hnn opo q      qq �Lr�L 0 f  r �K�J�K 0 r  �J  p sts l     �I�H�G�I  �H  �G  t uvu l     �Fwx�F  w , & `f` = first item, `r` = rest of items   x �yy L   ` f `   =   f i r s t   i t e m ,   ` r `   =   r e s t   o f   i t e m sv z{z r     |}| n     ~~ 4    �E�
�E 
cobj� m    �D�D  o     �C�C 0 mlist mList} o      �B�B 0 f  { ��� Z   "���A�@� ?    ��� n   
��� 1    
�?
�? 
leng� o    �>�> 0 mlist mList� m   
 �=�= � r    ��� l   ��<�;� n    ��� 7  �:��
�: 
cobj� m    �9�9 � l   ��8�7� n   ��� 1    �6
�6 
leng� o    �5�5 0 mlist mList�8  �7  � o    �4�4 0 mlist mList�<  �;  � o      �3�3 0 r  �A  �@  � ��� l  # #�2�1�0�2  �1  �0  � ��� l  # #�/���/  � < 6 either actually click the menu item, or recurse again   � ��� l   e i t h e r   a c t u a l l y   c l i c k   t h e   m e n u   i t e m ,   o r   r e c u r s e   a g a i n� ��.� O   # H��� Z   ' G���-�� =  ' ,��� n  ' *��� 1   ( *�,
�, 
leng� o   ' (�+�+ 0 mlist mList� m   * +�*�* � I  / 7�)��(
�) .prcsclicuiel    ��� uiel� n  / 3��� 4   0 3�'�
�' 
menI� o   1 2�&�& 0 f  � o   / 0�%�% 0 parentobject parentObject�(  �-  � n  : G��� I   ; G�$��#�$ 0 menu_click_recurse  � ��� o   ; <�"�" 0 r  � ��!� l  < C�� �� n  < C��� l  @ C���� 4   @ C��
� 
menE� o   A B�� 0 f  �  �  � n  < @��� l  = @���� 4   = @��
� 
menI� o   > ?�� 0 f  �  �  � o   < =�� 0 parentobject parentObject�   �  �!  �#  �  f   : ;� m   # $���                                                                                  sevs  alis    �  Macintosh HD               �c�XH+   �System Events.app                                               =��7��        ����  	                CoreServices    �d�      �8'7     � �� ��  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �.  g ��� l     ����  �  �  �       ���������  � ������

� .aevtoappnull  �   � ****� 0 
menu_click  � 0 menu_click_recurse  � 0 
foldername 
folderName� 0 	window_id  �
 0 commandtorun commandToRun� �	 K�����
�	 .aevtoappnull  �   � ****� 0 argv  �  � �� 0 argv  � �� c� ��� ������� � ������� ������������� �
� 
cobj� 0 
foldername 
folderName
� .ascrcmnt****      � ****
� .miscactvnull��� ��� null
�  
cwin
�� 
ID  �  
�� 
pisf�� 0 	window_id  
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���    utxt
�� 
TEXT
�� 
strq�� 0 commandtorun commandToRun
�� 
kfil
�� kfrmID  
�� .coredoscnull��� ��� ctxt� s��k/E�O��%j O� `*j O*�k/�,�[�,\Ze81E�O� ���kvl UOa �a &a ,%E` O_ a ���a 0l Oa a ���a 0l OPU� ������������ 0 
menu_click  �� ����� �  ���� 0 mlist mList��  � ���������� 0 mlist mList�� 0 appname appName�� 0 topmenu topMenu�� 0 r  � 	����c����������
�� 
leng
�� 
cobj
�� 
prcs
�� 
mbar
�� 
mbri
�� 
menE�� 0 menu_click_recurse  �� U��,m 	)j�Y hO�[�\[Zk\Zl2E[�k/E�Z[�l/E�ZO�[�\[Zm\Z��,2E�O� )�*�/�k/�/�/l+ U� ��i���������� 0 menu_click_recurse  �� ����� �  ������ 0 mlist mList�� 0 parentobject parentObject��  � ���������� 0 mlist mList�� 0 parentobject parentObject�� 0 f  �� 0 r  � �������������
�� 
cobj
�� 
leng
�� 
menI
�� .prcsclicuiel    ��� uiel
�� 
menE�� 0 menu_click_recurse  �� I��k/E�O��,k �[�\[Zl\Z��,2E�Y hO� "��,k  ��/j Y )���/�/l+ U� ��� d / A p p l i c a t i o n s / D e v / h a d o o p - f a m i l y / h a d o o p - 0 . 2 0 . 1 / c o n f��� ��� n c d   ' / A p p l i c a t i o n s / D e v / h a d o o p - f a m i l y / h a d o o p - 0 . 2 0 . 1 / c o n f ' ascr  ��ޭ