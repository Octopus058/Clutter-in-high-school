attrib -R C:\WINDOWS\system32\drivers\etc\hosts 
@echo\  
echo None > C:\Windows\System32\drivers\etc\hosts
@echo\
ipconfig /flushdns

netsh interface set interface "以太网 2" enabled
netsh interface set interface "WLAN 2" enabled
netsh interface set interface "本地连接" enabled
netsh interface set interface "本地连接 2" enabled
netsh interface set interface "WLAN" enabled
netsh interface set interface "以太网" enabled
netsh interface set interface "无线网络连接" enabled
netsh interface set interface "Bluetooth 网络连接" enabled
netsh interface set interface "无线网络连接 2" enabled

shutdown -a
del C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Rebooting.bat /q