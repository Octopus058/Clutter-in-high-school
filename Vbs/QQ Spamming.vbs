Set ws= wscript.createobject("wscript.shell")
msgbox"欢迎使用QQ刷屏1.1,作者Oct0pu5,未经允许禁止传播,版权所有,翻版必究"
A=msgbox("您确定要使用吗?",vbyesno)
if A=vbyes then
	a=int(inputbox("刷几条?"))
	b=int(inputbox("请输入一秒刷的条数,0-10间整数"))
	K=1000/b
	wscript.sleep 500
	for i=0 to a
		ws.sendkeys "^v"
		ws.sendkeys "%s"
		wscript.sleep K
	next
	msgbox"刷屏完成"
end if