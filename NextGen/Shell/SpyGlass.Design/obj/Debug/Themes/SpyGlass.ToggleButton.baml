   M S B A M L   `   `   `  ����J  FSpyGlass.Design, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:SpyGlass.Design.WpfSpyGlass.Design.Wpf  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      O,clr-namespace:SpyGlass.Design.Wpf.ConvertersSpyGlass.Design.Wpf.Converters  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   AttentionToActionBrush  �� Color �� Opacity2    ,SpyGlass.Design.Wpf.Converters.MathConverter    	Operation  DivisionMathConverter8   2SpyGlass.Design.Wpf.Converters.PointValueConverter  PointValueConverter  FocusVisual �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray"   SpyGlass.Design.Wpf.PackIcon  CheckMarkIcon�   �ControlzEx.PackIconBase`1[[SpyGlass.Design.Wpf.PackIconKind, SpyGlass.Design, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]   Kind  ActionToggleButton �� 
TargetType	 �� 	Resources   PrimaryHueMidForegroundBrush  PrimaryHueMidBrush&    SpyGlass.Design.Wpf.ShadowAssist,   &SpyGlass.Design.Wpf.ToggleButtonAssist
 �� 
TargetType J� Effect �� RelativeSource �� Path4   .SpyGlass.Design.Wpf.Converters.ShadowConverter   Instance �� 	Converter'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States 	  System.Windows.VisualState 	  
Storyboard g� Duration	 W� To �� TargetProperty   Transitions%
  System.Windows.VisualTransition 
  From	 
  To 
  
Storyboard g� FillBehavior �� 
TargetName O� Value O� KeyTime �Name J� RenderTransformOrigin  J� Clip! @� RadiusX" �� ConverterParameter# @� RadiusY$ @� Center% `� 	Converter& �� ScaleX' �� ScaleY  ActionLightToggleButton( �� BasedOn 	 PrimaryHueLightBrush "
 PrimaryHueLightForegroundBrush  ActionDarkToggleButton  PrimaryHueDarkBrush ! PrimaryHueDarkForegroundBrush  ActionAccentToggleButton  SecondaryAccentBrush " SecondaryAccentForegroundBrush  FlatToggleButton  ToolBackground  ToolForeground) A�Name* �� CenterX+ �� CenterY, ��Name- �� Triggers. P� Property/ P� Value0 �� 
TargetName  FlatPrimaryToggleButton  SwitchToggleButton1 � 	Resources-  'System.Windows.Media.Animation.SineEase  Key7  1System.Windows.Media.Animation.EasingFunctionBase2   
EasingMode  RippleEasingFunction3 W� EasingFunction4 W� From9  3System.Windows.Media.Animation.EasingDoubleKeyFrame5   EasingFunction2  ,System.Windows.Media.Animation.QuadraticEase6 ��Name7 �� RadiusY8 �� RadiusX9 J� Opacity: J� IsHitTestVisible; J� 	CacheMode  ShadowDepth1< T� X= T� Y> ]� 
Conditions? �� Property@ �� ValueA N� EnterActions  
ShowRippleB N� ExitActions  
HideRipple  SwitchLightToggleButton  SwitchDarkToggleButton  SwitchAccentToggleButton  HamburgerToggleButtonC �� AncestorTypeD 	  NameE ��NameF �� Left
G �� Top�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      )wpf!clr-namespace:SpyGlass.Design.Wpf  5      1system&clr-namespace:System;assembly=mscorlib  5      ;
converters,clr-namespace:SpyGlass.Design.Wpf.Converters  5      %�V  &	        &	 .     &	 S     &	 f     &	    &	 b    7  7  7  7  7  7  7  7  7  7  7  &	 &    7  &	 �    7  &	 D    7  &	 �    &	 e    7  &	 �    7  7  7  7  7  7  7  &	 /    7  &	 M/    7  &	 �/    7  &	 �/    7  �� 5      $  Black��65   $	 .23Q�6C      5
      $ Divide=�6   62     5      6%   �� 5      .�5   
   ��  � �� 5      �� 5      .R�5      �� $��2q�6     . #��� ��6F   $��1��6�   $	 1 2R�6�   5      5      5        5      $ Check=�6:   $��24��6G   $��24��6R   $��LeftToRight=�6^   �� 5      " d�6'   	 5   
   �� 5      5       .�5"   
   ��  � ��# �  6'   �� 5#   
    � ��# �  6'   �� 5$   
    � ��$ 32��6"   �� 5%   
    � ��$ 32��6#   �� 5&   
    � ��$ 18(�6%   �� 5'   
    � ��$ Center=�67   �� 5(   
    � ��$ Center=�65   �� 5)   
    � ��$ 1q�6,   �� 5*   
    �@ ShadowDepth$ Depth0=�69   �� 5+   
    �@ 	OnContent8   6=   �� 5,   
    �@�Cursor$
 Hand��6#   �� 5-   
    � �� 5.      �� 5/      "
 d�6"   .R�50      �  6   ��  �� *TemplatedParent+$$ (wpf:ShadowAssist.ShadowDepth)�# Z  51        52      CommonStates��. 53   "   	  
Normal��6.   	  54   "   Disabled��. 55   &   �� .��56   *   W� $ 0D�6:   $
 0.23X�6G   $ (UIElement.Opacity)�6Q   57   '   58   #   59        5:      CheckStates�� 5;   "   
  5<   &   $ *��67   $ Checked��6@   . 5=   *   �� $ HoldEnd=�65   .��5>   .   U� $ 0:0:0.2D�6L   $ ScaleX�6_   $ OffScaleTransform��6�   .\�5?   2   �� $ 1Q�6G   $ 0:0:0.0��6Q   �� 5@   2   $ 0Q�6G   $ 0:0:0.1��6Q   5A   /   U� 5B   .   $ 0:0:0.2D�6L   $ ScaleX�6_   $ OnScaleTransform��6�   .\�5C   2   �� $ 0Q�6G   $ 0:0:0.1��6Q   �� 5D   2   $ 1Q�6G   $ 0:0:0.2��6Q   5E   /   5F   +   5G   '   
  5H   &   $ Checked��67   $ 	Unchecked��6F   . 5I   *   �� $ HoldEnd=�65   .��5J   .   U� $ 0:0:0.2D�6L   $ ScaleX�6_   $ OnScaleTransform��6�   .\�5K   2   �� $ 1Q�6G   $ 0:0:0.0��6Q   �� 5L   2   $ 0Q�6G   $ 0:0:0.1��6Q   5M   /   U� 5N   .   $ 0:0:0.2D�6L   $ ScaleX�6_   $ OffScaleTransform��6�   .\�5O   2   �� $ 0Q�6G   $ 0:0:0.1��6Q   �� 5P   2   $ 1Q�6G   $ 0:0:0.2��6Q   5Q   /   5R   +   5S   '   . 5U   "   	  Checked��. 5V   &   �� .��5W   *   W� $ 0D�6:   $ ScaleX�6G   $ OffScaleTransform��6j   $ 0X�5X   :   W� 5Y   *   $ 0D�6:   $ ScaleX�6G   $ OnScaleTransform��6j   $ 1X�5Z   :   5[   '   5\   #   	  5]   "   	Unchecked��. 5^   &   �� .��5_   *   W� $ 0D�6:   $ ScaleX�6G   $ OffScaleTransform��6j   $ 1X�5`   :   W� 5a   *   $ 0D�6:   $ ScaleX�6G   $ OnScaleTransform��6j   $ 0X�5b   :   5c   '   5d   #   	  5e   "   Indeterminate��. 5f   &   �� .��5g   *   W� $ 0D�6:   $ 1X�6G   $ (UIElement.Opacity)�6N   $ IndeterminateCheck��6~   5h   '   5i   #   5j      .+�5l      � $ OffGrid��6   $ .5,.5&�60   #��z��6N   .+�5m      �� #��z��6/   #��z��6c   #��z��5n   /   #��z��6r   $��LeftToRight=�5o   /     5p      @� 5q   "   ! 62   ��  �� *TemplatedParent+$ Width�8  $	" 2.0��# 5r   2   ��  �� *TemplatedParent+$ Height�8  $	" 2.0��$ 5s   &   `� 5t   *   8%  .1�5u   .   �� $ Width�6h   8  $	" 2.0��6�    66   �� *TemplatedParent+6�   �� 5v   .   $ Height�6h   8  $	" 2.0��6�    66   �� *TemplatedParent+6�   5w   +   5y   #   z�5{      �� 5|   "   OffScaleTransform��$& 1Q�6L   $' 1Q�6W   5~      � 5      $ OnGrid��6   $ .5,.5&�6/   #��z��6M   .+�5�      �� #��z��6/   #��z��6r   $��LeftToRight=�5�   /   ��5�   /   ��  �� *TemplatedParent+$( "(wpf:ToggleButtonAssist.OnContent)���5�   /   ��  �� *TemplatedParent+$0 *(wpf:ToggleButtonAssist.OnContentTemplate)�  5�      @� 5�   "   ! 62   ��  �� *TemplatedParent+$ Width�8  $	" 2.0��# 5�   2   ��  �� *TemplatedParent+$ Height�8  $	" 2.0��$ 5�   &   `� 5�   *   8%  .1�5�   .   �� $ Width�6h   8 	 $	" 2.0��6�    66   �� *TemplatedParent+6�   �� 5�   .   $ Height�6h   8 
 $	" 2.0��6�    66   �� *TemplatedParent+6�   5�   +   5�   #   z�5�      �� 5�   "   OnScaleTransform��$& 0Q�6K   $' 1Q�6V   5�      5�      5�      5�      5�      �� 5�      " d�6,   8(   .�5�   
   ��  � ��# � 	 6'   �� 5�   
    � ��# � 	 6(   �� 5�   
    � ��# � 
 6'   5�      �� 5�      " d�6+   8(   .�5�   
   ��  � ��# �  6'   �� 5�   
    � ��# �  6(   �� 5�   
    � ��# �  6'   5�      �� 5�      " d�6-   8(   .�5�   
   ��  � ��# �  6'   �� 5�   
    � ��# �  6(   �� 5�   
    � ��# �  6'   5�      �� 5�      " d�6%   .�5�   
   ��  � ��# �  6'   �� 5�   
    � ��# �  6'   �� 5�   
    � ��$ 40��6"   �� 5�   
    � ��$ 40��6#   �� 5�   
    � ��$ 18(�6%   �� 5�   
    � ��$ Center=�67   �� 5�   
    � ��$ Center=�65   �� 5�   
    � ��$ 0q�6$   �� 5�   
    � �� 5�      �� 5�      "
 d�6"   .R�5�      � }�. #��z��6/   #��z��6O    5�        5�      CommonStates��. 5�   "   	  
Normal��6.   	  5�   "   Disabled��. 5�   &   �� .��5�   *   W� $ 0D�6:   $
 0.23X�6G   $ (UIElement.Opacity)�6Q   5�   '   5�   #   5�        5�      CheckStates�� 5�   "   
  5�   &   $ *��67   $ Checked��6@   . 5�   *   �� .��5�   .   U� $ 0:0:0.2D�6L   $ ScaleX�6_   $ CheckedEllipseScale��6�   .\�5�   2   �� $ 0Q�6G   $ 0:0:0.0��6Q   �� 5�   2   $	 1.0Q�6G   $ 0:0:0.1��6S   5�   /   U� 5�   .   $ 0:0:0.2D�6L   $ ScaleY�6_   $ CheckedEllipseScale��6�   .\�5�   2   �� $ 0Q�6G   $ 0:0:0.0��6Q   �� 5�   2   $	 1.0Q�6G   $ 0:0:0.1��6S   5�   /   5�   +   5�   '   
  5�   &   $ Checked��67   $ 	Unchecked��6F   . 5�   *   �� .��5�   .   U� $ 0:0:0.2D�6L   $ ScaleX�6_   $ CheckedEllipseScale��6�   .\�5�   2   �� $	 1.0Q�6G   $ 0:0:0.0��6S   �� 5�   2   $ 0Q�6G   $ 0:0:0.1��6Q   5�   /   U� 5�   .   $ 0:0:0.2D�6L   $ ScaleY�6_   $ CheckedEllipseScale��6�   .\�5�   2   �� $	 1.0Q�6G   $ 0:0:0.0��6S   �� 5�   2   $ 0Q�6G   $ 0:0:0.1��6Q   5�   /   5�   +   5�   '   . 5�   "   	  Checked��. 5�   &   �� .��5�   *   W� $ 0D�6:   $ ScaleX�6G   $ CheckedEllipseScale��6j   $	 1.0X�6�   W� 5�   *   $ 0D�6:   $ ScaleY�6G   $ CheckedEllipseScale��6j   $	 1.0X�6�   5�   '   5�   #   	  5�   "   	Unchecked��. 5�   &   �� .��5�   *   W� $ 0D�6:   $ ScaleX�6G   $ CheckedEllipseScale��6j   $ 0X�6�   W� 5�   *   $ 0D�6:   $ ScaleY�6G   $ CheckedEllipseScale��6j   $ 0X�6�   5�   '   5�   #   5�      .+�5�      A� $) HoverEllipse��65   
������ 
������ $��1��6`   A� 5�      $) CheckedEllipse��6F   #��z��6"   $ 0.5, 0.5&�6^   z�5�      �� 5�   "   $	* 0.5Q�61   $	+ 0.5Q�6?   $	& 1.0Q�6M   $	' 1.0Q�6Z   CheckedEllipseScale��6g   5�      �� 5�      $, contentPresenter��6+   #��z��6E   #��z��6y   #��z��6�   #��z��6�   #��z��6  5�      - 5�      P� 5�      . �@J�IsMouseOver/ . . �5�      �� $0 HoverEllipse��67    6Q   ��  �� *TemplatedParent+$ 
Background� � ��5�      5�      5�      5�      �� 5     " d�6,   8(   .�5  
   ��  � ��# � 	 6'   �� 5  
    � ��# �  6'   5     �� 5     " d�6'   .�5  
   ��  �@�FocusVisualStyle8   6-   �� 5  
    � ��# �  6'   �� 5	  
    � ��# �  6'   �� 5
  
    � ��$ 1q�6,   �� 5  
    � ��$ 0 1 0 0q�6$   �� 5  
    � �� 5     �� 5     "
 d�6"   1 5     ��  5     RippleEasingFunction $2 	EaseInOut=�6@   �� 5     
ShowRipple .��5     W� $ RippleThumb��6.   $ Opacity�6R   83  $
 0.26X�5  .   $ 0D�68   W� 5     $ RippleThumb��6.   $9 3(UIElement.RenderTransform).(ScaleTransform.ScaleX)�6R   83  $4 1X�5  .   $	 2.5X�67   $ 0:0:0.2D�6@   W� 5     $ RippleThumb��6.   $9 3(UIElement.RenderTransform).(ScaleTransform.ScaleY)�6R   83  $4 1X�5  .   $	 2.5X�67   $ 0:0:0.2D�6@   5     �� 5     
HideRipple .��5     W� $ RippleThumb��6.   $ Opacity�6R   83  $ 0X�5  .   $ 0:0:0.3D�65   5      5!     .R�5"     (� $��34��6    5#       5$     CheckStates�� 5%  "   
  5&  &   $ *��67   $ Checked��6@   . 5'  *   �� .��5(  .   U� $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6L   $ ThumbHolder��6�   .\�5)  2     $ 0��6G   $ 0Q�6S     5*  2   $ 0:0:0.2��6G   $
 23.5Q�6Y   5 5+  6     5,  :   $2 EaseOut=�6H   5.  3   5/  /   50  +   51  '   
  52  &   $ Checked��67   $ 	Unchecked��6F   . 53  *   �� .��54  .   U� $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6L   $ ThumbHolder��6�   .\�55  2     $ 0��6G   $
 23.5Q�6S     56  2   $ 0:0:0.2��6G   $ 0Q�6Y   5 57  6     58  :   $2 EaseOut=�6H   5:  3   5;  /   5<  +   5=  '   . 5?  "   	  Checked��. 5@  &   �� .��5A  *   W� $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6:   $ ThumbHolder��6�   $ 0D�5B  :   $
 23.5X�6G   5C  '   5D  #   	  5E  "   	Unchecked��. 5F  &   �� .��5G  *   W� $8 2(UIElement.RenderTransform).(TranslateTransform.X)�6:   $ ThumbHolder��6�   $ 0D�5H  :   $ 0X�6G   5I  '   5J  #   5K     .��5M     � .+�5N     �� $6 Track��6(   
���   �$
��Left=�5O  5   $��15��6P   $��4.211,5,4.211,0q�6\   $	��Top=�6�   $��40��6�   $	7 7.5��6�   $	8 7.5��6�   $
9 0.26Q�6�   ��6u   Z� 6�   � 5Q     $ ThumbHolder��6#   $
��Left=�5R  #   $	��Top=�6>   .+�5S  "   A� $) RippleThumb��6*   #��� 	 5T  *   $��25��5U  *   $��25��66   : .  $
9 0.26Q�5W  *   $��0q�5X  *   $��Center=�5Y  *   $��Center=�6G   $ 0.5,0.5&�5Z  *   z�5[  &   �� 5\  *   $& 1Q�69   $' 1Q�6D   5^  #   �� 5_  "   ; 63   ��  �� *Self+$" (wpf:ShadowAssist.CacheMode)�.u�5`  &   A� $) Thumb��6.   ���	#FFFAFAFA$��Center=�5b  .   $��Center=�6K   $��25��5c  .   $��25��69   $��0,0,0,0q�5d  .   $ 0.5,0.5&�5e  .   # �  5f  .   ��5a  ?   Z� 5g  '   5h  #   �� 5i  "   $, ContentPresenter��5k  3   #��z��5i  3   #��z��6g   #��z��5j  3   #��z��5l  3   #��z��6v   $��LeftToRight=�5m  3   z�5n  "   T� 5o  &   $< 0Q�69   $= 0Q�6?   5q     5r     5s     - 5t     P� 5u     . �@d�	IsChecked$
/ TrueY�67   . �5v     �� $0 Thumb��6%    6H   ��  �� *TemplatedParent+$ 
Background� � ���� 5w     $0 Track��6%   # � 	 6H    � ���� 5x     # �  6;    � ��5y     ]� 5z     > 5{     �� 5|  "   ? �@d�	IsChecked$
@ TrueY�6A   �� 5}  "   ? �@ HasOnContent@ . 6[   ./�5     �� $0 ContentPresenter��6%    6V   ��  �� *TemplatedParent+$( "(wpf:ToggleButtonAssist.OnContent)� � ���� 5�     $0 ContentPresenter��6%    6^   ��  �� *TemplatedParent+$0 *(wpf:ToggleButtonAssist.OnContentTemplate)� � ��5�     P� 5�     . �@d�	IsChecked$/ FalseY�67   . �5�     �� # �  6;    � ��5�     P� 5�     . �@��IsDefaulted/ . 6@   P� 5�     . �@J�IsMouseOver/ . 69   P� 5�     . � ��/ . A 5�     �� 5�  "   8�� 62   B 5�     �� 5�  "   8�� 62   5�     P� 5�     . � {�/ .  . �5�     �� $0 Thumb��6%    � �� �#BDBDBD6H   �� 5�     $0 Track��6%    � �� 5�  "   �� 5�  &   $  Black��66   $	 .12Q�6D   5�     5�     5�     5�     5�     �� 5�     " d�6,   8(   .�5�  
   ��  � ��# � 	 6'   5�     �� 5�     " d�6+   8(   .�5�  
   ��  � ��# �  6'   5�     �� 5�     " d�6-   8(   .�5�  
   ��  � ��# �  6'   5�     �� 5�     " d�6*   .�5�  
   ��  � �� 6'   ��  �� "C �$ (TextElement.Foreground)��� 5�  
    � ��
 ���� 6'   �� 5�  
    �@�FocusVisualStyle8   6-   �� 5�  
    � ��$ 1q�6,   �� 5�  
    � ��$ Center=�67   �� 5�  
    � ��$ Center=�65   �� 5�  
    � ��$ 37��6"   �� 5�  
    � ��$ 37��6#   �� 5�  
    � ��$ 1q�6$   �� 5�  
    � �� 5�     �� 5�     "
 d�6"   .R�5�     �� #��z��6    5�       5�     CommonStates��. 5�  "   	  $D Normal��6.   	  5�  "   $D Disabled��6.   . 5�  &   �� .��5�  *   W� $ 0D�6:   $
 0.23X�6G   $ (UIElement.Opacity)�6Q   5�  '   5�  #   5�       5�     CheckStates�� 5�  "   
  5�  &   $ *��67   $ Checked��6@   . 5�  *   �� .��5�  .   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6L   $ 	rectangle��6�   .\�5�  2     $ 0:0:0.3��6G   $ 45Q�6Y   5�  /   U� 5�  .   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6L   $ 	rectangle��6�   .\�5�  2     $ 0:0:0.3��6G   $ 0.581Q�6Y   5�  /   U� 5�  .   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6L   $ 	rectangle��6�   .\�5�  2     $ 0:0:0.3��6G   $ 4.875Q�6Y   5�  /   U� 5�  .   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6L   $ 	rectangle��6�   .\�5�  2     $ 0:0:0.3��6G   $ 1.875Q�6Y   5�  /   U� 5�  .   $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6L   $ 
