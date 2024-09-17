﻿from tkinter import *
import datetime
root = Tk()
root.geometry('300x100')
def jiemi(): 
    d1=datetime.datetime.now()     #获取当前系统时间d1 
    p=int(varin.get())             #获取输入文本框的数字密码 
    for i in range(p+1):           #从0循环到正确密码数值 
        if i==p:                   #如果密码相同 
            d2=datetime.datetime.now()     #获取当前系统时间d2
            d=d2-d1                #取得时间差 
            #在输出文本框中显示解密用时 
            varout.set(str(d.seconds)+"秒"+str(d.microseconds/1000)+"毫秒")

    
frm = Frame(root)
#left
frm_L = Frame(frm)
Label(frm_L, text='输入密码：', font=('Arial', 10)).pack()
Label(frm_L, text='破解用时：', font=('Arial', 10)).pack()
frm_L.pack(side=LEFT)

#right
frm_R = Frame(frm)
varin=StringVar()
varout=StringVar()
Entry(frm_R, textvariable = varin).pack()
Entry(frm_R, textvariable = varout).pack()
frm_R.pack(side=RIGHT)
frm.pack()

Button(root, text="破解", command=jiemi,relief="solid",width=10).pack()
root.mainloop()
