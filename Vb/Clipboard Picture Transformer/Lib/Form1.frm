VERSION 5.00
Begin VB.Form Main 
   Caption         =   "Form1"
   ClientHeight    =   2625
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   2625
   ScaleWidth      =   4560
   StartUpPosition =   2  'ÆÁÄ»ÖÐÐÄ
   Begin VB.PictureBox Picture1 
      Height          =   495
      Left            =   480
      ScaleHeight     =   435
      ScaleWidth      =   1035
      TabIndex        =   2
      Top             =   240
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Quit"
      Height          =   975
      Left            =   2400
      TabIndex        =   1
      Top             =   1200
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Transform"
      Height          =   975
      Left            =   360
      TabIndex        =   0
      Top             =   1200
      Width           =   1815
   End
End
Attribute VB_Name = "Main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub err()
err:
MsgBox "No Picture in Clipboard.", 16, "Oops"
End Sub


Private Sub Command1_Click()
    Dim Nm, ex As String, num As Integer
    Nm = "Clipboard"
    ex = ".bmp"
    num = 1
    While Dir("D:\desktop\" & Nm & ex) <> ""
        Nm = "Clipboard" & CStr(num)
        num = num + 1
    Wend
    If Clipboard.GetData = 0 Then
        MsgBox "No Picture founded in Clipboard", 16, "Oops"
        Exit Sub
    End If
    Picture1.Picture = Clipboard.GetData
    SavePicture Picture1.Picture, "C:\Users\Administrator\Desktop\" & Nm & ex
        
End Sub

Private Sub Command2_Click()
    End
End Sub

