VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  '窗口缺省
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Private Sub Form_Load()
    Form1.Hide
    Dim id, str, mainstr, pswd As String
    MsgBox "Notice" & vbCrLf & "Only those WIFI which had been connected is suitable for the application.", 64, "Notice"
    id = InputBox("Input WIFI ID:", "WIFI ID")
    If id = vbNullString Then End
    Shell "cmd /c netsh wlan show profile name=" & Chr(34) & id & Chr(34) & " key=clear > d:\1.txt", 0
    Sleep 1000
    Open "D:\1.txt" For Input As #1
        Do While Not EOF(1)
            Line Input #1, str
            If InStr(str, "关键内容") <> 0 Then
                mainstr = str
                Exit Do
            End If
        Loop
    Close #1
    pswd = Mid(mainstr, 22)
    MsgBox "WIFI ID:" & id & vbCrLf & _
    "Password:" & pswd, 64, "WIFI Password"
    End
End Sub
