# AutoRunTest.ps1
# 실행되면 바탕화면에 로그 파일을 남김
Add-Content -Path "$env:USERPROFILE\Desktop\autorun_log.txt" -Value "자동 실행 테스트 성공! $(Get-Date)"