#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=..\..\..\Downloads\2890570_ai_artificial intelligence_automaton_brain_electronics_icon.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <AutoItConstants.au3>
#include <MsgBoxConstants.au3>

Func ConfigurarTSConexoes()
    Local $regKey = 'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server'
    Local $valueName = 'fDenyTSConnections'
    Local $dataType = 'REG_DWORD'
    Local $dataValue = '0'

    Local $command = 'reg add "' & $regKey & '" /v ' & $valueName & ' /t ' & $dataType & ' /d ' & $dataValue & ' /f'
    Local $exitCode = RunWait(@ComSpec & ' /c ' & $command, @SystemDir, @SW_HIDE)

    If $exitCode = 0 Then
        MsgBox(64, 'Configuração Concluída', 'A configuração foi aplicada com sucesso.')
    Else
        MsgBox(16, 'Erro', 'Houve um erro ao configurar as conexões de Terminal Services.')
    EndIf
EndFunc

Func CleanUpDisk()
    Run("cleanmgr")
    WinWaitActive("Limpeza de Disco")
	Send("{ENTER}")
EndFunc

Func NotHibernate()
    Run(@ComSpec & ' /c powercfg.exe /hibernate off', '', @SW_HIDE)
    Sleep(2000)
    ProcessClose('cmd.exe')
EndFunc

;CleanUpDisk()
;NotHibernate()
;ConfigurarTSConexoes()