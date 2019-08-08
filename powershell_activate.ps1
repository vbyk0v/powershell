Write-Host "0.Set-ExecutionPolicy Unrestricted;"
Set-ExecutionPolicy Unrestricted;

Write-Host "1.Start-Service WinRM  -PassThru;"
Start-Service WinRM  -PassThru;

Write-Host "2.Set-Service WinRM -StartupType Automatic;"
Set-Service WinRM -StartupType Automatic;

Write-Host "3.Enable-PSRemoting -SkipNetworkProfileCheck -Force;"
Enable-PSRemoting -SkipNetworkProfileCheck -Force;

Write-Host "4.Enable-PSRemoting -Force;"
Enable-PSRemoting -Force;

Write-Host "5.$password = "123456" | ConvertTo-SecureString -asPlainText -Force;"
$password = "123456" | ConvertTo-SecureString -asPlainText -Force;

Write-Host "6.New-LocalUser -Name "user" -Password $password -AccountNeverExpires -PasswordNeverExpires -UserMayNotChangePassword;"
New-LocalUser -Name "user" -Password $password -AccountNeverExpires -PasswordNeverExpires -UserMayNotChangePassword;

Write-Host "7.Add-LocalGroupMember -Group "Пользователи удаленного управления" -Member "user";"
Add-LocalGroupMember -Group "Пользователи удаленного управления" -Member "user";

Write-Host "8.Add-LocalGroupMember -Group "Администраторы" -Member "user";"
Add-LocalGroupMember -Group "Администраторы" -Member "user";
