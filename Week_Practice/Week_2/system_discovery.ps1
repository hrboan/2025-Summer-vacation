# �ý��� �̸�, ����� �̸�, ������
Write-Host "`n[+] �ý��� �⺻ ����"
Write-Host "��ǻ�� �̸�: $($env:COMPUTERNAME)"
Write-Host "����� �̸�: $($env:USERNAME)"
Write-Host "������: $($env:USERDOMAIN)"

# �ü�� �� BIOS ����
Write-Host "`n[+] �ü�� �� BIOS ����"
Get-ComputerInfo | Select-Object WindowsProductName, WindowsVersion, OsArchitecture
Get-WmiObject win32_bios | Select-Object Manufacturer, Version, ReleaseDate

# ��ũ ����
Write-Host "`n[+] ��ũ ����"
Get-WmiObject win32_logicaldisk | Select-Object DeviceID, VolumeName, Size, FreeSpace