echo @off
reg ADD "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v LimitBlankPasswordUse /t REG_DWORD /d 1 /f
reg ADD HKLM\SYSTEM\CurrentControlSet\services\Netlogon\Parameters /v MaximumPasswordAge /t REG_DWORD /d 30 /f
net accounts /minpwlen:10
net accounts /minpwage:10
pause