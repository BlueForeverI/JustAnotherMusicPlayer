   M S B A M L   `   `   `  ����  JustAnotherMusicPlayer     JustAnotherMusicPlayer.App   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     6P   @d2http://schemas.microsoft.com/expression/blend/2008     6�   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6�     �� 	Resources  5       �� 
TargetType   windowBackground �� Property �� Value �� EndPoint �� 
StartPoint � Color � Offset  
background  	listSongs �� Orientation	 � Orientation
 �� 	Resources �� Color �� Triggers P� Property P� Value  playerButtonStyle �� 
TargetType A�Name J� RenderTransformOrigin 
� GradientOrigin ��Name J� SnapsToDevicePixels �� ScaleY �� ScaleX �� Triggers �� 
TargetName  songInfoStyle  customSliderPlayer � RowDefinitions m�Name m� Fill m� 	Placement ��Name �� CornerRadius ) %HorizontalSliderTrackNormalBackground % !HorizontalSliderTrackNormalBorder ��Name  ]�Name! ]� DecreaseRepeatButton" �� DecreaseLarge  repeatButtonSlider# ]� IncreaseRepeatButton$ �� IncreaseLarge% ]� Thumb& n�Name 	 customThumb 
 pushButtonStyle' � 	Resources  Key( �� TargetProperty) �� 
TargetName8  2System.Windows.Media.Animation.EasingColorKeyFrame* �� KeyTime+ �� Value8  2System.Windows.Media.Animation.EasingPointKeyFrame, $� KeyTime- $� Value9  3System.Windows.Media.Animation.EasingDoubleKeyFrame. O� KeyTime/ O� Value'  !System.Windows.VisualStateManager0   VisualStateGroups%  System.Windows.VisualStateGroup1   States   System.Windows.VisualState2   
Storyboard3 �� RadiusY4 �� RadiusX5 � MappingMode6 ��Name��%�,  &	        &	 u    &	 �    &	 [    &	 h    &	 +    &		 �    &	 |    &	 �    &	 �    &	
 O    �� 5   
   " �6   .�5      ��  � �� 5      �� 5      $	 0,3&�6$   $	 0,0&�63   .��5      � $ DarkBlue��6   $ 0Q�6/   � 5	      $
 Cyan��6   $ 1Q�6+   � 5
      $ 	LightBlue��6   $ 2Q�60   � 5      $ DarkBlue��6   $ 3Q�6/   � 5      $ 	#FF002C9F��6   $ 0.443Q�60   5      5      5      �� 5   
   " ��6   .�5      ��  � �� 5      �� 5      $	 0,0&�6*   $	 0,2&�6;   .��5      � $ 	LightBlue��6'   $ 0Q�69   � 5      $
 Blue��6'   $ 1Q�64   � 5      $ 	LightBlue��6'   $ 2Q�69   5      5      �� 5       �@��RadiusX$ 30��6(   �� 5       �@��RadiusY$ 30��6(   5      �� 5    
   " ��6   .�5!      ��  � �� 5"      �� 5#      .R�5$      � $��
0, 0, 0, 3q�6   .+�5%      �� $ 
Horizontal=�6)   .+�5&      �� $��20(�6@   ��6(   �� *Artist+6@   �� 5'      $	�� - ��6(   $��20(�63   �� 5(      $��20(�6?   ��6(   �� *Title+6?   5)      5*      5+      5-      �� 5.       � �� 5/      �� 50      .R�51      � $	 Vertical=�6$   
����ح�6;   52      54      �� 55       � �� 56      �� 57      " ��6   
 58      ���� 59      $ YellowGreen��6`   (��       6.   * SystemColors.HighlightBrushKey+)6`   5:      .�5;      ��  � ��$ 0q�64    5<      P� 5=       �@��
IsSelected . . �5>   "   ��  � ��
 � ���6?   �� 5?   "    � ��
 �   �6?   5@      5B      5D      �� 5E       � ��$ 1q�60   5F      �� 5G      " ��6'   .�5H      ��  � �� 5I   	   �� 5J   
   " ��6   .R�5K      � .+�5L      A� $ ellipse��6   $��3��6%   $ 0.5,0.5&�69   ��5M      �� 5N      $ 0.5,1&�6"   $ 0.5,0&�63   .��5O      � $ 	#FF0F4FA5��6   $ 0Q�6.   � 5P      $ 	#FF137464��6   $ 1Q�6.   5Q      ��5S      
� 5T      $ 0.5,0.1&�6"   .��5U      � $ 	#FFFDFDFD��6   � 5V      $ 	#FF0614EB��6   $ 1Q�6.   � 5W      $ 	LightBlue��6   $ 2Q�6.   � 5X      $ 	#FF6DDCCF��6   $ 0.483Q�6.   � 5Y      $ 	#FF37B3DD��6   $ 0.617Q�6.   5Z      5\      �� 5]      $ contentPresenter��6   ��. # z 6R   $��Center=�6�   $��Center=�6�   $ 0.5,0.5&�6�   z�5^      V� 5_      .~�5`      �� $	 0.9Q�6   $	 0.9Q�6+   �� 5a      �� 5b      T� 5c      5d      5f      5g       5h      P� 5i       �@J�	IsFocused . 6)   P� 5j       �@��IsDefaulted . 6+   P� 5k       �@J�IsMouseOver . . �5l      �� $ ellipse��6$    � �� 5m      
� 5n      $ 0.5,0.1&�6#   .��5o      � $ 	#FFFDFDFD��6   � 5p      $ 	#FFEB8406��6   $ 1Q�6/   � 5q      $ 	LightBlue��6   $ 2Q�6/   � 5r      $ 	#FF6DDCCF��6   $ 0.483Q�6/   � 5s      $ 	#FF9FDD37��6   $ 0.617Q�6/   5t      5v      5w      P� 5x       � �� . . �5y      �� $ contentPresenter��65    �@J�RenderTransformOrigin$ 0.5,0.5&�6S   �� 5z      $ ellipse��6/    � z� 5{      V� 5|      .~�5}      �� $	 0.9Q�6   $	 0.9Q�6,   �� 5~      �� 5      T� 5�      5�      5�      �� 5�      $ contentPresenter��6/    � z� 5�      V� 5�      .~�5�      �� $
 0.81Q�6   $
 0.81Q�6-   �� 5�      �� 5�      T� 5�      5�      5�      5�      P� 5�       � {� .  6)   5�      5�   	   �� 5�       � ��$ 65��6    �� 5�       � ��$ 65��6!   �� 5�       � ��$ 5q�6!   5�      �� 5�      " ��6
   .�5�      ��  � ��$ 20(�6    �� 5�       � ��$
 Bold"�6"   �� 5�       � �� �	#FF037C5D6"   �� 5�       � ��$ Verdana)�6"   5�      �� 5�      " ��6
   .�5�      ��  � �� 5�      �� 5�      " ��6   .R�5�      �  5�   	   �� 5�   
   $
��Auto �6   �� 5�   
   $
��Auto �6   $��20��6&   �� 5�   
   $
��Auto �6   .+�5�   	   m� $ TopTick��6   $y�	Collapsed=�6"   
 � � �$	 Top=�5�   	   $��4��6   $��0��6$   m� 5�   	   $ Bottom��6   $y�	Collapsed=�6!   
 �  ��$ Bottom=�5�   	   $��4��6   $��0��6'   �� 5�   	   $ TrackBackground��6   $��1q�6)   $ 1��5�   	   $
��5, 0q�6   $��Center=�6(   $��8��5�   	   $��1��6   #���  5�   	   #���  5�   	   ._�5�   
   �� $��-6,-1q�6   $
��Auto��6    .+�5�      �� $ PART_SelectionRange��6)   $y�Hidden=�6   $
��Auto��5�      #��� ��6   #��� ��5�      $	��1.0��5�      $��Stretch=�6!   $��0q�6=   5�      5�   
   ]� 5�   	   $  
