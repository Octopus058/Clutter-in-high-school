attrib -R C:\WINDOWS\system32\drivers\etc\hosts 
@echo\  
echo None > C:\Windows\System32\drivers\etc\hosts
@echo\
ipconfig /flushdns

netsh interface set interface "��̫�� 2" enabled
netsh interface set interface "WLAN 2" enabled
netsh interface set interface "��������" enabled
netsh interface set interface "�������� 2" enabled
netsh interface set interface "WLAN" enabled
netsh interface set interface "��̫��" enabled
netsh interface set interface "������������" enabled
netsh interface set interface "Bluetooth ��������" enabled
netsh interface set interface "������������ 2" enabled

shutdown -a
del C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Rebooting.bat /q