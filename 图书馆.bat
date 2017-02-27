@echo off
start C:\Windows\System32\cmd.exe\nature.theme
copy /Y hosts C:\Windows\System32\drivers\etc\hosts
regedit /s 字体平滑.reg
powershell -Command "& { set-executionpolicy remotesigned }"
powershell -file 字体平滑.ps1
copy Chrome.7z C:\Users\Administrator\AppData\Local\Chrome.7z
%~dp07z\7za.exe x C:\Users\Administrator\AppData\Local\Chrome.7z -oC:\Users\Administrator\AppData\Local
regedit /s 浏览器.reg
start C:\Users\Administrator\AppData\Local\Chrome\Chrome.exe
copy "Google Chrome.lnk" "C:\Users\Administrator\Desktop\Google Chrome.lnk"
copy Ditto.zip C:\Users\Administrator\AppData\Local\Ditto.zip
%~dp07z\7za.exe x C:\Users\Administrator\AppData\Local\Ditto.zip -oC:\Users\Administrator\AppData\Local
start C:\Users\Administrator\AppData\Local\Ditto\Ditto.exe


