   M S B A M L   `   `   `  ����J  FSpyGlass.Design, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:SpyGlass.Design.Wpf.ThemesSpyGlass.Design.Wpf.Themes  5      9!clr-namespace:SpyGlass.Design.WpfSpyGlass.Design.Wpf  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089-   'System.Windows.Media.Animation.SineEase   FlipEase7  1System.Windows.Media.Animation.EasingFunctionBase    
EasingMode!   SpyGlass.Design.Wpf.Flipper �� 
TargetType-  'System.Windows.Input.KeyboardNavigation �� Property �� Value �� 
TargetType ��Name'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   Transitions%  System.Windows.VisualTransition   From		   To
   
Storyboard g� FillBehavior g� Duration �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� Value O� KeyTime   EasingFunction  System.Windows.Visibility   Visible R� Value R� KeyTime   	Collapsed   States 	  System.Windows.VisualState 	  
Storyboard!
   SpyGlass.Design.Wpf.Plane3D 
 Name 
  	RotationY 
  ZFactor 
  Child ��Name   FrontContent   FrontContentTemplate#   FrontContentTemplateSelector    FrontContentStringFormat! �� ContentStringFormat" J� RenderTransformOrigin#   BackContent$   BackContentTemplate"%   BackContentTemplateSelector&   BackContentStringFormat  CardFlipper' �� BasedOn   SpyGlass.Design.Wpf.Card�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      2local(clr-namespace:SpyGlass.Design.Wpf.Themes  5      )wpf!clr-namespace:SpyGlass.Design.Wpf  5      %w  &	        '  #     7   7   7   7   7   7   7   7   &	 �
    7 7   7   7   7   7   7   7   7      5      $  	EaseInOut=�6    �� 5      "  6   .�5	   
   ��  �@ 	IsTabStop .  69   �� 5
   
    � ��$	 Top=�6.   �� 5   
    � ��$
 Left=�60   �� 5   
    � �� 5      �� 5      "  6"   .R�5      �� $ Border��5      #��z��5      #��z��6G   #��z��6s    5        5      
FlipStates�� 5   "     5   &   $ 	Unflipped��67   $	 Flipped��6H   .
 5   *   �� $ HoldEnd=�65   .��5   .   U� $ 0:0:0.4D�6L   $ 	RotationY�6_   $ Plane3D��6�   .\�5   2     $ 0Q�6G   $ 0:0:0.0��6Q   8   6c     5   2   $	 -90Q�6G   $ 0:0:0.2��6S   8  6e     5   2   $ 90Q�6G   $ 0:0:0.2��6R   8  6d     5   2   $ 0Q�6G   $ 0:0:0.4��6Q   8  6c   5   /   T� 5   .   $ 
Visibility�6M   $ BackContentPresenter��6t   ..�5   2   i� # Z 6I   $ 0:0:0.2��6o   5   /   T� 5   .   $ 
Visibility�6M   $ FrontContentPresenter��6t   ..�5    2   i� # Z 6I   $ 0:0:0.2��6q   5!   /   5"   +   5#   '     5$   &   $ Flipped��67   $	 	Unflipped��6F   .
 5%   *   �� $ HoldEnd=�65   .��5&   .   U� $ 0:0:0.4D�6L   $ 	RotationY�6_   $ Plane3D��6�   .\�5'   2     $ 0Q�6G   $ 0:0:0.0��6Q   8  6c     5(   2   $ 90Q�6G   $ 0:0:0.2��6R   8  6d     5)   2   $	 -90Q�6G   $ 0:0:0.2��6S   8  6e     5*   2   $ 0Q�6G   $ 0:0:0.4��6Q   8  6c   5+   /   T� 5,   .   $ 
Visibility�6M   $ BackContentPresenter��6t   ..�5-   2   i� # Z 6I   $ 0:0:0.2��6q   5.   /   T� 5/   .   $ 
Visibility�6M   $ FrontContentPresenter��6t   ..�50   2   i� # Z 6I   $ 0:0:0.2��6o   51   /   52   +   53   '   . 55   "   	  	Unflipped��. 56   &   �� .��57   *   T� $ 
Visibility�6I   $ BackContentPresenter��6p   ..�58   .   i� # Z 6E   59   +   T� 5:   *   $ 
Visibility�6I   $ FrontContentPresenter��6p   ..�5;   .   i� # Z 6E   5<   +   5=   '   5>   #   	  5?   "   Flipped��. 5@   &   �� .��5A   *   T� $ 
Visibility�6I   $ BackContentPresenter��6p   ..�5B   .   i� # Z 6E   5C   +   T� 5D   *   $ 
Visibility�6I   $ FrontContentPresenter��6p   ..�5E   .   i� # Z 6E   5F   +   5G   '   5H   #   5I      ._�5K      
  $ Plane3D��6&   $ 0Q�67   $ 2.055Q�6E   . 5L      � .+�5M   "   �� $ FrontContentPresenter��5N   %   #��z��5O   %   #��z 5P   %   #��z 5Q   %   #��z 5R   %   #! z  5S   %   $" .5,.5&�5T   %   �� 5U   "   $ BackContentPresenter��5V   %   $y�Hidden=�5W   %   #��z��5X   %   #��z# 5Y   %   #��z$ 5Z   %   #��z% 5[   %   #! z& 5\   %   $" .5,.5&�5]   %   5^      5_      5`      5a      5c      5d      �� 5f      "  6    8'   .�5g   
   ��  � �� 5h      �� 5i      "  6"   .R�5j      �� $ Border��5k      #��z��5j      #��z��6G   #��z��6s    5l        5m      
