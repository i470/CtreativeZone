   M S B A M L   `   `   `  ����J  FSpyGlass.Design, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:SpyGlass.DesignSpyGlass.Design  5   	   9!clr-namespace:SpyGlass.Design.WpfSpyGlass.Design.Wpf  5   	        SpyGlass.Design.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:SpyGlass.Design     5   	   1wpf!clr-namespace:SpyGlass.Design.Wpf     5   	     � Title$  
MainWindow��5	   	   $��1520.452��6   $��792.67��6.   .��5      � .+�5   
   ��  �� Orientation$ Vertical=�6      Base100#���   6,   .+�5      �� $
��Left=�6   $��36.652��63   $	��Top=�6C   $��193.846��6[   ��5      �� 5       �� Color$ 	#FFB5DA0C��6&   5      �� 5        Base200#���  6   $
��Left=�69   $��36.652��6T   $	��Top=�6d   $��193.846��6|   �� 5      $
��Left=�6   $��36.652��63   $	��Top=�6C   $��193.846��6[   ��5      �� 5      $ 	#FF00855B��6&   5      �� 5      $
��Left=�6   $��36.652��63   $	��Top=�6C   $��193.846��6[   ��5      �� 5      $ 	#FF003B17��6&   5      �� 5        	LimeGreen#���  6   $
��Left=�6;   $��36.652��6V   $	��Top=�6f   $��193.846��6~   �� 5       
 Purple#���  6   $
��Left=�68   $��36.652��6S   $	��Top=�6c   $��193.846��6{   �� 5        Blue#���  6   $
��Left=�66   $��36.652��6Q   $	��Top=�6a   $��193.846��6y   �� 5        	 Green#���  6   $
��Left=�67   $��36.652��6R   $	��Top=�6b   $��193.846��6z   �� 5!      $��Button��6   $
��Left=�6&   $��45��6A   $	��145��6N   �� 5"       ! FloatingActionMiniLightButton#��[ 6   $
��Left=�6L   $��5q�6g    � ToolTip$&  wpfFloatingActionMiniLightButton��5#      .��5$      "   SpyGlass.Design.Wpf.PackIcon  �   �ControlzEx.PackIconBase`1[[SpyGlass.Design.Wpf.PackIconKind, SpyGlass.Design, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]   Kind$ Alarm=�6   $��24��6,   $��24��68   5%      �� 5&        FloatingActionMiniButton#��[ 6   $��5q�6G   $
��Left=�5'      $! wpfFloatingActionMiniButton��5(      .��5)        $ Alarm=�6   $��24��6,   $��24��68   5*      �� 5+         FloatingActionMiniDarkButton#��[ 6   $��5q�6K   $
��Left=�5,      $! wpfFloatingActionMiniButton��5-      .��5.        $ Alarm=�6   $��24��6,   $��24��68   5/      �� 50       	 FloatingActionLightButton#��[	 6   $��5q�6H   $
��Left=�51      $! wpfFloatingActionMiniButton��52      .��53        $ Alarm=�6   $��24��6,   $��24��68   54      �� 55       
 RaisedButton#��[
 6   $��5q�6;   $
��Left=�56      $! wpfFloatingActionMiniButton��57      .��58        $ Alarm=�6   $��24��6,   $��24��68   59      �� 5:      $ 
Horizontal=�6   $��2q�62   .+�5;      	� 
�������  RadioButton#��[ 61   $��4q�6V    d� 	IsChecked$
 TrueY�6a   $��FIRST��6r   	� 5<      
�������  LightRadioButton#��[ 61   $��4q�6[   $ FalseY�6f   $��SECOND��6x   	� 5=      
�������  DarkRadioButton#��[ 61   $��4q�6Z   $ FalseY�6e   $��THIRD��6w   	� 5>      
�������  AccentRadioButton#��[ 61   $��4q�6\   $ FalseY�6g   $��THIRD��6y   5?      �� 5@       �� SelectionMode$ Extended=�6     ToolToggleFlatListBox#��[ 60   $��10q�6_    5A      �� 5B      .+�5C      �� $��wpfToolToggleListBox��6$   �� 5D      $��Multiple selection��6$   �� 5E      $A��;ListBoxAssist.IsToggle allows more natural toggle behaviour��6$   5F      .@�5H      �� .��5I        $ 
FormatBold=�6#   5J      �� 5K      .��5L        $ FormatItalic=�6#   5M      �� 5N      -   5         ��Name$ UnderlineCheckbox��5N      .��5O        $ FormatUnderline=�6#   5P      5Q      �� 5S        ToolToggleListBox#��[ 6    �� SelectedIndex$ 0��6A   $��10q�6S    5T      �� 5U      .+�5V      �� $��wpfToolToggleListBox��6$   �� 5W      $��Exclusive selection��6$   �� 5X      $A��;ListBoxAssist.IsToggle allows more natural toggle behaviour��6$   5Y      .@�5[      �� .��5\        $ FormatAlignLeft=�6#   5]      �� 5^      .��5_        $ FormatAlignCenter=�6#   5`      �� 5a      .��5b        $ FormatAlignRight=�6#   5c      �� 5d      .��5e        $ FormatAlignJustify=�6#   5f      5g      �� 5h      $��0 16 0 0q�6   $��0 1 0 0q�6'     Divider#���  6A   #   SpyGlass.Design.Wpf.RatingBar  5i      -   5        	  Name$	 CustomRatingBar��5i      

   Max$
 3��65      Value$ 2��6=      Orientation$ Vertical=�6G      ValueItemTemplate 5j      �� 5k       �� DataType$ system:Int32��6#   .R�5l      � .+�5m        $
 Star=�6+   $��24��67   $��24��6C   �� 5n      $��Center=�69   $��Center=�6V   $��8(�5o   ,     PrimaryHueBrush#���  5p   ,   ��5n   (   �� 5p   ,   5q      5r      5t      �� 5w       �� TickFrequency$ 5Q�6    �� Orientation$ 
Horizontal=�6'    � Minimum$ 1Q�6@    � Maximum$ 50Q�6L    � Value$ 25Q�6Y   $��10q�6d   �� 5x      $ 
Horizontal=�6   $ 0Q�6.   $	 100Q�6:   $	��100��6H   $��10q�6U     DiscreteSlider#��[ 5y      $ MDiscreteSlider��5z      5{      �� 5|   
   $ Vertical=�6   $
��Left=�6,   $	��Top=�6G   $��360,13.031,0,0q�6_   .+�5}      �� $
��Left=�6   $��98.551��63   $	��Top=�6C   $��213.394��6[    �� RadiusY$ 4.887��6k    �� RadiusX$ 4.887��6{   $	��0,5q�6�     PrimaryHueLightBrush#���  6�   �� 5~      $
��Left=�6   $��98.551��63   $	��Top=�6C   $��213.394��6[   $ 4.887��6k   $ 4.887��6{   $	��0,5q�6�     PurpleGradient#���  6�   �� 5      $
��Left=�6   $��98.551��63   $	��Top=�6C   $��213.394��6[   $ 4.887��6k   $ 4.887��6{   $	��0,5q�6�     GreenGradient#���  6�   �� 5�      $
��Left=�6   $��98.551��63   $	��Top=�6C   $��213.394��6[   $ 4.887��6k   $ 4.887��6{   $	��0,5q�6�     PurplePinkGradient#���  6�   5�      5�      5�      