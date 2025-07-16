Write-Host "`n[+] IP 주소 정보"
ipconfig

Write-Host "`n[+] 활성화된 TCP 연결"
Get-NetTCPConnection | Where-Object { $_.State -eq "Established" } | Select-Object LocalAddress, RemoteAddress, RemotePort

Write-Host "`n[+] 외부로 Ping 테스트 (예: 8.8.8.8)"
Test-Connection -ComputerName 8.8.8.8 -Count 2