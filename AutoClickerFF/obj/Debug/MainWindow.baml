   M S B A M L   `   `   `  ����H  DAutoClickerFF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:AutoClickerFFAutoClickerFF  5   	       AutoClickerFF.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:AutoClickerFF     5   	   -   5          � Title$  AutoClickerFF��5	   	   $��211.487��6   $��322.046��60    � 
ResizeMode$ NoResize=�6@    � Icon$ AutoClickerFF_icon.ico��6V   .��5
      � $��10q�6   $��Center=�6   $��Center=�61   .+�5      	� -   5         	�Name$ LeftClickRadioButton��5      $��
Left Click��6.   $
��Left=�6C   $	��Top=�6^    d� 	IsChecked$
 TrueY�6v   $��0,2,0,0q�6�   6�   	� 5      -   5        $ RightClickRadioButton��5      $��Right Click��6/   $
��Left=�6E   $��86,2,0,0q�6`   $	��Top=�6r   6�   �� 5      -   5         ��Name$ label��5   
   $��Interval��6   $
��Left=�6,   $��
174,-4,0,0q�6G   $	��Top=�6[   �� 5      -   5         ��Name$ IntervalComboBox��5      $
��Left=�6'   $��
223,-2,0,0q�6B   $	��Top=�6V   $��59��6n    �� SelectedIndex$ 0��6y   .@�5      �� $
��0.01��6   �� 5      $
��0.10��6   �� 5      $
��0.50��6   �� 5      $
��1.00��6   �� 5      $
��2.00��6   5      �� 5      -   5         ��Name$ textBox��5      $
��Left=�6   $��90��68   $��6,25,0,0q�6D   	 �� TextWrapping$
	 Wrap=�6V   $��yHow To Use:
1. Move mouse to clicking position.
2. Press Ctrl + D to start/stop auto clicking!

Website: filesfound.net��6j   
 �� 
IsReadOnly
 . $	��Top=�6  $	��276��6-   � Cursor$ Arrow��69  {�.   J� 	AllowDrop .  |�.  ��.  6~  �� 5      -   5        $ ClickCountTextBox��5      $
��Left=�6'   $��18��6B   $��159,129,0,0q�6N   $
	 Wrap=�6c   $	��Top=�6w   $	��123��6�    �� TextAlignment$ Right=�6�   $ Arrow��6�   ���	#FFE5E5E56�   �� 5      -   5        $ label1��5   
   $��Click Count:��6   $
��Left=�61   $��
86,125,0,0q�6L   $	��Top=�6`   $��28��6x   �� 5      -	   5         ��Name$ StatusImage��5   
   $��Center=�6   $��Center=�6<   $��autoclickOff.png��6W   $��Uniform=�6q    �� EdgeMode$ Aliased=�6�    � UseLayoutRounding . $��0,120,250,1q�5   O   ��5      �� *Source.PixelWidth+ �� RelativeSource �� *Self+��5      �� *Source.PixelHeight+ �� *Self+z�5      V� 5      .~�5      �� �� 5      �� 5      T� 5       5!      5#      5'      5(      