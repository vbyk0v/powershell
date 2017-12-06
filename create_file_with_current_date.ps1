#New-Item -itemType Directory -Path c:\powershell
$time = (Get-Date).tostring("dd-MM-yyyy-hh-mm-ss")
New-Item -itemType Directory -Path c:\ -Name ($time + ".folder")
