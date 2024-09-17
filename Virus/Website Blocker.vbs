set fso=createobject("Scripting.filesystemobject")
set otf=fso.opentextfile("C:\Windows\System32\drivers\etc\hosts",8,true)
otf.writeline "127.0.0.1 www.baidu.com"