   M S B A M L   `   `   `  ����J  FSpyGlass.Design, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:SpyGlass.Design.WpfSpyGlass.Design.Wpf  5      O,clr-namespace:SpyGlass.Design.Wpf.ConvertersSpyGlass.Design.Wpf.Converters  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� SourceA    ;SpyGlass.Design.Wpf.Converters.BooleanToVisibilityConverter   InverseBoolToVisConverter    	TrueValue    
FalseValue  PasswordBox �� 
TargetType �� Property �� Value �� RelativeSource �� AncestorType	 �� Path  TextBoxBorder)   #SpyGlass.Design.Wpf.TextFieldAssist  PrimaryHueMidBrush-  'System.Windows.Input.KeyboardNavigation  ValidationErrorTemplate$   SpyGlass.Design.Wpf.HintAssist
 m� Command m� Icon"   SpyGlass.Design.Wpf.PackIcon�   �ControlzEx.PackIconBase`1[[SpyGlass.Design.Wpf.PackIconKind, SpyGlass.Design, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]   Kind �� 
TargetType'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard �� TargetProperty �� 
TargetName W� From	 W� To g� Duration W� EasingFunction-	  'System.Windows.Media.Animation.SineEase7
  1System.Windows.Media.Animation.EasingFunctionBase 
  
EasingMode g� 	BeginTime  TextFieldBoxHoverBackground J� RenderTransformOrigin �� CornerRadius   BooleanToVisibilityConverter �� 	Converter �� ScaleX �� ScaleY ��Name J� SnapsToDevicePixels  �� Padding! �Name" ��Name# � UseLayoutRounding#   SpyGlass.Design.Wpf.SmartHint$  Name%   Hint&   	HintProxy=   7SpyGlass.Design.Wpf.Converters.HintProxyFabricConverter'   Instance(   HintOpacity)   UseFloating*   FloatingScale+   FloatingOffset, ��Name- �� StrokeDashArray. �� StrokeDashCap	/ �� X1	0 �� Y1	1 �� Y22 J� Opacity	3 �� X24 �� ElementName#   SpyGlass.Design.Wpf.Underline5  Name6   CornerRadius7 �� Triggers8 ]� 
Conditions9 �� Property: �� Value; �� 
TargetName< P� Property= P� Value  TextFieldBoxBackground  TextAreaBorder 	 TextAreaInactiveBorder 
 ValidationErrorBrush> �� Triggers  FloatingHintPasswordBox? �� BasedOn " FilledPasswordFieldPasswordBox $  OutlinedPasswordFieldPasswordBox�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      )wpf!clr-namespace:SpyGlass.Design.Wpf  5      ;
converters,clr-namespace:SpyGlass.Design.Wpf.Converters  5        5      �� 5   
   $+ %SpyGlass.ValidationErrorTemplate.xaml?�6   %�)  &	        &	 6     7  7  &	 ?'    7  &	 �'    7  &	 �(    7     5
      $ 	Collapsed=�6P   $ Visible=�6f   �� 5      " G�6    .�5   
   ��  � �� 6'   ��  �� " �$	 (TextElement.Foreground)��� 5   
    � �� 6'   ��  �� " �$	 (TextElement.FontFamily)��� 5   
    � ��# �  6(   �� 5   
    �@G�PasswordChar$	 ●��6)   �� 5   
    � ��$ 0 0 0 1q�6,   �� 5   
    �@ TextBoxViewMargin$ 1 0 0 0q�6B   �� 5   
    � ��
 ���� 6'   �� 5   
    �@G�
CaretBrush# �  6'   �� 5   
    �@ TabNavigation$
 None=�6=   �� 5   
    � ��$ Stretch=�67   �� 5   
    � ��$ Bottom=�65   �� 5   
    �@�FocusVisualStyle 6-   Z� �� 5   
    �@J�	AllowDrop . 6&   �� 5   
    �@��PanningMode$ VerticalFirst=�65   �� 5   
    �@��IsFlicksEnabled .  63   �� 5   
    �@=�ErrorTemplate8   65   �� 5   
    �@ UnderlineBrush# �  6?   �� 5   
    �@ 
