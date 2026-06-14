# Windows Health Check Report

$ReportPath = "HealthCheckReport.txt"

"Computer Name: $env:COMPUTERNAME" | Out-File $ReportPath

Get-CimInstance Win32_OperatingSystem |
Select-Object Caption, Version |
Out-File $ReportPath -Append

Write-Host "Health Check Report Generated Successfully!"