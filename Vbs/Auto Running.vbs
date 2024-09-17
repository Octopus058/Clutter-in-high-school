set ws=wscript.createobject("wscript.shell")
msgbox"欢迎使用自动跑步脚本V1.0,作者Oct0pu5,未经允许禁止传播,版权所有,翻版必究"
z=msgbox("您确定要使用吗?",vbyesno)
if z=vbyes then
	a=inputbox("需要持续几秒?")
	A=66.6*a
	b=msgbox("您需要时间来进游戏吗?",vbyesno)
	if b=vbyes then
		c=inputbox("您需要多少时间?请输入秒数")
		C=1000*c
		wscript.sleep C
	end if
wscript.sleep 2000
for i=1 to A step 1
	ws.sendkeys"w"
	wscript.sleep 15
next
end if