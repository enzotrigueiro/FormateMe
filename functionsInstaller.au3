#include <AutoItConstants.au3>
#include <MsgBoxConstants.au3>


#Run($sPath, "", @SW_HIDE)
;DownloadJava()
;Sleep(3000)
Func DownloadOpera()
	Local $sPath = @ScriptDir & "\Opera_100.0.4815.21_Setup_x64.exe"
	Local $sURL = "https://get.geo.opera.com/pub/opera/desktop/100.0.4815.21/win/Opera_100.0.4815.21_Setup_x64.exe"
	ProcessWaitClose(InetGet($sURL,$sPath),7000)
EndFunc

Func InstallOpera()
	Local $sPath =@ScriptDir & "\Opera_100.0.4815.21_Setup_x64.exe /install /silent /norestart /launchopera=0 /setdefaultbrowser=0 /allusers=1"
	Run($sPath)
	ProcessWaitClose("Opera_100.0.4815.21_Setup_x64.exe",7000)
EndFunc

Func DownloadSublimeText()
	Local $sPath = @ScriptDir & "\Sublime_Text_Setup.exe"
	Local $sURL = "https://download.sublimetext.com/Sublime%20Text%20Build%203211%20x64%20Setup.exe"
	InetGet($sURL,$sPath)
EndFunc

Func InstallSublimeText()
	Local $sPath = @ScriptDir & "\Sublime_Text_Setup.exe /SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART"
	RunWait($sPath)
EndFunc

Func Download7zip()
	Local $sPath = @ScriptDir & "\7z2301-x64.exe"
	Local $sURL = "https://www.7-zip.org/a/7z2301-x64.exe"
	ProcessWaitClose(InetGet($sURL,$sPath),7000)
EndFunc

Func Install7Zip()
	Local $sPath =@ScriptDir & "\7z2301-x64.exe /S"
	Run("cmd /c" & "$sPath")
	ProcessWaitClose("7z2301-x64.exe",7000)
EndFunc

Func DownloadJava()
	Local $sPath = @ScriptDir & "\JavaSetup8u381.exe"
	Local $sURL = "https://javadl.oracle.com/webapps/download/AutoDL?BundleId=248774_8c876547113c4e4aab3c868e9e0ec572"
	InetGet($sURL,$sPath)
EndFunc

Func InstallJava()
	;Local $sPath =@ScriptDir & "\JavaSetup8u381.exe /s"
	;Run("cmd /c" & "$sPath")
	;ProcessWaitClose("\JavaSetup8u381.exe",7000)

    Local $sPath = @ScriptDir & "\JavaSetup8u381.exe"
    Local $sCmd = 'cmd /c "' & $sPath & '" /s'
    RunWait($sCmd)

    ; Esperar pelo processo terminar (opcional)
    ProcessWaitClose("JavaSetup8u381.exe")

EndFunc

Func DownloadPython()
	Local $sPath = @ScriptDir & "\python-3.10.8-amd64.exe"
	Local $sURL = "https://www.python.org/ftp/python/3.10.8/python-3.10.8-amd64.exe"
	InetGet($sURL,$sPath)
EndFunc

Func InstallPython()
	Local $sPath =@ScriptDir & "\python-3.10.8-amd64.exe /S"
	Run("cmd /c" & "$sPath")
	ProcessWaitClose("python-3.10.8-amd64.exe",7000)
EndFunc

Func DownloadAdobeReader()
	Local $sPath = @ScriptDir & "\AcroRdrDC2300620320_pt_BR.exe"
	Local $sURL = "https://ardownload2.adobe.com/pub/adobe/reader/win/AcrobatDC/2300620320/AcroRdrDC2300620320_pt_BR.exe"
	ProcessWaitClose(InetGet($sURL,$sPath),70000)
EndFunc

Func InstallAdobeReader()
	Local $sPath = @ScriptDir & "\AcroRdrDC2300620320_pt_BR.exe"
    Local $sCmd = 'cmd /c "' & $sPath & '" /sAll /rs /msi EULA_ACCEPT=YES'
    RunWait($sCmd)

    ; Esperar pelo processo terminar (opcional)
    ProcessWaitClose("JavaSetup8u381.exe")
EndFunc
