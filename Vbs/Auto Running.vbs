set ws=wscript.createobject("wscript.shell")
msgbox"��ӭʹ���Զ��ܲ��ű�V1.0,����Oct0pu5,δ�������ֹ����,��Ȩ����,����ؾ�"
z=msgbox("��ȷ��Ҫʹ����?",vbyesno)
if z=vbyes then
	a=inputbox("��Ҫ��������?")
	A=66.6*a
	b=msgbox("����Ҫʱ��������Ϸ��?",vbyesno)
	if b=vbyes then
		c=inputbox("����Ҫ����ʱ��?����������")
		C=1000*c
		wscript.sleep C
	end if
wscript.sleep 2000
for i=1 to A step 1
	ws.sendkeys"w"
	wscript.sleep 15
next
end if