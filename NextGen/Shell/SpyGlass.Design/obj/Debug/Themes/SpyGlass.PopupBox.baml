   M S B A M L   `   `   `  ����J  FSpyGlass.Design, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:SpyGlass.Design.WpfSpyGlass.Design.Wpf  5      O,clr-namespace:SpyGlass.Design.Wpf.ConvertersSpyGlass.Design.Wpf.Converters  5      'clr-namespace:ControlzEx
ControlzEx  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� Source �� 
TargetType   PopupBoxButton �� Property �� Value  Body �� 
TargetType'   !System.Windows.VisualStateManager    VisualStateGroups%  System.Windows.VisualStateGroup   Name   Transitions%  System.Windows.VisualTransition	   GeneratedDuration	
   To   GeneratedEasingFunction/  )System.Windows.Media.Animation.CircleEase7  1System.Windows.Media.Animation.EasingFunctionBase   
EasingMode   States   System.Windows.VisualState   Name   
Storyboard �� 
TargetName �� TargetProperty	 W� To g� Duration ��Name J� Opacity  BrushRoundConverter �� 	Converter    SpyGlass.Design.Wpf.Ripple J� SnapsToDevicePixels   Feedback   BooleanToVisibilityConverterB   <SpyGlass.Design.Wpf.Converters.NullableToVisibilityConverter  NullVisibilityConverter # InvertedNullVisibilityConverter   	NullValue   NotNullValue8   2SpyGlass.Design.Wpf.Converters.BrushRoundConverter"	   SpyGlass.Design.Wpf.PackIcon�
   �ControlzEx.PackIconBase`1[[SpyGlass.Design.Wpf.PackIconKind, SpyGlass.Design, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] 
  Kind  PopupBoxToggleContent �� RelativeSource �� AncestorType �� Path"   SpyGlass.Design.Wpf.PopupBox  PopupBox&    SpyGlass.Design.Wpf.RippleAssist  FlatButtonRipple&    SpyGlass.Design.Wpf.ShadowAssist � 	Resources 	 	Separator  �� BasedOn 
 Key!   
IsCentered" d�Name  ToggleButtonStyle#   ToggleContent$   ToggleContentTemplate% � Cursor& d� 	IsChecked' �� Mode   ControlzEx.PopupEx(  Name) � HorizontalOffset* � VerticalOffset+ � AllowsTransparency#, � CustomPopupPlacementCallback- � PlacementTarget. �� ElementName   SpyGlass.Design.Wpf.Card/   PopupContent0   PopupContentTemplate1 �� ClearTypeHint2 � 	Resources3 �� Triggers4 P� Property5 P� Value  ToolPopupBox  ToolForeground  ToolForegroundPopupBox # MultiFloatingActionPopupBoxIcon  MultiFloatingActionPopupBox  PrimaryHueMidBrush   PrimaryHueMidForegroundBrush  ToolTip6 �Name7   From8   
Storyboard9 W� EasingFunction2  ,System.Windows.Media.Animation.QuadraticEase: J� 	CacheMode; A�Name< J� Effect4   .SpyGlass.Design.Wpf.Converters.ShadowConverter=   Instance> �� 	Converter? J� Clip@ J� RenderTransformOriginA �� AngleB J� IsHitTestVisibleC �� 
TargetName+   %SpyGlass.Design.Wpf.PopupBoxPopupModeD   	MouseOverE �� ValueF �� BindingG   MouseOverEager-  'System.Windows.Media.Animation.SineEaseH � ToolTipI ^� 	PlacementJ ��NameK   ToggleCheckedContent#L   ToggleCheckedContentTemplate ! FloatingActionMiniLightButtonM N� EnterActions  OpenN N� ExitActions 	 CloseO ]� 
ConditionsP �� PropertyQ �� ValueR �� Triggers $  MultiFloatingActionLightPopupBox  PrimaryHueLightBrush " PrimaryHueLightForegroundBrush # MultiFloatingActionDarkPopupBox  PrimaryHueDarkBrush ! PrimaryHueDarkForegroundBrush % !MultiFloatingActionAccentPopupBox  SecondaryAccentBrush " SecondaryAccentForegroundBrush�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      )wpf!clr-namespace:SpyGlass.Design.Wpf  5      ;
converters,clr-namespace:SpyGlass.Design.Wpf.Converters  5      '
controlzExclr-namespace:ControlzEx  5        5      �� 5   
   $R Lpack://application:,,,/SpyGlass.Design;component/Themes/SpyGlass.Button.xaml?�6   �� 5	   
   $P Jpack://application:,,,/SpyGlass.Design;component/Themes/SpyGlass.Menu.xaml?�6   �� 5
   
   $S Mpack://application:,,,/SpyGlass.Design;component/Themes/SpyGlass.ToolTip.xaml?�6   %�)  &	        7  7  &	 E    &	 X    &	 k    &	 �    &	 �   &	 Y    7  7 	 7  7   &	 �    7  &	 6    7  &	 �   &	 :    7  7  7  7  7  7  7  7  7  7  7  &	 2'    7  &	 �'    7  &	 P(    7  �� 5      " ��6   .�5   
   ��  � ��$ Bottom=�65   �� 5   
    � ��$
 Left=�67   �� 5   
    � ��$ 
