


"netsh winhttp set proxy ", 
"proxy-1b.cs.aws.risingcorp.com:3128", 
" \"*.risingms.com;*.risingcorp.com;*.testrisingcorp.com;172.25.*;169.254.*;<local>\"\r\n",
"reg add \"HKLM\\Software\\Policies\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\" /v ProxySettingsPerUser /t REG_DWORD /d 0 /f\r\n",
"reg add \"HKLM\\Software\\Policies\\Microsoft\\Internet Explorer\\Control Panel\" /v Proxy /t REG_DWORD /d 1 /f\r\n", "C:\\cfn\\scripts\\SetProxy.exe /proxy:enable /address:",
"proxy-1b.cs.aws.risingcorp.com:3128", 
" /autodetect:disable /exceptions:172.25.*;169.254.*;*.risingms.com;*.risingcorp.com;*.testrisingcorp.com;ec2messages.us-east-1.amazonaws.com;inspector.us-east-1.amazonaws.com;ssm.us-east-1.amazonaws.com;*.s3.amazonaws.com;s3-external-1.amazonaws.com;sqs.us-east-1.amazonaws.com;monitoring.us-east-1.amazonaws.com;codedeploy-commands.us-east-1.amazonaws.com"
"/bypasslocal"
        



