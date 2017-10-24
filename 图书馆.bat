@echo off
copy /Y %~dp0hosts C:\Windows\System32\drivers\etc\hosts
regedit /s %~dp0字体平滑.reg
powershell -Command "& { set-executionpolicy remotesigned }"
powershell -file %~dp0字体平滑.ps1
copy Chrome.7z C:\Users\Administrator\AppData\Local\Chrome.7z
%~dp07z\7za.exe x C:\Users\Administrator\AppData\Local\Chrome.7z -oC:\Users\Administrator\AppData\Local
regedit /s 浏览器.reg
start C:\Users\Administrator\AppData\Local\Chrome\Chrome.exe
copy "Google Chrome.lnk" "C:\Users\Administrator\Desktop\Google Chrome.lnk"
copy Ditto.zip C:\Users\Administrator\AppData\Local\Ditto.zip
%~dp07z\7za.exe x C:\Users\Administrator\AppData\Local\Ditto.zip -oC:\Users\Administrator\AppData\Local
start C:\Users\Administrator\AppData\Local\Ditto\Ditto.exe
start %~dp0ahk\remapkey.exe
start %~dp0npp.7.5.1.Installer.exe /S
