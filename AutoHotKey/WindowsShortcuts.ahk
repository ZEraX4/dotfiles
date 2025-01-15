!p::Send "{Media_Play_Pause}"
!f::Send "{Media_Next}"
!b::Send "{Media_Prev}"
^+d::SendText(FormatTime(, "yyyyMMdd") 'v1Mosab')
^+.::Run "cmd /k `"cd c:\Mosab\Personal\Python\OutlookAttachments & python.exe outlook_attachments.py`""
^+,::Run "cmd /k `"xcopy /D \\192.168.70.11\Users\Apex-server\Desktop\CardReaderF\Logs\*.txt C:\Mosab\Personal\Python\FingerprintsProcessing\fingerprints\`""
^#!r::Reload
^!#e::Edit
F12:: {
    if ProcessExist("kanata.exe") {
        Run("taskkill /IM kanata.exe /F", , "Hide")
    } else {
        Run("C:\Users\Mosab\Downloads\kanata.exe -c C:\Users\Mosab\Downloads\kanata.kbd", , "Min")
    }
}


kanataRunning := false
;SetTimer(CheckActiveWindow, 5000)  ; Runs the function every 500ms

CheckActiveWindow() {
    global kanataRunning
    activeProcess := WinGetProcessName("A")  ; Get the active window’s process name
    activeTitle := WinGetTitle("A")  ; Get the active window’s title
	;ToolTip "Title: " activeTitle "`nProcess: " activeProcess
    ; Adjust based on how you use Neovim:
    if (activeProcess = "neovide.exe" || InStr(activeTitle, "Neovide")) { 
        if !kanataRunning {
            Run("C:\Users\Mosab\Downloads\kanata.exe -c C:\Users\Mosab\Downloads\kanata.kbd", , "Min")
            kanataRunning := true
			;ToolTip "Kanata Running"
        }
    } else {
        if kanataRunning {
            Run("taskkill /IM kanata.exe /F", , "Hide")
            kanataRunning := false
			;ToolTip "Kanata Stopped"
        }
    }
}