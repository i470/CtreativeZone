   M S B A M L   `   `   `  ����J  FSpyGlass.Design, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:SpyGlass.Design.WpfSpyGlass.Design.Wpf  5      O,clr-namespace:SpyGlass.Design.Wpf.ConvertersSpyGlass.Design.Wpf.Converters  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� SourceE    ?SpyGlass.Design.Wpf.Converters.TextFieldHintVisibilityConverter $   TextFieldHintVisibilityConverter2   ,SpyGlass.Design.Wpf.Converters.MathConverter   	Operation  DivisionMathConverter  DatePickerTextBox �� 
TargetType:  4System.Windows.Controls.Primitives.DatePickerTextBox �� Property �� Value �� RelativeSource �� AncestorType �� Path)   #SpyGlass.Design.Wpf.TextFieldAssist	 �� 
TargetType
 � 	Resources  Key �� Color'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   Transitions%  System.Windows.VisualTransition   GeneratedDuration	   To   States   System.Windows.VisualState   
Storyboard g� Duration	 W� To �� TargetProperty �� 
TargetName �Name#   SpyGlass.Design.Wpf.SmartHint  Name   UseFloating   FloatingScale   FloatingOffset   Hint   	HintProxy=	   7SpyGlass.Design.Wpf.Converters.HintProxyFabricConverter 	  Instance �� 	Converter   HintOpacity  ��Name! J� IsHitTestVisible" J� Opacity# ��Name$ �� Triggers% ]� 
Conditions& �� 
SourceName' �� Property( �� Value) �� 
TargetName  PrimaryHueMidBrush  DatePickerCalendarPortrait&
   System.Windows.Controls.Calendar  Body 	 Paper  CalendarDayButton 	 CalendarButton* J� 	CacheMode 
 ShadowDepth4+ J� Effect, �� Padding5  /System.Windows.Controls.Primitives.CalendarItem-  Name  CalendarItemPortrait  
DatePicker(  "System.Windows.Controls.DatePicker  TextBoxBorder  ValidationErrorTemplate. ��Name/ J� SnapsToDevicePixels0 � ColumnDefinitions1 ��Name  DropDownButtonTemplate2  Name3 �Name4 � AllowsTransparency<   6SpyGlass.Design.Wpf.CustomPopupPlacementCallbackHelper5   LargePopupCallback#6 � CustomPopupPlacementCallback7 � 	StaysOpen8 � PlacementTarget9 �� ElementName: ��Name; �� StrokeDashArray< �� StrokeDashCap	= �� X1	> �� Y1	? �� Y2@ �� ConverterParameter	A �� X2#   SpyGlass.Design.Wpf.UnderlineB  NameC P� PropertyD P� Value  ValidationErrorBrush$   SpyGlass.Design.Wpf.HintAssist  FloatingHintDatePickerE �� BasedOn�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      )wpf!clr-namespace:SpyGlass.Design.Wpf  5      ;
converters,clr-namespace:SpyGlass.Design.Wpf.Converters  5        5      �� 5   
   $ SpyGlass.Calendar.xaml?�6   �� 5   
   $+ %SpyGlass.ValidationErrorTemplate.xaml?�6   %?  &	        &	      &	 8     &	 	    7  7 	 &	     7  7  7  7  &	 �    7     5      62     5      $ Divide=�6   62   �� 5      "  6&   .�5   
   ��  � �� 6'   ��  �� " �$ (TextElement.Foreground)��� 5   
    �@ TextBoxViewMargin$ 0 0 0 0q�6B   �� 5   
    � ��
 ���� 6'   �� 5   
    �@��
CaretBrush 6'   ��  �� *Self+$ BorderBrush��� 5   
    �@��PanningMode$ VerticalFirst=�65   �� 5   
    �@��IsFlicksEnabled .  63   �� 5   
    � �� 5      �� 5      "	  6"   .R�5      � 
 5      ���� 5      WatermarkBrush # z��6E   5       5        5      CommonStates�� 5   "     5   &   $ 0D�67     5    &   $ 0:0:0.1D�67   $ 	MouseOver��6S   . 5"   "     
Normal��6.     5#   "   	MouseOver��6.   5$        5%      WatermarkStates�� 5&   "     5'   &   $ 0D�67   . 5)   "     Unwatermarked��6.     5*   "   Watermarked��. 5+   &   �� .��5,   *   W� $ 0D�6:   $	 .23X�6G   $ Opacity�6P   $ PART_Watermark��6t   5-   '   5.   #   5/        50      FocusStates�� 51   "     52   &   $ 0D�67   . 54   "     	Unfocused��6.     55   "   Focused��6.   56      .+�58      � $ WatermarkContent��6   #��z��69   #��z��6|   .+�59        $
 Hint��6,   #��z��5:   ,    5;   ,   �� $! (wpf:HintAssist.IsFloating)� �� *TemplatedParent+ 5<   ,   �� $$ (wpf:HintAssist.FloatingScale)� �� *TemplatedParent+ 5=   ,   �� $% (wpf:HintAssist.FloatingOffset)� �� *TemplatedParent+ 5>   ,   �� $ (wpf:HintAssist.Hint)� �� *TemplatedParent+ 5?   ,   ��  �� *TemplatedParent+# Z  5@   ,   �� $" (wpf:HintAssist.HintOpacity)� �� *TemplatedParent+�� 5A      $  PART_Watermark��6-   |�.  ! .  $" 0Q�6p   $y�	Collapsed=�6|   �� 5B      $# PART_ContentHost��6+   #��z��6E   $��0q�6�   #��z��6�   5C      5D      $ 5E      ]� 5F      % 5G      �� 5H   "   $
& Hint��6,   ' �@ IsContentNullOrEmpty( .  6^   �� 5I   "   ' �@J�IsKeyboardFocused( . 6I   ./�5K      �� $
) Hint��6%   # �  6M    � ���� 5L      $
) Hint��6%    �@ HintOpacity$ 1Q�6N   5M      5O      5Q      5R      �� 5T      " 
 6/   .�5U   
   ��  � ��# �  6'   �� 5V   
    � ��# �  6'   �� 5W   
    �@
 CalendarDayButtonStyle8   63   �� 5X   
    �@
 CalendarButtonStyle8  60   �� 5Y   
    � �� 5Z      �� 5[      "	 
 6"   .R�5\      �� * 6'   ��  �� *Self+$" (wpf:ShadowAssist.CacheMode)�.u�5]      �� #+ � 
 6!   $, 
16 8 16 24q�6I   ._�5^        $- PART_CalendarItem��6+   #��z��6F   #��z��6r   #���  6�   5_      5`      5a      5c      5d      �� 5f      "  6   .�5g   
   ��  � ��$ Center=�6.   �� 5h   
    � �� 6'   ��  �� " �$ (TextElement.Foreground)��� 5i   
    � ��# �  6(   �� 5j   
    � ��
 ���� 6'   �� 5k   
    �@ CalendarStyle8   6*   �� 5l   
    �@ IsTodayHighlighted . 6/   �� 5m   
    �@ SelectedDateFormat$ Short=�6/   �� 5n   
    � ��$ 0 0 0 1q�6,   �� 5o   
    � ��$ Stretch=�67   �� 5p   
    � ��$ 0 0 0 0q�6#   �� 5q   
    �@=�ErrorTemplate8  65   �� 5r   
    � �� 5s      �� 5t      "	  6"   .R�5u      � .+�5v      �� $. border��5y   !   #��z��5v   !   #��z��5w   !   #��z��5x   !   $, 0 4 0 4q�5z   !   / .  5|        5}   "   CommonStates��. 5~   &     
