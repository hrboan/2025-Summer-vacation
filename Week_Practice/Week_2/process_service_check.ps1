Write-Host "`n[+] ���� ���� ���� ���μ��� ���"
Get-Process | Sort-Object CPU -Descending | Select-Object Name, Id, CPU -First 10

Write-Host "`n[+] ���� ���� ���� ���� ���"
Get-Service | Where-Object { $_.Status -eq "Running" } | Select-Object Name, DisplayName