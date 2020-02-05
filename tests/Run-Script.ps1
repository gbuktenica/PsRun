Get-Date | Out-File -FilePath "$env:USERPROFILE\PsRunTest.txt" -Appendcls
$PSVersionTable.PsVersion | Out-File -FilePath "$env:USERPROFILE\PsRunTest.txt" -Append
"-----------------------------------------------" | Out-File -FilePath "$env:USERPROFILE\PsRunTest.txt" -Append
