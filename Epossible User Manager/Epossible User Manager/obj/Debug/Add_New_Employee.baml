   M S B A M L   `   `   `  ����Q  MEpossible User Manager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:Epossible_User_ManagerEpossible_User_Manager  5   	   -    'Epossible_User_Manager.Add_New_Employee   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:Epossible_User_Manager     5   	   X TXceed.Wpf.Toolkit, Version=3.4.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5   	     � Title$  Add_New_Employee��5	   	   $	��550��6"   $	��800��6/   .��5
      � .+�5   
     Xceed.Wpf.Toolkit.Wizard     FinishButtonClosesWindow . .@�5      "  Xceed.Wpf.Toolkit.WizardPage  -   5          Name$ 	IntroPage��5         Title$< 6Welcome to the Add New User to Active Directory Wizard��5   #      Description$D >This wizard will guide you through the new user setup process.��5   $     5      -   5        $ Page1��5         PageType$ Interior=�6-   $ Page 1��5   $   $, &This is the first page in the process.��5   $      NextPage 5   $   ��  �� ElementName$ Page2��   PreviousPage 5   $   �� $ 	IntroPage��.��5      � .+�5      �� -   5        	 ��Name$	 FNLabel��5      $��
First Name��6-   $
��Left=�6B   $��	64,92,0,0q�6]   $	��Top=�6p   �� 5      -   5        $	 LNLabel��5      $��	Last Name��6-   $
��Left=�6A   $��
64,148,0,0q�6\   $	��Top=�6p   
 J� RenderTransformOrigin$
 -0.503,0.452&�6�   �� 5      -   5        $	 DepLabel��5      $��
Department��6.   $
��Left=�6C   $��
64,254,0,0q�6^   $	��Top=�6r   �� 5      $����Please fill this form to setup a new user in the system. For advanced settings and to override default values,
click on the advanced button bellow.
 ��6   $
��Left=�6�   $��64,10,-17.4,0q�6�   $	��Top=�6   $
��Bold"�6  �� 5      -   5         ��Name$ 	FNTextbox��5      $
��Left=�61   $��23��6L   $��
235,95,0,0q�6X    �� TextWrapping$
 Wrap=�6l   $	��Top=�6�   $	��304��6�   �� 5      -   5        $ 	LNTextbox��5      $
��Left=�61   $��23��6L   $��235,150,0,0q�6X   $
 Wrap=�6m   $	��Top=�6�   $	��304��6�   �� 5      $��Password��6   $
��Left=�6/   $��
64,202,0,0q�6J   $	��Top=�6^   �� 5      -   5        $ PassTextBox��5      $
��Left=�63   $��23��6N   $��235,202,0,0q�6Z   $
 Wrap=�6o   $	��Top=�6�   $	��304��6�   �� 5      -	   5         ��Name$ DeptComboBox��5      $
��Left=�65   $��235,267,0,0q�6P   $	��Top=�6e   $	��186��6}   .@�5      �� -
   5        $��HR��5   '   .��61   HR65   �� 5      -   5        $��IT��5   '   .��61   IT65   �� 5       -   5        $��	Marketing��5    '   .��68   	Marketing6C   �� 5!      -   5        $��	Logistics��5!   '   .��68   	Logistics6C   �� 5"      -   5        $��ProjectManagement��5"   '   .��6@   Project_Management6T   5#      �� 5$      $��Computer Type��6   $
��Left=�64   $��
64,328,0,0q�6O   $	��Top=�6c   �� 5%      -   5         ��Name$ 
DSCheckbox��5%      $��Desktop��63   $
��Left=�6E   $��235,334,0,0q�6`   $	��Top=�6u   �� 5&      -   5        $ 
LTCheckbox��5&      $��Laptop��63   $
��Left=�6D   $��337,334,0,0q�6_   $	��Top=�6t   �� 5'      -   5         ��Name$ SaveBTN��5'      $
��Save��6.   $
��Left=�6=   $��603,335,0,0q�6X   $	��Top=�6m   $��75��6�   6�   5(      5)        5*      -   5        $ Page2��5*      $ Interior=�6-   $ Page 2��5+   $   $7 1In this page you can add/remove group permissions��5,   $   .��5-      � .+�5.      �� -   5         ��Name$ GroupListView��5.      $
��Left=�66   $	��250��6Q   $��	70,78,0,0q�6^   $	��Top=�6q   $	��660��6�    �� View 5/      �� 50      .P�51   "   �� 52      54      �� 56      -   5        $ 
SubmitBTN1��56      $��Submit��61   $
��Left=�6B   $��
70,363,0,0q�6]   $	��Top=�6q   $��75��6�   6�   58      59        5:      -   5        $ LastPage��5:      $ Interior=�60   $ 	Last Page��5;   $   $$ This is the confirmation page.��5<   $      	CanFinish$
 TrueX�5=   $   .��5>      � .+�5?      �� -   5        $ 
CreateUser��5?      $��Create User��61   $
��Left=�6G   $��
96,340,0,0q�6b   $	��Top=�6v   $��75��6�   6�   �� 5@      -   5        $	 SummaryLabel��5@      $�� ��62   $
��Left=�6=   $��	96,57,0,0q�6X   $	��Top=�6k   $	��220��6�   $	��624��6�   �� 5A      $��Summary��6   $
��Left=�6.   $��	96,26,0,0q�6I   $	��Top=�6\   �� 5B      $��yIf information provided in the summary area is correct, please click on the Create User button to create new user account��6   $
��Left=�6�   $��
96,284,0,0q�6�   $	��Top=�6�   5C      5D      5E      5F      5G      