Foreground# �  66   �� 5   
    �@�ContextMenu 5       �� 5!      .@�5"      m� $	
 Cut��6    5#        5$      $ 
ContentCut=�6+   5&      m� 5'      $

 Copy��6    5(        5)      $ ContentCopy=�6+   5+      m� 5,      $
 Paste��6    5-        5.      $ ContentPaste=�6+   50      51      53      �� 54   
    � �� 55      �� 56      " G�6"   .R�57      �  58        59      FocusStates��. 5:   "     Focused��. 5;   &   �� .��5<   *   W� $ ScaleX�6:   $ ScaleTransform��6]   $ 0X�6�   $ 1X�6�   $ 0:0:0.3D�6�    5=   .   	  5>   2   $ EaseOut=�6;   5@   +   W� 5A   *   $ ScaleY�6:   $ ScaleTransform��6]   $ 0X�6�   $ 1X�6�   $ 0:0:0.3D�6�    5B   .   	  5C   2   $ EaseOut=�6;   5E   +   W� 5F   *   $ ScaleX�6:   $ ScaleTransform��6]   $ 0X�6�   $ 0:0:0.45X�6�   $ 0D�6�   W� 5G   *   $ ScaleY�6:   $ ScaleTransform��6]   $ 0X�6�   $ 0:0:0.45X�6�   $ 0D�6�   5H   '   5I   #     5J   "   	Unfocused��. 5K   &   �� .��5L   *   W� $ ScaleX�6:   $ ScaleTransform��6]   $ 0X�6�   $ 0D�6�   W� 5M   *   $ ScaleY�6:   $ ScaleTransform��6]   $ 0X�6�   $ 0D�6�   5N   '   5O   #   5P      .+�5R      �� $��Stretch=�6!   $��Stretch=�6?   #���  5S   !   $ 0.5,0.5&�5V   !    5T   !   �� $1	 +(wpf:TextFieldAssist.TextFieldCornerRadius)� �� *TemplatedParent+y�5U   !   �� $0	 *(wpf:TextFieldAssist.RippleOnFocusEnabled)� �� *TemplatedParent+8  z�5W      �� 5X   "   ScaleTransform��$ 0Q�6I   $ 0Q�6T   5Z      �� 5[      $ passwordFieldBoxBorder��6!    .  5\   !   �� $1	 +(wpf:TextFieldAssist.TextFieldCornerRadius)� �� *TemplatedParent+._�5^      � .+�5_   "   �� $ border��6)   #��z��5`   )   #��z��5a   )   #��z��5b   )    . $  0 4 0 4q�5d   )   ._�5e   &   � $! passwordFieldGrid��6+   #��z��5f   +   #��z��5g   +   #��z��5h   +   .+�5i   *   �� $" PART_ContentHost��67   |�.  $��Hidden=�5j   7   $��Hidden=�6^   # z 5k   7   ## z# 5l   7     5n   *   $
