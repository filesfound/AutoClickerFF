   M S B A M L   `   `   `  ���� H  DAutoClickerFF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:AutoClickerFFAutoClickerFF      AutoClickerFF.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     -localclr-namespace:AutoClickerFF     -     � Title$  AutoClickerFF��$��211.487��$��322.046�� � 
ResizeMode$ NoResize=� � Icon$ AutoClickerFF_icon.ico��.��� $��10q�$��Center=�$��Center=�.+�	� -    	�Name$ LeftClickRadioButton��$��
Left Click��$
��Left=�$	��Top=� d� 	IsChecked$
 TrueY�$��0,2,0,0q�	� -   $ RightClickRadioButton��$��Right Click��$
��Left=�$��86,2,0,0q�$	��Top=��� -    ��Name$ label��$��Interval��$
��Left=�$��
174,-4,0,0q�$	��Top=��� -    ��Name$ IntervalComboBox��$
��Left=�$��
223,-2,0,0q�$	��Top=�$��59�� �� SelectedIndex$ 0��.@��� $
��0.01���� $
��0.10���� $
��0.50���� $
��1.00���� $
��2.00���� -    ��Name$ InfoTextBox��$
��Left=�$��90��$��6,25,0,0q�	 �� TextWrapping$
	 Wrap=�$��yHow To Use:
1. Move mouse to clicking position.
2. Press Ctrl + D to start/stop auto clicking!

Website: filesfound.net��
 �� 
IsReadOnly
 . $	��Top=�$	��276�� � Cursor$ Arrow��{�.   J� 	AllowDrop .  |�.  ��.  �� -   $ ClickCountTextBox��$
��Left=�$��18��$��159,129,0,0q�$
	 Wrap=�$	��Top=�$	��123�� �� TextAlignment$ Right=�$ Arrow�����	#FFE5E5E5�� -   $ ClickCountLabel��$��Click Count:��$
��Left=�$��
86,125,0,0q�$	��Top=�$��28���� -	    ��Name$ StatusImage��$��Center=�$��Center=�$��autoclickOff.png��$��Uniform=� �� EdgeMode$ Aliased=� � UseLayoutRounding . $��0,120,250,1q����� *Source.PixelWidth+ �� RelativeSource �� *Self+���� *Source.PixelHeight+ �� *Self+z�V� .~��� �� �� T� 