16 0 16 16q�6$   �� 5   
    � ��# �  6'   �� 5   
    � �� 5      �� 5      " ��6"   .R�5      �  5        5      $ CommonStates��6/    5   "     5   &   $	 0:0:0.3D�67   $
 Normal��6S    5   *     5   .   $ EaseOut=�69   5   '   . 5   "     $ Normal��6.     5    "   $ 	MouseOver��6.   . 5!   &   �� .��5"   *   W� $ MouseOverBorder��6:   $ Opacity�6b   $	 0.1X�6�   $ 0D�6�   5#   '   5$   #     5%   "   $ Disabled��6.   . 5&   &   �� .��5'   *   W� $ Opacity�6:   $
 0.48X�6^   $ 0D�6h   5(   '   5)   #   5*      .+�5,      �� $ MouseOverBorder��6!   $ 0Q�6:   ��6F   �� *
Foreground+8     5-      |�.  $��48��5/   %   #��z��50   %   #��z��51   %   #��z��52   %   # z 53   %   #��z��54   %   #��z��55   %   #��z��56   %    5-   %   �� *
Foreground+8  56   %   57      58      5:      5;      �� 5=      6#     5>      6/     5?      $ Visible=�6W   $ 	Collapsed=�6k     5@      6%   	  5B      $ DotsVertical=�6   $��4 0 4 0q�6V   $��24��6g   $��24��6r   ��5C      ��  �� *FindAncestor+$ wpf:PopupBoxL�$ 
Foreground��� 5E      "  6   .�5F   
   ��  �@ ToggleContent8   6*   �� 5G   
    �@ Feedback# �  66   �� 5H   
    � ��$
 Left=�60   �� 5I   
    �@ ShadowDepth$ Depth3=�69   �� 5J   
    � ��$ Normal"�63   �� 5K   
    � ��$ 0 8 0 8q�6$   �� 5L   
    � |� . 6&   �� 5M   
    � �� 5N      �� 5O      "  6"    5P      ���� 5Q      '��       " ��6    8   67   �� 5R      'd�       " d�6    ToggleButtonStyle
 .�5S      ��  � �� 5T   "   �� 5U   &   " d�66   .R�5V   *     #��z��65   #��z��6Y   |�.  }�.  ! . #��z��5Y   5   #��z��5Z   5   #��z��5[   5   # z 5\   5   5]   '   5_      5`      5a      .R�5b      � .+�5c      d� $" PART_Toggle��6'   8�� #��z# 5d   '   #��z$ 6Q   $
% Hand��5e   '   #��z��65   $��Center=�6[   #��z��6v   & 5c   g   ��  �� *TemplatedParent+$ IsPopupOpen�$' TwoWay=�5e   v     5g      $( 
PART_Popup��6-   $) 5��5j   -   $* 5��5k   -   $��Custom=�5m   -   $
��Fade=�5n   -   + . ��5h   -   ��  �� *TemplatedParent+$ IsPopupOpen�$' TwoWay=�, 5i   -   ��  �� *TemplatedParent+$ PopupPlacementMethod�- 5l   -   �� $. PART_Toggle��.��5p        #��z/ 6'   #��z0 6P   #���  5q   '   $��15(�5r   '   $��Regular"�5s   '   #��z��5t   '   $1 Enabled=�5u   '   $��5q�5v   '   2 5w   "   ���� 5x   &   '��       " ��6,   8   6@   5y   #   5z      5{      5|      3 5}      P� 5~      4 � {�5 .  . �5      ��  �@J�Opacity$
 0.23Q�68   5�      5�      5�      5�      �� 5�      8    "  6E   .�5�   
   ��  � ��# �  6'   �� 5�   
    � ��$ 4q�6$   5�      �� 5�      8    "  6S   .�5�   
   ��  � �� 6'   ��  �� " �$ (TextElement.Foreground)�5�      	  5�      $
 Plus=�5�      $��24��6   $��24��6*   ��66   ��  �� *FindAncestor+$ wpf:PopupBoxL�$ 
Foreground��� 5�      "  6   .�5�   
   ��  � ��# �  6'   �� 5�   
    � ��# �  6(   �� 5�   
    � ��# �  6'   �� 5�   
    �@ Feedback
 �����66   �� 5�   
    �@ PlacementMode$ TopAndAlignCentres=�6*   �� 5�   
    �@ 	PopupMode$ MouseOverEager=�6&   �� 5�   
    �@^�	Placement$
 Left=�65   �� 5�   
    �@^�	IsEnabled .  65   �� 5�   
    � ��$
 Left=�60   �� 5�   
    � ��$ 1q�6,   �� 5�   
    �@�Cursor$
 Hand��6#   �� 5�   
    �@ ShadowDepth$ Depth2=�69   �� 5�   
    � ��$ 56��6"   �� 5�   
    � ��$ 56��6#   �� 5�   
    � |� .  6&   �� 5�   
    � �� 5�      �� 5�      "  6"    5�      ���� 5�      '_�       " _�6    8    �5�      �� 5�   "    � ��$ 	8 10 8 10q�6;   5�      �� 5�      'd�       " d�6    ToggleButtonStyle
 .�5�      ��  � �� 5�   "   �� 5�   &   " d�66   .R�5�   *   � $6 RootGrid��6/   ��6A   Z�  5�   .     5�   2   $ CheckedStates��6C    5�   6     5�   :   $7 *��6K   $
 Checked��6T   .8 5�   >   �� .��5�   B   W� $ ContentRotateTransform��6R   $ Angle�5�   R   $ 45X�5�   R   $ 0:0:0.1D�5�   R   9 5�   F     5�   J   $ 	EaseInOut=�6X   5�   C   5�   ?   5�   ;     5�   :   $7 Checked��6K   $
 	Unchecked��6Z   .8 5�   >   �� .��5�   B   W� $ ContentRotateTransform��6R   $ Angle�5�   R   $ 0X�5�   R   $ 0:0:0.1D�5�   R   9 5�   F     5�   J   $ 	EaseInOut=�6X   5�   C   5�   ?   5�   ;   . 5�   6     Checked��. 5�   :   �� .��5�   >   W� $ ContentRotateTransform��6N   $ Angle�5�   N   $ 45X�5�   N   $ 0D�5�   N   5�   ;   5�   7     5�   6   	Unchecked��. 5�   :   �� .��5�   >   W� $ ContentRotateTransform��6N   $ Angle�5�   N   $ 0X�5�   N   $ 0D�5�   N   5�   ;   5�   7   5�   3   .+�5�   .   �� : 6?   ��  �� *Self+$" (wpf:ShadowAssist.CacheMode)�.u�5�   2   A� $; border��5�   :   #��z��5�   :   #��z��6^   #��z��6�   < 5�   :   ��  �� *FindAncestor+$ wpf:PopupBoxL�$$ (wpf:ShadowAssist.ShadowDepth)�#> Z= 5�   3   5�   /     5�   .   |�.  }�. ! . #��z��5�   9   #��z��5�   9   #��z��5�   9   # z 5�   9   ? 5�   9   �� $. GeometryEllipse��$ RenderedGeometry�.��5�   2   �� #��z��6A   #��z��6e   $@ .5,.5&�5�   A   |�.  z�5�   6   �� 5�   :   ContentRotateTransform��$A 0Q�6j   5�   3   5�   /   A� 5�   .   $; GeometryEllipse��66   
������ B .  |�.  6{   5�   +   3 5�   *   P� 5�   .   4 � {�5 .  . �5�   2   ��  �@J�Opacity$
 0.23Q�6L   5�   /   P� 5�   .   4 �@J�IsMouseOver5 . . �5�   2   �� $C border��69    �@ Darken . 6p   5�   /   �� 5�   .   #E ZD 5�   :   F 5�   :   ��  �� *FindAncestor+$ wpf:PopupBoxL�$ 	PopupMode�.a�5�   2   �� $C RootGrid��69    � ��
 ���� 6e   5   /   �� 5  .   #E ZG 5  :   F 5  :   ��  �� *FindAncestor+$ wpf:PopupBoxL�$ 	PopupMode�.a�5  2   �� $C RootGrid��69    � ��
 ���� 6e   5  /   5  '   5     5	     �� 5
     Open
 .��5     W� $ PART_PopupContentControl��6.   $ Opacity�6_   $ 1X�5  .   $ 0:0:0.1D�65   9 5  "     5  &   $ 	EaseInOut=�6/   5     W� 5     $ ExplicitToggleContent��6.   $ Opacity�6\   $ 0X�5  .   $ 0:0:0.1D�65   9 5  "     5  &   $ 	EaseInOut=�6/   5     W� 5     $" ExplicitToggleCheckedContent��6.   $ Opacity�6c   $ 1X�5  .   $ 0:0:0.1D�65   9 5  "     5  &   $ 	EaseInOut=�6/   5     5     �� 5     	Close
 .��5     W� $ PART_PopupContentControl��6.   $ Opacity�6_   $ 0:0:0.8D�5   .   9 5!  "     5"  &   $ 	EaseInOut=�6/   5$     W� 5%     $ ExplicitToggleContent��6.   $ Opacity�6\   $ 1X�5&  .   $ 0:0:0.1D�65   9 5'  "     5(  &   $ 	EaseInOut=�6/   5*     W� 5+     $" ExplicitToggleCheckedContent��6.   $ Opacity�6c   $ 0X�5,  .   $ 0:0:0.1D�65   9 5-  "     5.  &   $ 	EaseInOut=�6/   50     51     52     .R�53     � .+�54     d� $" PART_Toggle��6'   8�� $
% Hand��56  '   #��z��57  '   #��z��58  '   #��z��59  '   #��z��5:  '   $��Stretch=�5;  '   $��Stretch=�5<  '   #H zH 5=  '   & 55  '   ��  �� *TemplatedParent+$ IsPopupOpen�$' TwoWay=�I 5>  '   ��  �� *FindAncestor+$ wpf:PopupBoxL�$  (ToolTipService.Placement)�.��5?     � .+�5@  "   �� $J StandardToggleContent��61   #��z# 6P   #��z$ 6z   |�.  y�5A  1   �� *ToggleCheckedContent+8  6�   �� 5B  "   $J ExplicitToggleContent��61   #��z# 6P   #��z$ 6z   |�.  y�5C  1   �� *ToggleCheckedContent+8  6�   �� 5D  "   $"J ExplicitToggleCheckedContent��61   #��zK 6W   #��zL 6�   $ 0Q�5F  1   $@ .5,.5&�5G  1   |�.  y�5E  1   �� *ToggleCheckedContent+8  z�5I  &   �� 5J  *   $	A -45Q�6:   5L  #   5M     5N       5O     $( 
PART_Popup��6-   ��.  $��Custom=�5S  +   $
��None=�5T  +   + . , 5Q  +   ��  �� *TemplatedParent+$ PopupPlacementMethod�- 5R  +   �� $. PART_Toggle��.��5V     � .+�5[  "   �� 
�������$ 0.002Q�6<   �� 5\  "   $J PART_PopupContentControl��5_  =   #��z/ 5\  1   #��z0 6Z   $��5q�5^  1   $��8q�6<   $ 0Q�5_  1   y�5]  1   �� *	IsEnabled+8  2 5`  &   �� 5a  *   �� 5b  .   '_�       " _�64   8   �5c  2   �� 5d  6    � ��$ 	16 4 16 4q�6O   5f  /   �� 5g  .   '��       " ��64   8   �5h  2   �� 5i  6    �@^�	Placement 6a   ��  �� *FindAncestor+$ wpf:PopupBoxL�$  (ToolTipService.Placement)��� 5j  6    �@^�InitialShowDelay$ 0��6h   �� 5k  6    � ��$ 4q�6O   5m  /   5n  +   5p  #   5q     5r     5s     3 5t     P� 5u     4 �@ IsPopupOpen5 . . �5v     �� $C 
PART_Popup��6%    � �� . 6O   M 5w     �� 5x  "   8�� 62   N 5z     �� 5{  "   8��	 62   5}     ]� 5~     O 5     �� 5�  "   P �@ 	PopupMode$Q MouseOverEager=�6A   �� 5�  "   P �@J�	IsVisibleQ . 6A   ./�5�     �� $C 
PART_Popup��6%    � �� . 6O   5�     5�     5�     �� 5�  
    �@ ToggleContent8 
 6*   R 5�  
   P� 5�     4 �@ UnfurlOrientation$5 
Horizontal=�63   . �5�     ��  �@^�	Placement$ Custom=�6=   5�     5�     �� 5�     "  6   8    .�5�  
   ��  � ��# �  6'   �� 5�  
    � ��# �  6(   �� 5�  
    � ��# �  6'   5�     �� 5�     "  6   8    .�5�  
   ��  � ��# �  6'   �� 5�  
    � ��# �  6(   �� 5�  
    � ��# �  6'   5�     �� 5�     "  6   8    .�5�  
   ��  � ��# �  6'   �� 5�  
    � ��# �  6(   �� 5�  
    � ��# �  6'   5�     5�     