$ Hint��68   #��z��5u   8   #��z��5v   8   % 5o   8   �� $	 (wpf:HintAssist.Hint)� �� *TemplatedParent+& 5p   8   ��  �� *TemplatedParent+# Z' ( 5q   8   �� $"	 (wpf:HintAssist.HintOpacity)� �� *TemplatedParent+) 5r   8   �� $!	 (wpf:HintAssist.IsFloating)� �� *TemplatedParent+* 5s   8   �� $$	 (wpf:HintAssist.FloatingScale)� �� *TemplatedParent++ 5t   8   �� $%	 (wpf:HintAssist.FloatingOffset)� �� *TemplatedParent+5v   8   5x   '   5y   #   �� 5z   "   $  passwordFieldBoxBottomLine��6)   #��z��5{   )   $��0��5|   )   $��Stretch=�5~   )   $��Bottom=�5   )    .  5}   )   �� $1	 +(wpf:TextFieldAssist.UnderlineCornerRadius)� �� *TemplatedParent+5�   )   �� 5�   "   $, 
DashedLine��6'   $��Bottom=�6;   $y�Hidden=�6V   $
��1.25��5�   '   $- 1,2.5R�6>   $. Round=�6V   $/ 0��5�   '   $0 0��6]   $1 0��6d   #��z��5�   '   $
2 0.56Q�6N   3 5�   .   �� *ActualWidth+$4 border��5�   N     5�   "   $5 	Underline��60   y�6C   �� $0	 *(wpf:TextFieldAssist.DecorationVisibility)� �� *TemplatedParent+6 5�   0   �� $1	 +(wpf:TextFieldAssist.UnderlineCornerRadius)� �� *TemplatedParent+��5�   0   �� $*	 $(wpf:TextFieldAssist.UnderlineBrush)� �� *TemplatedParent+5�      5�      5�      7 5�      ]� 5�      8 5�      �� 5�   "   9 �@ 
IsFloating: . 6Q   �� 5�   "   9 �@J�IsKeyboardFocused: . 6I   ./�5�      �� $
; Hint��6%    6M   �� $!	 (wpf:HintAssist.Foreground)� �� *TemplatedParent+ � ���� 5�      $
; Hint��6%    �@ HintOpacity$ 1Q�6N   5�      P� 5�      < �@ 
IsFloating= . . �5�      �� $; border��6%    �@��Padding$ 
0 15.5 0 4q�6L   5�      P� 5�      < �@ HasFilledTextField= . . �5�      ��  � ��$	 Top=�6I   �� 5�      $; passwordFieldBoxBorder��6%   # �  6_    � ���� 5�      $; passwordFieldBoxBorder��6%    �@��Padding$ 0,8,0,0q�6\   �� 5�      $; passwordFieldGrid��6%    � ��$ 	16,0,16,0q�6V   �� 5�      $; border��6%    � ��$ 0q�6T   �� 5�      $; border��6%    �@�Cursor$ IBeam��6K   �� 5�      $
; Hint��6%    � ��$ 0,0,0,16q�6I   �� 5�      $; PART_ContentHost��6%    � ��$ 0,8,0,8q�6U   5�      P� 5�      < �@ HasOutlinedTextField= . . �5�      ��  � ��$	 Top=�6I   �� 5�      $; passwordFieldBoxBorder��6%    � ��
 ���� 6_   �� 5�      $; passwordFieldBoxBorder��6%    � ��$ 1q�6d   �� 5�      $; passwordFieldBoxBorder��6%   # �  6`    � ���� 5�      $; passwordFieldBoxBorder��6%    �@��Padding$ 0,8,0,0q�6\   �� 5�      $; passwordFieldBoxBorder��6%    � ��$ -1q�6[   �� 5�      $; passwordFieldGrid��6%    � ��$ 	16,0,16,0q�6V   �� 5�      $; border��6%    � ��$ 0q�6T   �� 5�      $; border��6%    �@�Cursor$ IBeam��6K   �� 5�      $; 	Underline��6%    � y�$ 	Collapsed=�6R   �� 5�      $
; Hint��6%    � ��$ 0,0,0,16q�6I   �� 5�      $; PART_ContentHost��6%    � ��$ 0,8,0,8q�6U   5�      P� 5�      < � {�= .  . �5�      �� $; border��68    �@J�Opacity$
 0.42Q�6L   �� 5�      $; border��6%    � ��
 ���� 6P   5�      ]� 5�      8 5�      �� 5�   "   9 � {�: .  6A   �� 5�   "   9 �@ HasOutlinedTextField: . 6`   ./�5�      �� $; passwordFieldBoxBorder��6%   # � 	 6`    � ��5�      ]� 5�      8 5�      �� 5�   "   9 � {�: .  6A   �� 5�   "   9 �@ HasOutlinedTextField: .  6`   ./�5�      �� $; border��68    �@J�Opacity$
 0.42Q�6L   �� 5�      $; border��6%    � ��
 ���� 6P   5�      ]� 5�      8 5�      �� 5�   "   9 � {�: .  6A   �� 5�   "   9 �@ HasOutlinedTextField: .  6`   �� 5�   "   9 �@ HasFilledTextField: .  6^   ./�5�      �� $; 