Normal��62     5   &   Disabled��. 5�   *   �� .��5�   .   W� $ 0D�6>   $	 .56X�6K   $ Opacity�6T   $ 	PART_Root��6x   5�   +   5�   '   5�   #   ._�5�      � $ 	PART_Root��6#   #��z��5�   #   #��z��5�   #   
������ 
 5�   "   ���� 5�   &   DropDownButtonTemplate "	 ��6U   .R�5�   *   � 
������  5�   .     5�   2   CommonStates�� 5�   6     5�   :   $ 0D�6K     5�   :   $ 0:0:0.1D�6K   $ 	MouseOver��6g     5�   :   $ 0:0:0.1D�6K   $ Pressed��6g   . 5�   6     
Normal��6B     5�   6   	MouseOver��6B     5�   6   Pressed��6B     5�   6   Disabled��6B   5�   3   .+�5�   .   (� .��5�   2   �� $��24��69   $��24��6D   .+�5�   6   F� �������!��!�@KL ��!�@KL  z ���! z � $� @B � $� ��- � z ��- � z @B р�[ @B р�[ ��- �@KL ��- �P[; ��- ��- P[; ��- @KL ���- ��!�@KL @o@ �� �� ���!@o@�@o@��! �� �� �@o@@KL �@o@P[; ��2��- ��!��- р���- р�@B �@f � � �  � � � @f�@f@f�@f � 	#��z��6�   5�   3   5�   /   5�   +   5�   '   5�   #   0 5�   "   �� 5�   &   $��* �67   �� 5�   &   $
��Auto �67   .+�5�   "   �� $1 PART_Button��6)   $��1��5�   )   #��z��5�   )   |�.  $��Right=�5�   )   $��4 0 0 -3q�5�   )   8�� $��0q�5�   )   $��17��5�   )     5�   "   $2 PART_TextBox��64   $��0��5�   4   #|�z|�5�   4   $��Stretch=�5�   4   $��0��5�   4   $��Center=�5�   4   #���  5�   4   $��Stretch=�5�   4   � 5�   "   $3 
PART_Popup��6(   4 . $��Custom=�5�   (   #6 Z5 5�   (   7 .  $
��Fade=�5�   (   8 5�   (   �� $9 PART_TextBox��5�   (   5�      5�      �� 5�      $: 
DashedLine��6   $��Bottom=�63   $y�Hidden=�6N   $; 1,2.5R�5�   �   $< Round=�6�   $= 0��5�      $> 0��6U   $? 0��6\   #��z��5�      $
" 0.56Q�6F   ��5�      �� *BorderThickness.Bottom+$9 border��8  $
@ 0.75��A 5�   &   �� *ActualWidth+$9 border��5�   F     5�      $B 	Underline��6(   y�6;   �� $0 *(wpf:TextFieldAssist.DecorationVisibility)� �� *TemplatedParent+5�      $ 5�      P� 5�      C � {�D .  . �5�      �� $) border��68    �@J�Opacity$
 0.56Q�6L   �� 5�      $) 
DashedLine��6;    � y�$ Visible=�6T   �� 5�      $) border��6<    � ��
 ���� 6P   5�      P� 5�      C �@J�IsMouseOverD . . �5�      �� # �  6<    � ��5�      P� 5�      C �@J�IsKeyboardFocusWithinD . . �5�      �� $) 	Underline��6%    �@ IsActive . 6P   �� 5�      # �  6=    � ��5�      P� 5�      C �@=�HasErrorD . . �5�      �� # �  6<    � ���� 5�      $) 	Underline��6%   # �  6R    � ��5�      P� 5�      C �@ 
IsFloatingD . . �5�      �� $) border��6%    � ��$ 0 12 0 0q�6K   5�      5�      5�      5�      �� 5�      "  6+   8E   .�5�   
   ��  �@ 
IsFloating . 66   5�      5�      