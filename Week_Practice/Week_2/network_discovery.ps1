Write-Host "`n[+] IP �ּ� ����"
ipconfig

Write-Host "`n[+] Ȱ��ȭ�� TCP ����"
Get-NetTCPConnection | Where-Object { $_.State -eq "Established" } | Select-Object LocalAddress, RemoteAddress, RemotePort

Write-Host "`n[+] �ܺη� Ping �׽�Ʈ (��: 8.8.8.8)"
Test-Connection -ComputerName 8.8.8.8 -Count 2