cd C:/Users/%USERNAME%/AppData/Roaming/Microsoft/Windows && cd "Start Menu" && cd Programs/Startup
del c.cmd
cd %TEMP%
del l.ps1 
del p.ps1
del DdBPKCytRe
del %USERNAME%.log
taskkill /im powershell.exe /f
