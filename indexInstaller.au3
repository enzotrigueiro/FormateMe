#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=..\..\..\Downloads\2890570_ai_artificial intelligence_automaton_brain_electronics_icon.ico
#AutoIt3Wrapper_Res_Language=1046
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include "functionsInstaller.au3"
#include "functionsWindows.au3"

#Region ### START Koda GUI section ### Form=c:\users\enzo trigueiro\documents\programming autoit\tg\windowforma.kxf
$Form1_1 = GUICreate("Formate.me", 396, 197, 270, 213)
GUISetIcon("C:\Users\Enzo Trigueiro\Downloads\cpu-z_2.06-en.exe", -1)
$BtInstall = GUICtrlCreateButton("Install", 272, 152, 105, 33)
$Label1 = GUICtrlCreateLabel("Web Browser:", 8, 8, 83, 17)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$Label2 = GUICtrlCreateLabel("Compress Folder:", 8, 56, 101, 17)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$ChZip = GUICtrlCreateCheckbox("7-Zip", 8, 72, 97, 17)
$ChOpera = GUICtrlCreateCheckbox("Opera", 8, 24, 97, 17)
$Label3 = GUICtrlCreateLabel("Text Pad:", 8, 104, 59, 17)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$ChSublime = GUICtrlCreateCheckbox("Sublime Text", 8, 120, 97, 17)
$Label4 = GUICtrlCreateLabel("Developer Tools:", 144, 8, 101, 17)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$ChPython = GUICtrlCreateCheckbox("Python 3.10", 144, 24, 97, 17)
$Label5 = GUICtrlCreateLabel("PDF:", 144, 56, 32, 17)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$ChAdobe = GUICtrlCreateCheckbox("Adobe Reader", 144, 72, 97, 17)
$Label6 = GUICtrlCreateLabel("Runtimes:", 144, 104, 60, 17)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$ChJava = GUICtrlCreateCheckbox("Java", 144, 120, 97, 17)
$Label7 = GUICtrlCreateLabel("Windows Tools:", 296, 8, 94, 17)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$ChHibernate = GUICtrlCreateCheckbox("Not Hibernate", 296, 24, 97, 17)
$ChCleanUp = GUICtrlCreateCheckbox("CleanUp Disk", 296, 48, 97, 17)
$ChRDP = GUICtrlCreateCheckbox("Active RDP", 296, 72, 97, 17)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
    $nMsg = GUIGetMsg()
    Switch $nMsg
        Case $GUI_EVENT_CLOSE
            Exit
        Case $BtInstall
			If IsChecked($ChSublime) Then
				MsgBox(0, "Instalação Sublime Text", "Em andamento... Clique em OK para continuar")
				DownloadSublimeText()
				Sleep(3000)
				InstallSublimeText()
				Sleep(3000)
				MsgBox(0, "Instalação", "Instalação Concluída")
				Sleep(1000)
				ShellExecute("C:\Program Files\Sublime Text 3\sublime_text.exe")
			EndIf

			If IsChecked($ChOpera) Then
				MsgBox(0, "Instalação Opera", "Em andamento... Clique em OK para continuar")
				DownloadOpera()
				Sleep(3000)
				InstallOpera()
				Sleep(3000)
				MsgBox(0, "Instalação", "Instalação Concluída")
				Sleep(1000)
				ShellExecute("C:\Users\Enzo Trigueiro\AppData\Local\Programs\Opera\launcher.exe")
            EndIf

			If IsChecked($ChZip) Then
				MsgBox(0, "Instalação 7ZIp", "Em andamento... Clique em OK para continuar")
				Download7zip()
				Sleep(3000)
				Install7Zip()
				Sleep(3000)
				MsgBox(0, "Instalação", "Instalação Concluída")
				Sleep(1000)
				ShellExecute("C:\Program Files\7-Zip\7z.exe")
            EndIf

			If IsChecked($ChJava) Then
				MsgBox(0, "Instalação Java", "Em andamento... Clique em OK para continuar")
				DownloadJava()
				Sleep(3000)
				InstallJava()
				Sleep(3000)
				MsgBox(0, "Instalação", "Instalação Concluída")
				Sleep(1000)
				ShellExecute("C:\Program Files\Java\jre-1.8\bin\javacpl.exe")
            EndIf

			If IsChecked($ChAdobe) Then
				MsgBox(0, "Instalação Adobe Reader", "Em andamento... Clique em OK para continuar")
				DownloadAdobeReader()
				Sleep(3000)
				InstallAdobeReader()
				Sleep(3000)
				MsgBox(0, "Instalação", "Instalação Concluída")
				Sleep(1000)
				ShellExecute("C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe")
            EndIf

			If IsChecked($ChPython) Then
				MsgBox(0, "Instalação Python", "Em andamento... Clique em OK para continuar")
				DownloadPython()
				Sleep(3000)
				InstallPython()
				Sleep(3000)
				MsgBox(0, "Instalação", "Instalação Concluída")
				Sleep(1000)
				ShellExecute("C:\Users\Enzo Trigueiro\AppData\Local\Programs\Opera\launcher.exe")
            EndIf

			If IsChecked($ChOpera) Then
				MsgBox(0, "Instalação Opera", "Em andamento... Clique em OK para continuar")
				DownloadOpera()
				Sleep(3000)
				InstallOpera()
				Sleep(3000)
				MsgBox(0, "Instalação", "Instalação Concluída")
				Sleep(1000)
				ShellExecute("C:\Users\Enzo Trigueiro\AppData\Local\Programs\Opera\launcher.exe")
            EndIf

			If IsChecked($ChOpera) Then
				MsgBox(0, "Instalação Opera", "Em andamento... Clique em OK para continuar")
				DownloadOpera()
				Sleep(3000)
				InstallOpera()
				Sleep(3000)
				MsgBox(0, "Instalação", "Instalação Concluída")
				Sleep(1000)
				ShellExecute("C:\Users\Enzo Trigueiro\AppData\Local\Programs\Opera\launcher.exe")
            EndIf

			If IsChecked($ChOpera) Then
				MsgBox(0, "Instalação Opera", "Em andamento... Clique em OK para continuar")
				DownloadOpera()
				Sleep(3000)
				InstallOpera()
				Sleep(3000)
				MsgBox(0, "Instalação", "Instalação Concluída")
				Sleep(1000)
				ShellExecute("C:\Users\Enzo Trigueiro\AppData\Local\Programs\Opera\launcher.exe")
            EndIf

    EndSwitch
WEnd


Func IsChecked($idControlID)
    Return BitAND(GUICtrlRead($idControlID), $GUI_CHECKED) = $GUI_CHECKED
EndFunc