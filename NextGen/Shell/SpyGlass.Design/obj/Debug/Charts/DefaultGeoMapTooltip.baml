   M S B A M L   `   `   `  ����J  FSpyGlass.Design, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:LiveCharts.WpfLiveCharts.Wpf  5       )    #LiveCharts.Wpf.DefaultGeoMapTooltip   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,lvcclr-namespace:LiveCharts.Wpf     5       $	��1.3q�5$      ��5%      �� 5&   
     �� Color$  #202020��6    �� Opacity$ .8Q�6*    � 	Resources 5(      *   $LiveCharts.Wpf.GeoDataLabelConverter   DataLabelConverter��%   &	          5)   
   6A   5*      ��5+      �� 5,   
   .R�5-      ��  �� Padding$ 20 10q�5.   A   ��5-      �� *
Background+ �� CornerRadius 67   �� *CornerRadius+��5.      �� *BorderThickness+._�5/      �  � ColumnDefinitions 50      �� 51      $
��Auto �6+   6:   �� 52      $
��Auto �6+   6:   .+�54      �� $
��Bold"�6    
���������6E   �� *GeoData.Name+6e   �� 55      $��1��6    $��10 0 0 0q�60   
�������$
��Bold"�6U   ��56      `� 57       `� 	Converter# [  6+   .1�58   "   ��  �� Path$ GeoData.Value�6*   �� 59   "   $ LabelFormatter�6*   5:      5<      5=      5>      5?      5A      