. /parameters.ps1

New-Item -Path HKLM:\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\ -Name Servicing\n
New-ItemProperty -Path HKLM:\\Software\\Microsoft\\Windows\\CurrentVersion\\policies\\Servicing -Name RepairContentServerSource -Value 2 -PropertyType DWord


if($winFeatures -ne '') { 
    Import-Module ServerManager
    Install-WindowsFeature $winFeatures
}