PART_Track��6   $��1��6#   ! 5�   
   �� 5�      #��Z" 6   #���  5�      # 5�   
   �� 5�      #��Z$ 6   #���  5�      % 5�   
   n� 5�      $& Thumb��6   #��� 	 6!   
���   �5�      5�   
   5�   	   5�      5�      5�      �� 5�      " n�6   .�5�      ��  �@�OverridesDefaultStyle . 6-   �� 5�       � �� 5�      �� 5�      " n�6   .R�5�      A� 
����  �
���**��$��15��6+   $��15��67   5�      5�      5�      �� 5�      " ��6%   .�5�      ��  �@�OverridesDefaultStyle . 6-   �� 5�       � �� .  6!   �� 5�       � |� .  6!   �� 5�       � �� 5�      �� 5�      " ��6   .R�5�      �� 
������ 6   5�      5�      5�      �� 5�      $ 	#FFB4851C��6B   �� 5�      $	 0,1&�6B   $	 0,0&�5�      .��5�      � $ 	#FF287F81��6   $ 0.092Q�6$   � 5�      $ 	#FF1065C4��6   $	 0.9Q�6$   5�      �� 5�      " ��6"   .�5�      ��  � �� 5�      �� 5�      " ��6   ' 5�      ���� 5�   	   storyBoardMouseOver .��5�   
   �� $H( B(Shape.Fill).(GradientBrush.GradientStops)[1].(GradientStop.Color)�6'   $) 	rectangle��6�   .g�5�        $* 0��6   $+ 	#FFEB6406��6+   5�      �� 5�   
   $H( B(Shape.Fill).(GradientBrush.GradientStops)[4].(GradientStop.Color)�6'   $) 	rectangle��6�   .g�5�        $* 0��6   $+ 	#FFDDA937��6+   5�      �� 5�   
   $H( B(Shape.Fill).(GradientBrush.GradientStops)[3].(GradientStop.Color)�6'   $) 	rectangle��6�   .g�5�        $* 0��6   $+ 	#FFDC816D��6+   5�      �� 5�   
   $6( 0(TextElement.Foreground).(SolidColorBrush.Color)�6'   $) 	textBlock��6t   .g�5�        $* 0��6   $+ 	#FF0B3847��6+   5�      *� 5�   
   $'( !(UIElement.RenderTransformOrigin)�6'   $) 	textBlock��6e   .'�5        $, 0��6   $- 0.5,0.5&�6+   5     U� 5  
   $V( P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6(   $) 	textBlock��6�   .\�5       $. 0��6    $/ 1Q�6,   5     U� 5  
   $V( P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6(   $) 	textBlock��6�   .\�5       $. 0��6    $/ 1Q�6,   5     5  
   �� 5	  	   storyBoardPressed .��5
  
   U� $V( P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6(   $) 	rectangle��6�   .\�5       $. 0��6    $	/ 0.9Q�6,   5     U� 5  
   $V( P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6(   $) 	rectangle��6�   .\�5       $. 0��6    $	/ 0.9Q�6,   5     *� 5  
   $'( !(UIElement.RenderTransformOrigin)�6'   $) 	textBlock��6e   .'�5       $, 0��6   $- 0.5,0.5&�6+   5     U� 5  
   $V( P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6(   $) 	textBlock��6�   .\�5       $. 0��6    $	/ 0.9Q�6,   5     U� 5  
   $V( P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6(   $) 	textBlock��6�   .\�5       $. 0��6    $	/ 0.9Q�6,   5     5  
   5  	   .R�5     � 0 5  	     5  
   CommonStates��.1 5       
Normal��6     5     	MouseOver��.2 5      �� .��5!     �� $H( B(Shape.Fill).(GradientBrush.GradientStops)[1].(GradientStop.Color)�6*   $) 	rectangle��6�   .g�5"       $* 0��6"   $+ Orange��6.   5#     �� 5$     $H( B(Shape.Fill).(GradientBrush.GradientStops)[4].(GradientStop.Color)�6*   $) 	rectangle��6�   .g�5%       $* 0��6"   $+ 	#FFD4DD37��6.   5&     �� 5'     $H( B(Shape.Fill).(GradientBrush.GradientStops)[3].(GradientStop.Color)�6*   $) 	rectangle��6�   .g�5(       $* 0��6"   $+ Orange��6.   5)     �� 5*     $6( 0(TextElement.Foreground).(SolidColorBrush.Color)�6*   $) 	textBlock��6w   .g�5+       $* 0��6"   $+ 	#FF0B2747��6.   5,     5-     5.       5/     Pressed��.2 50     �� .��51     U� $V( P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6+   $) 	rectangle��6�   .\�52       $. 0��6#   $	/ 0.9Q�6/   53     U� 54     $V( P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6+   $) 	rectangle��6�   .\�55       $. 0��6#   $	/ 0.9Q�6/   56     *� 57     $'( !(UIElement.RenderTransformOrigin)�6*   $) 	textBlock��6h   .'�58       $, 0��6"   $- 0.5,0.5&�6.   59     U� 5:     $V( P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6+   $) 	textBlock��6�   .\�5;       $. 0��6#   $	/ 0.9Q�6/   5<     U� 5=     $V( P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6+   $) 	textBlock��6�   .\�5>       $. 0��6#   $	/ 0.9Q�6/   5?     �� 5@     $H( B(Shape.Fill).(GradientBrush.GradientStops)[1].(GradientStop.Color)�6*   $) 	rectangle��6�   .g�5A       $* 0��6"   $+ Orange��6.   5B     �� 5C     $H( B(Shape.Fill).(GradientBrush.GradientStops)[4].(GradientStop.Color)�6*   $) 	rectangle��6�   .g�5D       $* 0��6"   $+ 	#FFD4DD37��6.   5E     �� 5F     $H( B(Shape.Fill).(GradientBrush.GradientStops)[3].(GradientStop.Color)�6*   $) 	rectangle��6�   .g�5G       $* 0��6"   $+ Orange��6.   5H     �� 5I     $6( 0(TextElement.Foreground).(SolidColorBrush.Color)�6*   $) 	textBlock��6w   .g�5J       $* 0��6"   $+ 	#FF0B2747��6.   5K     5L     5M       5N     Disabled��6   5O     .+�5Q  	   �� $ 	rectangle��6   $3 30��6&   $4 20��63   
���   �$ 0.5,0.5&�6O   z�5R  
   V� 5S     .~�5T     �� �� 5U     �� 5V     T� 5W     5X     ��5Z  
   �� 5[     $ 0.5,1&�6   $5 RelativeToBoundingBox=�60   $ 0.5,0&�6T   .��5\     � $ 	#FFFDFDFD��6   $ 1Q�6+   � 5]     $ 	#FF0614EB��6   � 5^     $ 	LightBlue��6   $ -1Q�6+   � 5_     $ 	#FF6DBBDC��6   $ 0.996Q�6+   � 5`     $ 	#FF37B3DD��6   $
 0.53Q�6+   5a     5c  
   �� 5d  	   $6 	textBlock��6   #��z��6&   $��Center=�6G   $��Center=�6d   $��Verdana)�6   $��18(�6�   ���	#FF0B472D$
��Bold"�6�   z�5e  
   V� 5f     .~�5g     �� �� 5h     �� 5i     T� 5j     5k     5m  
   5n  	    5o     P� 5p  	    �@J�	IsFocused . 6&   P� 5q  	    �@��IsDefaulted . 6(   P� 5r  	    � {� .  6&   5t     5v     5w     5x     5y     