   M S B A M L   `   `   `  ����J  FSpyGlass.Design, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:SpyGlass.Design.WpfSpyGlass.Design.Wpf  5      O,clr-namespace:SpyGlass.Design.Wpf.ConvertersSpyGlass.Design.Wpf.Converters  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries8    2SpyGlass.Design.Wpf.Converters.BrushRoundConverter   Key:   4SpyGlass.Design.Wpf.Converters.MathMultipleConverter   	OperationB   <SpyGlass.Design.Wpf.Converters.NullableToVisibilityConverter ! NullableToVisibilityConverter  TreeView �� 
TargetType �� Property �� Value  Body �� 
TargetType ��Name J� SnapsToDevicePixels ��Name	 �� Triggers
 P� Property P� Value �� 
TargetName �� Triggers  TreeViewItemFocusVisual  ExpandCollapseToggleStyle'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   Transitions%  System.Windows.VisualTransition   From	   To   GeneratedEasingFunction0  *System.Windows.Media.Animation.QuarticEase7  1System.Windows.Media.Animation.EasingFunctionBase   
EasingMode   
Storyboard �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value   GeneratedDuration   States 	  System.Windows.VisualState 	  
Storyboard F�Name J� RenderTransformOrigin �� Angle �� CenterX  �� CenterY  TreeViewItem! �� RelativeSource" �� AncestorType# � ColumnDefinitions$ � RowDefinitions%   Name.
  (System.Windows.Media.Animation.CubicEase& 	  Name	' W� To( g� Duration) R� KeyTime  System.Windows.Visibility*   Visible+ R� Value,   	Collapsed#   SpyGlass.Design.Wpf.ScaleHost-  Name. d�Name/ �� 	ClickMode0 d� 	IsChecked1 J� IsHitTestVisible2 J� Opacity  BrushRoundConverter3 �� 	Converter4 �Name    SpyGlass.Design.Wpf.Ripple5   Feedback6 ��Name7 ��Name8 �� Path9 ��Name  MathMlpMultipleConverter: `� 	Converter; �� ElementName< ��Name= �� Value> �� Binding? �� 	Converter@ �� Mode�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      )wpf!clr-namespace:SpyGlass.Design.Wpf  5      ;
