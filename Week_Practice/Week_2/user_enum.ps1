Write-Host "`n[+] ���� ����� ����"
whoami
whoami /priv

Write-Host "`n[+] ���� ����� ���"
Get-LocalUser | Select-Object Name, Enabled, LastLogon

Write-Host "`n[+] ������ �׷쿡 ���Ե� ����"
Get-LocalGroupMember -Group "Administrators"