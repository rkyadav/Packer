. ./parameters.ps1

$permissions = "([adsi]'WinNT://./Administrators,group').Add('WinNT://') $DomainNetBIOSName / $DomainLocalAdmins, group"

powershell.exe -Command $permissions