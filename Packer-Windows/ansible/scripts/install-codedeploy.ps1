Write-Host "Installing CodeDeploy..."
if(-Not (Test-Path C:\Local\Install)) { New-Item -Type directory C:\Local\Install }
(New-Object System.Net.WebClient).DownloadFile('https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/codedeploy-agent.msi', 'C:\Local\Install\codedeploy-agent.msi')
Start-Process C:\Local\Install\codedeploy-agent.msi -Argument /quiet -Wait