rectangle2��6�   .\�5�  2     $ 0:0:0.3��6G   $	 -45Q�6Y   5�  /   U� 5�  .   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6L   $ 
rectangle2��6�   .\�5�  2     $ 0:0:0.3��6G   $ 0.581Q�6Y   5�  /   U� 5�  .   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6L   $ 
rectangle2��6�   .\�5�  2     $ 0:0:0.3��6G   $ 4.832Q�6Y   5�  /   U� 5�  .   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6L   $ 
rectangle2��6�   .\�5�  2     $ 0:0:0.3��6G   $ -2.082Q�6Y   5�  /   U� 5�  .   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6L   $ 
rectangle1��6�   .\�5�  2     $ 0:0:0.3��6G   $ 0.889Q�6Y   5�  /   U� 5�  .   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6L   $ 
rectangle1��6�   .\�5�  2     $ 0:0:0.3��6G   $ -1Q�6Y   5�  /   U� 5�  .   $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6L   $ canvas��6�   .\�5�  2     $ 0��6G   $ 0Q�6S     5�  2   $ 0:0:0.3��6G   $
 -180Q�6Y   5�  /   5�  +   5�  '   
  5�  &   $ Checked��67   $ 	Unchecked��6F   . 5�  *   �� .��5�  .   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6L   $ 	rectangle��6�   .\�5�  2     $ 0:0:0.3��6G   $ 0Q�6Y   5�  /   U� 5�  .   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6L   $ 	rectangle��6�   .\�5�  2     $ 0:0:0.3��6G   $ 1Q�6Y   5�  /   U� 5�  .   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6L   $ 	rectangle��6�   .\�5�  2     $ 0:0:0.3��6G   $ 0Q�6Y   5�  /   U� 5�  .   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6L   $ 	rectangle��6�   .\�5�  2     $ 0:0:0.3��6G   $ 0Q�6Y   5�  /   U� 5�  .   $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6L   $ 