DashedLine��6%    � y�$ Visible=�6S   5�      P� 5�      < �@J�IsKeyboardFocused= . . �5�      �� $; 	Underline��6%    �@ IsActive . 6P   5�      ]� 5�      8 5�      �� 5�   "   9 �@J�IsKeyboardFocused: . 6I   �� 5�   "   9 �@ HasOutlinedTextField: . 6`   ./�5�      �� $; passwordFieldBoxBorder��6%    � ��$ -2q�6[   �� 5�      $; passwordFieldBoxBorder��6%    � ��$ 2q�6d   �� 5�      $; passwordFieldBoxBorder��6%    6`   �� $*	 $(wpf:TextFieldAssist.UnderlineBrush)� �� *TemplatedParent+ � ��5�      ]� 5�      8 5�      �� 5�   "   9 �@J�IsKeyboardFocused: . 6I   �� 5�   "   9 �@ HasFilledTextField: . 6^   ./�5�      �� $ ; passwordFieldBoxBottomLine��6%    � ��$ 2��6_   5�      ]� 5�      8 5�      �� 5�   "   9 �@J�IsMouseOver: . 6C   �� 5�   "   9 �@ HasFilledTextField: .  6^   �� 5�   "   9 �@ HasOutlinedTextField: .  6`   �� 5�   "   "9 �@ NewSpecHighlightingEnabled: .  6f   ./�5�      ��  6<   �� $*	 $(wpf:TextFieldAssist.UnderlineBrush)� �� *Self+ � ��5�      ]� 5�      8 5�      �� 5�   "   9 �@J�IsMouseOver: . 6C   �� 5�   "   9 �@ HasFilledTextField: .  6^   �� 5�   "   9 �@ HasOutlinedTextField: .  6`   �� 5�   "   "9 �@ NewSpecHighlightingEnabled: . 6f   ./�5�      �� $; border��6%    � ��$ 0,0,0,2q�6T   �� 5�      $; border��6%    �@��Padding$ 0,4,0,3q�6L   5�      ]� 5�      8 5�      �� 5�   "   9 �@J�IsMouseOver: . 6C   �� 5�   "   9 �@ HasFilledTextField: . 6^   ./�5�      �� $; passwordFieldBoxBorder��6%   # �  6_    � ���� 5�      $ ; passwordFieldBoxBottomLine��6%    � ��$ 1��6_   5�      ]� 5�      8 5�      �� 5�   "   9 �@J�IsMouseOver: . 6C   �� 5�   "   9 �@ HasOutlinedTextField: . 6`   ./�5�      �� $; passwordFieldBoxBorder��6%    � ��$ -2q�6[   �� 5�      $; passwordFieldBoxBorder��6%    � ��$ 2q�6d   5�      P� 5      < �@=�HasError= . . �5     �� # � 
 6<    � ���� 5     $; 	Underline��6%   # � 
 6R    � ��5     ]� 5     8 5     �� 5  "   9 �@=�HasError: . 6K   �� 5  "   9 �@ HasOutlinedTextField: . 6`   ./�5	     �� $; passwordFieldBoxBorder��6%    � ��$ -2q�6[   �� 5
     $; passwordFieldBoxBorder��6%    � ��$ 2q�6d   �� 5     $; passwordFieldBoxBorder��6%   # � 
 6`    � ��5     5     5     > 5  
   ]� 5     8 5     �� 5     +9 �@G�#IsInactiveSelectionHighlightEnabled: . 6O   �� 5     9 �@G�IsSelectionActive: .  6=   ./�5     ��  �@G�SelectionBrush# � /�63   5     5     �� 5     " G�6,   8?   .�5  
   ��  �@ 
IsFloating . 66   5     �� 5      " G�63   8?   .�5!  
   ��  �@ HasFilledTextField . 6C   �� 5"  
    �@ RippleOnFocusEnabled . 6E   �� 5#  
    �@ TextFieldCornerRadius$ 4,4,0,0��6F   �� 5$  
    �@ UnderlineCornerRadius$ 0��6F   5%     �� 5'     " G�65   8?   .�5(  
   ��  �@ HasOutlinedTextField . 6E   �� 5)  
    �@ TextFieldCornerRadius$ 4��6F   5*     5,     