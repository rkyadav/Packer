Write-Host "Installing EC2Config..."
if(-Not (Test-Path C:\Local\Install)) { New-Item -Type directory C:\Local\Install }
(New-Object System.Net.WebClient).DownloadFile('https://s3.amazonaws.com/ec2-downloads-windows/EC2Config/EC2Install.zip', 'C:\Local\Install\EC2Install.zip')
Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory('C:\Local\Install\EC2Install.zip', 'C:\Local\Install\EC2Install')
Remove-Item C:\Local\Install\EC2Install.zip
Start-Process C:\Local\Install\EC2Install\EC2Install.exe -Argument /quiet -Wait
