#region --- Au3Recorder generated code Start (v3.3.9.5 KeyboardLayout=00000409)  ---

#region --- Internal functions Au3Recorder Start ---
Func _Au3RecordSetup()
Opt('WinWaitDelay',100)
Opt('WinDetectHiddenText',1)
Opt('MouseCoordMode',0)
Local $aResult = DllCall('User32.dll', 'int', 'GetKeyboardLayoutNameW', 'wstr', '')
If $aResult[1] <> '00000409' Then
  MsgBox(64, 'Warning', 'Recording has been done under a different Keyboard layout' & @CRLF & '(00000409->' & $aResult[1] & ')')
EndIf

EndFunc

Func _WinWaitActivate($title,$text,$timeout=0)
	WinWait($title,$text,$timeout)
	If Not WinActive($title,$text) Then WinActivate($title,$text)
	WinWaitActive($title,$text,$timeout)
EndFunc

_AU3RecordSetup()
#endregion --- Internal functions Au3Recorder End ---


Run('C:\Users\IEUser\AppData\Local\Temp\Alcohol52FE\Alcohol52_v2.0.3.6828.FE_downloader.exe')

# Main downloader
_WinWaitActivate("AlcoholSoftGen Downloader","")
MouseMove(233,40)
MouseDown("left")
MouseMove(216,33)
MouseUp("left")
MouseMove(546,432)
MouseDown("left")
MouseMove(539,421)
MouseUp("left")
MouseClick("left",576,471,1)

# Language select
_WinWaitActivate("Installer Language","Please select a lang")
Send("{ENTER}")

# Welcome
_WinWaitActivate("Alcohol 52% FE Version 2.0.3.6828","Welcome to the Alcoh")
Send("{ENTER}")

# Select components / deselect desktop shortcut
_WinWaitActivate("Alcohol 52% FE Version 2.0.3.6828 ","Alcohol 52% FE Versi")
Send("{ENTER}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{SPACE}{ENTER}{ENTER}")

# Deselect run, deselect run on startup
_WinWaitActivate("Alcohol 52% FE Version 2.0.3.6828 ","Completing the Alcoh")
Send("{SPACE}{DOWN}{SPACE}{ENTER}")

_WinWaitActivate("Alcohol 52% Installation - Windows Internet Explorer","Address Combo Contro")
Send("{CTRLDOWN}w")

#endregion --- Au3Recorder generated code End ---