converters,clr-namespace:SpyGlass.Design.Wpf.Converters  5      1system&clr-namespace:System;assembly=mscorlib  5        5      �� 5   
      5	      BrushRoundConverter  6-     5
      MathMlpMultipleConverter  $ Multiply=�6P   5      %�#  &	       &	      &	 Z    &	 �    &	 �    7  7  7  7  7  7  7  7    5      6/   �� 5      " R�6   .�5   
   ��  � ��
 ���� 6'   �� 5   
    � �� 6(   Z� �� 5   
    � ��$ 0q�6,   �� 5   
    � ��# �  6'   �� 5   
    � ��$ 1q�6$   �� 5   
    � ��$
 Auto=�6G   �� 5   
    � ��$
 Auto=�6E   �� 5   
    �@��PanningMode$
 Both=�65   �� 5   
    �@��IsFlicksEnabled .  63   �� 5   
    � ��$ Center=�65   �� 5   
    � �� 5      �� 5      " R�6"   .R�5      �� $ Bd��6   #��z��6)   #��z��6U    . ._�5      �� $ _tv_scrollviewer_��6'   #��z��6B   ��.  |�.  #��z��6�   #��z��6�   # z 6  #��z��6T  .��5       �� 5!      5"      	 5#      P� 5$      
 � {� .  . �5%      ��  �@J�Opacity$	 .56Q�68   5&      P� 5'      
 �@%�IsVirtualizing . . �5(      �� $ _tv_scrollviewer_��6A    � �� . 6`   5)      5+      5-       5.   
   P� 5/      
 �@%�IsVirtualizing . . �50      ��  � �� 51      �� 52      .R�53      $� 54      56      57      59      �� 5;      .�5<   
   ��  � �� 5=      �� 5>      .R�5?      �� 5@      5B      5C      �� 5E      " d�6.   .�5F   
   ��  � |� .  6&   �� 5G   
    � ��$ 16��6"   �� 5H   
    � ��$ 16��6#   �� 5I   
    � �� 5J      �� 5K      " d�6"   .R�5L      �� 
������ $��16��66   $��16��6B    5M        5N      CheckStates�� 5O   "     5P   &   $ 	Unchecked��67   $ Checked��6H    5Q   *     5R   .   $ EaseOut=�6:   . 5T   *   �� .��5U   .   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6L   $ 
ExpandPath��6�   .\�5V   2     $ 0��6G   $ 0Q�6S     5W   2   $ 0:0:0.2��6G   $ 45Q�6Y   5X   /   5Y   +   5Z   '     5[   &   $ 0D�67   $ 	Unchecked��6M   . 5\   *   �� .��5]   .   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6L   $ 
ExpandPath��6�   .\�5^   2     $ 0��6G   $ 45Q�6S   5_   /   5`   +   5a   '     5b   &   $ 0D�67   $ Checked��6M   . 5c   *   �� .��5d   .   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6L   $ 
ExpandPath��6�   .\�5e   2     $ 0��6G   $ 0Q�6S   5f   /   5g   +   5h   '     5i   &   $ Checked��67   $ 0D�6F   $ 	Unchecked��6\    5j   *     5k   .   $ EaseOut=�6:   . 5m   *   �� .��5n   .   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6L   $ 
ExpandPath��6�   .\�5o   2     $ 0��6G   $ 45Q�6S     5p   2   $ 0:0:0.2��6G   $ 0Q�6Y   5q   /   5r   +   5s   '   . 5u   "   	  Checked��. 5v   &   �� .��5w   *   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6H   $ 
ExpandPath��6�   .\�5x   .     $ 0:0:0.2��6C   $ 45Q�6U   5y   +   5z   '   5{   #   	  5|   "   	Unchecked��. 5}   &   �� .��5~   *   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�6H   $ 
ExpandPath��6�   .\�5   .     $ 0:0:0.2��6C   $ 0Q�6U   5�   +   5�   '   5�   #   5�      ._�5�      (� .��5�      �� $��24��6%   $��24��60   .+�5�   "   F� $ 
ExpandPath��5�   /   P���p�� �G�z�0@�P��  � Ѱ� Pq р�� ��[ � $�  � р�� ��Q�� �G�z�0@	 . #��z��5�   /   #��z��5�   /   $ .5,.5&�6U   z�5�   &   V� 5�   *   .~�5�   .   �� �� 5�   .   �� 5�   .   $ 0Q�6>   $ 4Q�6H   $  4Q�6T   T� 5�   .   5�   +   5�   #   5�      5�      5�      5�      5�      5�      �� 5�      " Q�6!   .�5�   
   ��  � ��
 ���� 6'   �� 5�   
    � ��$ 0q�6,   �� 5�   
    � �� 67   �� *HorizontalContentAlignment+! �� "" ���� 5�   
    � �� 65   �� *VerticalContentAlignment+! �� "" ���� 5�   
    � ��$ 8q�6$   �� 5�   
    �@�FocusVisualStyle8   6-   �� 5�   
    � �� 6'   �� *
Foreground+! �� "" R��� 5�   
    � �� 5�      �� 5�      " Q�6"   .R�5�      � # 5�      �� 5�      $
��Auto �6/   �� 5�      $
��Auto �6/   �� 5�      $��* �6/   $ 5�      �� 5�      $
��Auto �6,   �� 5�      $
��Auto �6,   �� 5�       5�        5�      $% CommonStates��6/    5�   "     5�   &   $ 0:0:0.3D�67   $ Normal��6S    5�   *   
  5�   .   $ EaseOut=�68   5�   '   . 5�   "   	  $& Normal��6.   	  5�   "   $& 	MouseOver��6.   . 5�   &   �� .��5�   *   W� $ MouseOverBorder��6:   $ Opacity�6b   $	' 0.1X�5�   >   $( 0D�6G   W� 5�   *   $ MouseOverBorder��6:   $ Opacity�6b   $	' 0.1X�5�   >   $( 0D�6G   5�   '   5�   #   	  5�   "   $& Disabled��6.   5�        5�      SelectionStates�� 5�   "     5�   &   $ 0:0:0.6D�67   . 5�   "   	  $& Selected��6.   . 5�   &   �� .��5�   *   W� $ SelectedBorder��6:   $ Opacity�5�   :   $
' 0.18X�5�   :   $( 0D�6D   5�   '   5�   #   	  5�   "   $& 
Unselected��6.   5�        5�      ExpansionStates�� 5�   "     5�   &   $ 0D�67   $ Expanded��6M    5�   *   
  5�   .   $ EaseOut=�68   . 5�   *   �� .��5�   .   T� $ 	ItemsHost��6L   $ 
Visibility�6n   ..�5�   2   i� $) 0��6I   #+ Z* 6U   5�   /   W� 5�   .   $ Opacity�6>   $ 	ItemsHost��6b   $' 1X�6�   $( 0:0:0.3D�6�   W� 5�   .   $ Scale�6>   $ 	ScaleHost��6`   $' 1X�6�   $( 0:0:0.3D�6�   5�   +   5�   '     5�   &   $ 0D�67   $ 	Collapsed��6M    5�   *   
  5�   .   $ EaseOut=�68   . 5�   *   �� .��5�   .   T� $ 	ItemsHost��6L   $ 
Visibility�6n   ..�5�   2   i� $) 0:0:0.3��6I   #+ Z, 6[   5�   /   W� 5�   .   $ Opacity�6>   $ 	ItemsHost��6b   $' 0X�6�   $( 0:0:0.3D�6�   W� 5�   .   $ Scale�6>   $ 	ScaleHost��6`   $' 0X�6�   $( 0:0:0.3D�6�   5�   +   5�   '   . 5�   "   	  Expanded��. 5�   &   �� .��5�   *   W� $ Opacity�6:   $ 	ItemsHost��6^   $' 1X�6�   $( 0D�6�   W� 5�   *   $ Scale�6:   $ 	ScaleHost��6\   $' 1X�6~   $( 0:0:0.3D�6�   T� 5�   *   $ 	ItemsHost��6H   $ 
Visibility�6j   ..�5�   .   i� $) 0��6E   #+ Z* 6Q   5�   +   5�   '   5�   #   	  5�   "   	Collapsed��. 5�   &   �� .��5�   *   W� $ Opacity�6:   $ 	ItemsHost��6^   $' 0X�6�   $( 0D�6�   W� 5�   *   $ Scale�6:   $ 	ScaleHost��6\   $' 0X�6~   $( 0:0:0.3D�6�   T� 5�   *   $ 	ItemsHost��6H   $ 
Visibility�6j   ..�5�   .   i� $) 0��6E   #+ Z, 6Q   5�   +   5�   '   5   #   5     .+�5       $- 	ScaleHost��6(   d� 5     $. Expander��6'   $/ Press=�69   8�� #��z��5  '   $��8 0 8 0q�5  '   $��Center=�5  '   0 5  K   �� *
IsExpanded+! �� *TemplatedParent+5  '   �� 5     $ MouseOverBorder��6!   $��1��5  !   $��2��61   1 .  $2 0Q�5  !   ��5  !   �� *
Foreground+83  �� 5     $ SelectedBorder��6!   $��1��5  !   $��2��61   1 .  $2 0Q�5  !   ��5  !   �� *
Foreground+83  � 5     $4 ContentGrid��6C   $��1��6   $��2��6/   
������ .+�5       |�.  # z 5  )   #��z��5  )   #��z��5  )   #��z��5  )   5 5  )   �� *
Foreground+83  .��5  "   �� $6 PART_Header��63   $��Header��6H   5     5      �� 5"     $7 AdditionalContentControl��5#  )   $��1��5"  )   $��1��66   $��2��6F   #��z��5$  )   $y�	Collapsed=�5'  )   ��5%  )   �� ! �� *Self+$-8 '(wpf:TreeViewAssist.AdditionalTemplate)���5&  )   �� ! �� *Self+$58 /(wpf:TreeViewAssist.AdditionalTemplateSelector)�5(     �� 5*     $9 
ItemsPanel��5+  %   $��1��5*  %   $��2��65   $��	-16 0 0 0q�5,  %   $��2��5-  %   ��5.     `� 5/  "   8:  .1�50  &   �� $; 	ItemsHost��6.   $8 ActualHeight�6F   �� 51  &   $; 	ScaleHost��6.   $8 Scale�6F   52  #   .+�54     �� $< 	ItemsHost��6-   $	��Top=�55  -   $2 0Q�56  -   $y�	Collapsed=�57  -   58     59     	 5:     �� 5;     $= Visible��5<  &   > 5;  &   �� ! �� *Self+$-8 '(wpf:TreeViewAssist.AdditionalTemplate)�8?  $@ OneWay=�.a�5=     �� $ AdditionalContentControl��6%    � y�$ Visible=�6a   5>     �� 5?     $= Visible��5@  &   > 5?  &   �� ! �� *Self+$58 /(wpf:TreeViewAssist.AdditionalTemplateSelector)�8?  $@ OneWay=�.a�5A     �� $ AdditionalContentControl��6%    � y�$ Visible=�6a   5B     P� 5C     
 �@��HasItems .  . �5D     �� $ Expander��6;    � y�$ Hidden=�6Q   5E     P� 5F     
 � {� .  . �5G     ��  �@J�Opacity$	 .56Q�68   5H     5J     5L      5M  
   P� 5N     
 �@%�IsVirtualizing . . �5O     ��  � �� 5P     �� 5Q     .R�5R     $� 5S     5U     5V     5X     5Z     