FlipStates�� 5n   "     5o   &   $ 	Unflipped��67   $	 Flipped��6H   .
 5p   *   �� $ HoldEnd=�65   .��5q   .   U� $ 0:0:0.4D�6L   $ 	RotationY�6_   $ PART_Plane3D��6�   .\�5r   2     $ 0Q�6G   $ 0:0:0.0��6Q   8  6c     5s   2   $	 -90Q�6G   $ 0:0:0.2��6S   8  6e     5t   2   $ 90Q�6G   $ 0:0:0.2��6R   8  6d     5u   2   $ 0Q�6G   $ 0:0:0.4��6Q   8  6c   5v   /   T� 5w   .   $ 
Visibility�6M   $ BackContentPresenter��6t   ..�5x   2   i� # Z 6I   $ 0:0:0.2��6o   5y   /   T� 5z   .   $ 
Visibility�6M   $ FrontContentPresenter��6t   ..�5{   2   i� # Z 6I   $ 0:0:0.2��6q   5|   /   5}   +   5~   '     5   &   $ Flipped��67   $	 	Unflipped��6F   .
 5�   *   �� $ HoldEnd=�65   .��5�   .   U� $ 0:0:0.4D�6L   $ 	RotationY�6_   $ PART_Plane3D��6�   .\�5�   2     $ 0Q�6G   $ 0:0:0.0��6Q   8  6c     5�   2   $ 90Q�6G   $ 0:0:0.2��6R   8  6d     5�   2   $	 -90Q�6G   $ 0:0:0.2��6S   8  6e     5�   2   $ 0Q�6G   $ 0:0:0.4��6Q   8  6c   5�   /   T� 5�   .   $ 
Visibility�6M   $ BackContentPresenter��6t   ..�5�   2   i� # Z 6I   $ 0:0:0.2��6q   5�   /   T� 5�   .   $ 
Visibility�6M   $ FrontContentPresenter��6t   ..�5�   2   i� # Z 6I   $ 0:0:0.2��6o   5�   /   5�   +   5�   '   . 5�   "   	  	Unflipped��. 5�   &   �� .��5�   *   T� $ 
Visibility�6I   $ BackContentPresenter��6p   ..�5�   .   i� # Z 6E   5�   +   T� 5�   *   $ 
Visibility�6I   $ FrontContentPresenter��6p   ..�5�   .   i� # Z 6E   5�   +   5�   '   5�   #   	  5�   "   Flipped��. 5�   &   �� .��5�   *   T� $ 
Visibility�6I   $ BackContentPresenter��6p   ..�5�   .   i� # Z 6E   5�   +   T� 5�   *   $ 
Visibility�6I   $ FrontContentPresenter��6p   ..�5�   .   i� # Z 6E   5�   +   5�   '   5�   #   5�      ._�5�      
  $ PART_Plane3D��6&   $ 0Q�6<   $ 2.055Q�6J   . 5�        .��5�   "   � .+�5�   &   �� $ FrontContentPresenter��67   #��z��5�   7   #��z 5�   7   #��z 5�   7   #��z 5�   7   #! z  5�   7   $" .5,.5&�5�   7   �� 5�   &   $ BackContentPresenter��67   $y�	Collapsed=�5�   7   #��z��5�   7   #��z# 5�   7   #��z$ 5�   7   #��z% 5�   7   #! z& 5�   7   $" .5,.5&�5�   7   5�   #   5�      5�      5�      5�      5�      5�      5�      