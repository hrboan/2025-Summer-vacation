# 시스템 이름, 사용자 이름, 도메인
Write-Host "`n[+] 시스템 기본 정보"
Write-Host "컴퓨터 이름: $($env:COMPUTERNAME)"
Write-Host "사용자 이름: $($env:USERNAME)"
Write-Host "도메인: $($env:USERDOMAIN)"

# 운영체제 및 BIOS 정보
Write-Host "`n[+] 운영체제 및 BIOS 정보"
Get-ComputerInfo | Select-Object WindowsProductName, WindowsVersion, OsArchitecture
Get-WmiObject win32_bios | Select-Object Manufacturer, Version, ReleaseDate

# 디스크 정보
Write-Host "`n[+] 디스크 정보"
Get-WmiObject win32_logicaldisk | Select-Object DeviceID, VolumeName, Size, FreeSpace