rectangle2��6�   .\�5�  2     $ 0:0:0.3��6G   $ 0Q�6Y   5�  /   U� 5�  .   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6L   $ 
rectangle2��6�   .\�5�  2     $ 0:0:0.3��6G   $ 1Q�6Y   5�  /   U� 5�  .   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6L   $ 
rectangle2��6�   .\�5�  2     $ 0:0:0.3��6G   $ 0Q�6Y   5�  /   U� 5   .   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6L   $ 
rectangle2��6�   .\�5  2     $ 0:0:0.3��6G   $ 0Q�6Y   5  /   U� 5  .   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6L   $ 
rectangle1��6�   .\�5  2     $ 0:0:0.3��6G   $ 1Q�6Y   5  /   U� 5  .   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6L   $ 
rectangle1��6�   .\�5  2     $ 0:0:0.3��6G   $ 0Q�6Y   5  /   U� 5	  .   $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6L   $ canvas��6�   .\�5
  2     $ 0:0:0.3��6G   $ 0Q�6Y   5  /   5  +   5  '   . 5  "   	  Checked��. 5  &   �� .��5  *   W� $ 0D�6:   $ 45X�6G   $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6O   $ 	rectangle��6�   W� 5  *   $ 0D�6:   $ 0.581X�6G   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6R   $ 	rectangle��6�   W� 5  *   $ 0D�6:   $ 4.875X�6G   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6R   $ 	rectangle��6�   W� 5  *   $ 0D�6:   $ 1.875X�6G   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6R   $ 	rectangle��6�   W� 5  *   $ 0D�6:   $	 -45X�6G   $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6P   $ 
