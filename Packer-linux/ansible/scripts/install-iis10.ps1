Write-Host "Installing IIS..."
Import-Module ServerManager
Add-WindowsFeature Web-Server, Web-Http-Redirect, Web-Http-Logging, Web-Log-Libraries, Web-ODBC-Logging, Web-Request-Monitor, Web-Http-Tracing, Web-Basic-Auth, Web-Windows-Auth, Web-IP-Security, Web-Url-Auth, Web-Net-Ext45, Web-Asp-Net45, Web-ISAPI-Ext, Web-ISAPI-Filter, Web-Mgmt-Service -Verbose