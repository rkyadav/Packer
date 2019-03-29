Import-Module WebAdministration
Set-ItemProperty 'IIS:\Sites\Default Web Site' serverAutoStart False
Stop-WebSite 'Default Web Site'