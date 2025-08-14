# === Register-AutoRunTest.ps1 ===
$TaskName = 'AutoRunTestTask'
$Script   = 'C:\Users\USER\Desktop\모각소\Week_3\AutoRunTest.ps1'
$StartIn  = 'C:\Users\USER\Desktop\모각소\Week_3'

# 액션: PowerShell로 스크립트 실행 (실행 정책 우회, 숨김 창)
$Action = New-ScheduledTaskAction -Execute 'PowerShell.exe' `
  -Argument "-NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File `"$Script`"" `
  -WorkingDirectory $StartIn

# 트리거: 현재 사용자 로그인 5초 후
$Trigger = New-ScheduledTaskTrigger -AtLogOn -User $env:UserName -Delay (New-TimeSpan -Seconds 5)

# 실행 권한: 최고 권한
$Principal = New-ScheduledTaskPrincipal `
  -UserId "$env:UserDomain\$env:UserName" `
  -LogonType Interactive `
  -RunLevel Highest

# 실행 조건 설정
$Settings = New-ScheduledTaskSettingsSet `
  -AllowStartIfOnBatteries `
  -DontStopIfGoingOnBatteries `
  -StartWhenAvailable `
  -MultipleInstances IgnoreNew `
  -ExecutionTimeLimit (New-TimeSpan -Minutes 5)

# 등록
Register-ScheduledTask -TaskName $TaskName `
  -Action $Action -Trigger $Trigger -Principal $Principal -Settings $Settings -Force