   M S B A M L   `   `   `  ����E  AArduinoWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:ArduinoWPF
ArduinoWPF  5   	       ArduinoWPF.MainWindow   5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:ArduinoWPF     5   	     � Title$  
MainWindow��5	   	   $	��450��6   $	��250��6)   $	��700��69   $	��800��6H   .��5
      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��1��6    $	��200��5      $��50��6   $��10q�6#    "  MaterialDesignOutlinedComboBox#��[  6/   $��16(�5      $��5q�6    �� SelectedItem 5   0   �� *SelectedFrequency+.@�5      �� $��0.1 sec��6   $��16(�6-   �� 5      $��0.5 sec��6   $��16(�6-   �� 5      $��1 sec��6   $��16(�6+   5      �� 5   
   $��2��6   $��0��6   $��S1��6.   $	��150��6Y   $��40��6e      MaterialDesignOutlinedButton#��[ 5      $��10q�6G   ��5   ;   �� *	S1Command+5   G   �� 5!   
   $��2��6   $��1��6   $��S2��6.   $	��150��6Y   $��40��6e   #��[ 5"      $��10q�6G   ��5!   ;   �� *	S2Command+5"   G   �� 5$   
   $��1��6   $��0��6   $��Button1��6.   $	��150��6c   $��40��6o   #��[ 5%      $��10q�6G   ��5$   @   �� *Button1Command+5%   G   �� 5'   
   $��1��6   $��1��6   $��Button2��6.   $	��150��6c   $��40��6o   #��[ 5(      $��10q�6G   ��5'   @   �� *Button2Command+5(   G   �� 5*   
   $��1��6   $��2��6   $��Button3��6.   $	��150��6c   $��40��6o   #��[ 5+      $��10q�6G   ��5*   @   �� *Button3Command+5+   G   �� 5-   
   $��0��6   $��2��6   $	��200��6N   $��40��6Z   $��Center=�5.      $
��Left=�6+   $��16(�6F   ��5-   -   �� *LabelContent+5.   F   5/      50      