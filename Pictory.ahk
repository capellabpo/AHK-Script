﻿#SingleInstance, Force 

;MainPanel & Functions---------------------------------------------------------
GUIMain()

{
Static GUICreate := GUIMain()
	
Global
	
GUIWidth := 80, GUIHeight := 80
	
Menu, Tray, Icon, Shell32.dll, 16
Menu, Tray, Tip, Edit Script by MEDZ
Menu, Tray, NoStandard

Gui, +LastFound -Resize
Gui, +Resize -MaximizeBox 
Gui, Color, F266AB
;WinSet, TransColor, EEAA99
Gui, Margin, 10, 10
Gui, Font,, Verdana 
	   

Gui, Show, % " w" GUIWidth " h" GUIHeight, Pictory. AI



;ClickableButtons------------------------------------------------------------------------
;WindowsTools
    
Gui, Add, Button, x40 y25 w80 h30 gPictory, Pictory.AI
Return


Pictory:
Run, https://app.pictory.ai/textinput


#SingleInstance, Force
CoordMode, Mouse, Screen, Send

WinWaitActive, Pictory.AI, , 10
Sleep, 5000


;Clicks 2nd TAB or whatever site is on the tab
Click_X := 358
Click_Y := 17
MouseClick, left, %Click_X%, %Click_Y%
Sleep, 1500


;Clicks on the URL
Click_X := 331
Click_Y := 52
MouseClick, left, %Click_X%, %Click_Y%
Sleep, 1500


;Store the currently selected text in the clipboard
Clipboard := ""
SendInput, ^c
ClipWait

;Optional: Display a message box with the copied text
;MsgBox, Copied text: %Clipboard%
Sleep, 1500

;Clicks on Pictory.AI Tab
Click_X := 601
Click_Y := 13
MouseClick, left, %Click_X%, %Click_Y%
Sleep, 1500

;Clicks on Article To Video URL box
Click_X := 670
Click_Y := 500
MouseClick, left, %Click_X%, %Click_Y%
Sleep, 1500


;Paste the contents of the clipboard
SendInput, %Clipboard%
Sleep, 1500


;Clicks on Proceed Button
Click_X := 768
Click_Y := 626
MouseClick, left, %Click_X%, %Click_Y%
Sleep, 25000


;Clicks on NEXT Button
Click_X := 1827
Click_Y := 195
MouseClick, left, %Click_X%, %Click_Y%
Sleep, 2000

;Clicks on Corporate Button
Click_X := 715
Click_Y := 495
MouseClick, left, %Click_X%, %Click_Y%
Sleep, 1500

;Clicks on 16:9 Button
Click_X := 596
Click_Y := 484
MouseClick, left, %Click_X%, %Click_Y%
Sleep, 15000



Return
}


;Script Termination
F12:: ;Press F12 to terminate the script
ExitApp
Return

