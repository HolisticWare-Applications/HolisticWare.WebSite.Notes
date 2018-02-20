;#NoEnv  			; Recommended for performance 
					; and compatibility with future AutoHotkey releases.
;#NoTrayIcon
;#Warn  				; Enable warnings to assist with detecting common errors.

SendMode Input  				; Recommended for new scripts due to its 
								; superior speed and reliability.
SetWorkingDir %A_ScriptDir% 	; Ensures a consistent starting directory.
 
CoordMode, Mouse, Window ;Relative

;WinWait, ahk_exe XamarinInstall.exe
WinActivate, Xamarin Installer 
WinWaitActive, Xamarin Installer
;ControlClick 600, 400, Xamarin Installer
Send Enter



;WinWait, User Account Control, 
;IfWinNotActive, User Account Control, , WinActivate, User Account Control, 
;WinWaitActive, User Account Control, 
;Send, {TAB}{TAB}{ENTER}
;Send !y

;IfWinNotActive, Xamarin Installer, , WinActivate, Xamarin Installer, 
WinWaitActive, Xamarin Installer
Send !n 


MsgBox Bok

return



SetControlDelay -1

;Send, {Enter}
;ControlClick, Continue, ahk_class #32770
ControlClick, x600 y430, Xamarin Installer
if ErrorLevel
  MsgBox didn't work

;WinActivate, Developer Center - Xamarin ‎- Microsoft Edge ahk_class ApplicationFrameWindow
;Send, {LAlt Down}
	

	
;Loop
;{
;	ControlSend, , !n
;	if NOT Winactive("Xamarin Installer")
;		Break
;	Sleep, 1000
;}

if WinExist("ahk_exe WindowsInstaller.exe")
{
    WinActivate, ahk_exe WindowsInstaller.exe
	Sleep 100
	Send, !c
}
	
WinWaitActive, Developer Center - Xamarin ‎- Microsoft Edge
IfWinExist, Developer Center - Xamarin ‎- Microsoft Edge
    WinClose ; use the window found above
	
WinActivate, Xamarin Installer
Sleep 100
Send, !c	