   M S B A M L   `   `   `  ����J  FSpyGlass.Design, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:LiveCharts.WpfLiveCharts.Wpf  5       #    LiveCharts.Wpf.DefaultTooltip   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,wpfclr-namespace:LiveCharts.Wpf     5       -   5          >�Name$  Control��5#       � 	Resources 5$       �� 
TargetType �� Property �� Value$   LiveCharts.Wpf.SharedConverter   SharedConverter.   (LiveCharts.Wpf.SharedVisibilityConverter  SharedVisibilityConverter-   'LiveCharts.Wpf.ChartPointLabelConverter  ChartPointLabelConverter5   /LiveCharts.Wpf.ParticipationVisibilityConverter $  ParticipationVisibilityConverter  Bvc  GroupedPoints �� Source �� GroupDescriptions2  ,System.Windows.Data.PropertyGroupDescription   PropertyName��%{  '��       &	  \     &	 o     &	 �     &	 �     &	 �     &	 �     �� 5%   
   " ��6   .�5&      ��  � �� 6+   �� *
Foreground+6J   5'        5(   
   6     5)   
   6(     5*   
   6'     5+   
   6/   �� 5,   
   65   �� 5-   
    65   �� *Data.Points+ 5.        5/      $$ ChartPoint.SeriesView.Grouping��6+   51      52      ��53      �� 54   
   .R�55      � $��Center=�6   $��Center=�6.   .+�56      �� $��1q�6;   ��6   �� *
Background+ J� Effect 6O   �� *Effect+	 �� CornerRadius	 6i   �� *CornerRadius+��57      �� *Width+��61   �� *Height+�� 58      ��6   �� *
Background+	 6;   �� *CornerRadius+��59      �� *BorderThickness+
 �� Padding
 6E   �� *	Padding+��5:      �� *BorderBrush+��5;      �� *Width+��61   �� *Height+._�5<      ��  �� Orientation$ Vertical=�6!   .+�5=      �� $��Center=�6f   $
��Bold"�6�   ��6$   �� *Data+ �� 	Converter# [  y�5>      `� 5?   "    `� 	Converter# [ 6/   .1�5@   &   ��  �� Path$
 Data�6.   6<   �� 5A   &   $ 	ShowTitle�6.   6A   5B   #   5D      �� 5E       � IsSharedSizeScope . ��6'   ��  �� Source# [  �� 
GroupStyle 5F      (  "System.Windows.Controls.GroupStyle  5G   "      HeaderTemplate 5H   &   �� 5I   *   .R�5J   .   �� ��6?   �� *Name+5K   +   5M   #   ��5O      �� 5P   "    �� DataType'   !LiveCharts.Wpf.DataPointViewModel"  6/   .R�5Q   &   � $��2q�6+   $��Center=�66   $��Center=�6Q    � ColumnDefinitions 5R   *   �� 5S   .   $
��Auto �6?   �� 5T   .   $
��Auto �6?    z� SharedSizeGroup$ Title��6L   �� 5U   .   $
��Auto �6?   $ Label��6L   �� 5V   .   $
��Auto �6?   $ Participation��6L   .+�5X   *   F�  �� Stretch$
 Fill=�5\   .   ��5X   /   �� *
BulletSize+ �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorLevel$ 1�� �� AncestorType" >���5Y   .   �� *
BulletSize+ �� $ FindAncestor=�$ 1��" >���5Z   .   �� *Series.StrokeThickness+��5[   .   �� *Series.Stroke+��6O   �� *Series.Fill+��5\   =   �� *Series.PointGeometry+y�5]   .   �� *
ShowSeries+ �� ElementName$ Control��# [ �� 5^   *   $��1��64   $��Center=�6b   $��5 0 5 0q�6}   ��6D   �� *Series.Title+y�5_   4   �� *
ShowSeries+$ Control��# [ �� 5a   *   $��2��64   $��Center=�6�   ��6D   �� *
ChartPoint+# [ 6�   �� 5c   *   $��3��64   $��Center=�5d   0   $��5 0 0 0q�6K   ��5c   D   �� *ChartPoint.Participation+ �� StringFormat$ {0:P}��y�5e   0   �� *DataContext.Data+ �� *FindAncestor+" ��# [ 5h   '   5i   #   5k      5l      5m      5n      5o      5q      