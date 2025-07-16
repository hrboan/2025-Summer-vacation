Write-Host "`n[+] 현재 사용자 정보"
whoami
whoami /priv

Write-Host "`n[+] 로컬 사용자 목록"
Get-LocalUser | Select-Object Name, Enabled, LastLogon

Write-Host "`n[+] 관리자 그룹에 포함된 계정"
Get-LocalGroupMember -Group "Administrators"