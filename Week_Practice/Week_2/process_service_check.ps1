Write-Host "`n[+] 현재 실행 중인 프로세스 목록"
Get-Process | Sort-Object CPU -Descending | Select-Object Name, Id, CPU -First 10

Write-Host "`n[+] 현재 실행 중인 서비스 목록"
Get-Service | Where-Object { $_.Status -eq "Running" } | Select-Object Name, DisplayName