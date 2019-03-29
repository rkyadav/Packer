Write-Host "Installing Windows Package Management..."
if(-Not (Test-Path C:\Local\Install)) { New-Item -Type directory C:\Local\Install }
(New-Object System.Net.WebClient).DownloadFile('https://download.microsoft.com/download/C/4/1/C41378D4-7F41-4BBE-9D0D-0E4F98585C61/PackageManagement_x64.msi', 'C:\Local\Install\PackageManagement_x64.msi')
Start-Process 'C:\Local\Install\PackageManagement_x64.msi' -Argument '/quiet','/norestart' -Wait