rectangle2��6�   W� 5  *   $ 0D�6:   $ 0.581X�6G   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6R   $ 
rectangle2��6�   W� 5  *   $ 0D�6:   $ 4.832X�6G   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6R   $ 
rectangle2��6�   W� 5  *   $ 0D�6:   $ -2.082X�6G   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6S   $ 
rectangle2��6�   W� 5  *   $ 0D�6:   $ 0.889X�6G   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6R   $ 
rectangle1��6�   W� 5  *   $ 0D�6:   $ -1X�6G   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6O   $ 
rectangle1��6�   W� 5  *   $ 0D�6:   $
 -180X�6G   $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6Q   $ canvas��6�   5  '   5  #   	  5  "   	Unchecked��. 5  &   �� .��5   *   W� $ 0D�6:   $ 0X�6G   $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6N   $ 	rectangle��6�   W� 5!  *   $ 0D�6:   $ 1X�6G   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6N   $ 	rectangle��6�   W� 5"  *   $ 0D�6:   $ 0X�6G   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6N   $ 	rectangle��6�   W� 5#  *   $ 0D�6:   $ 0X�6G   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6N   $ 	rectangle��6�   W� 5$  *   $ 0D�6:   $ 0X�6G   $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6N   $ 
rectangle2��6�   W� 5%  *   $ 0D�6:   $ 1X�6G   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6N   $ 
rectangle2��6�   W� 5&  *   $ 0D�6:   $ 0X�6G   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6N   $ 
rectangle2��6�   W� 5'  *   $ 0D�6:   $ 0X�6G   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6N   $ 
rectangle2��6�   W� 5(  *   $ 0D�6:   $ 1X�6G   $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6N   $ 
rectangle1��6�   W� 5)  *   $ 0D�6:   $ 0X�6G   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6N   $ 
rectangle1��6�   W� 5*  *   $ 0D�6:   $ 0X�6G   $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6N   $ canvas��6�   5+  '   5,  #   5-     ._�5/     (� .��50     �� $E canvas��6%   $��24��65   $��24��6@   $ 0.5,0.5&�6L   z�51  "   V� 52  &   .~�53  *   �� �� 54  *   �� 55  *   T� 56  *   57  '   .+�59  "   �� $6 	rectangle��6,   #��z��6?   $��2��6c   $F 3��6n   $7 0��6~   $8 0��6�   $G 6��6�   $��18��6�   $ 0.5,0.5&�6�   z�5;  &   V� 5<  *   .~�5=  .   �� �� 5>  .   �� 5?  .   T� 5@  .   5A  +   5C  #   �� 5D  "   $6 
rectangle1��6,   #��z��6@   $��2��6d   $F 3��6o   $7 0��6   $8 0��6�   $G 11��6�   $��18��6�   $ 0.5,0.5&�6�   z�5F  &   V� 5G  *   .~�5H  .   �� �� 5I  .   �� 5J  .   T� 5K  .   5L  +   5N  #   �� 5O  "   $6 
rectangle2��6,   #��z��6@   $��2��6d   $F 3��6o   $7 0��6   $8 0��6�   $G 16��6�   $��18��6�   $ 0.5,0.5&�6�   z�5Q  &   V� 5R  *   .~�5S  .   �� �� 5T  .   �� 5U  .   T� 5V  .   5W  +   5Y  #   5Z     5[     5\     - 5]     P� 5^     . �@��IsDefaulted/ . 6@   5`     5b     5c     5e     