# === AutoRunTest.ps1 ===
# 한글 경로에서도 안전하게 로그 남기기

# 로그 파일 경로
$logFile = "C:\Users\USER\Desktop\모각소\Week_3\autorun_log.txt"

# 폴더 없으면 생성
$dir = Split-Path -LiteralPath $logFile
if (-not (Test-Path -LiteralPath $dir)) {
    New-Item -ItemType Directory -Path $dir -Force | Out-Null
}

# 기록할 한 줄
$line = "자동 실행 테스트 성공! - $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"

# UTF-8로 안전하게 추가 기록 (.NET API 사용)
[System.IO.File]::AppendAllText($logFile, $line + [Environment]::NewLine, [System.Text.Encoding]::UTF8)
