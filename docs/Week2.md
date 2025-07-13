## 🔖 2주차 (2025.07.14~2025.07.20)
### <PowerShell 기초 명령어 이해>

#### 🔹 1. `Get-Process` – 실행 중인 프로세스 확인

```powershell
Get-Process  #현재 실행 중인 프로세스 확인
```

```powershell
Get-Process -Name notepad  #특정 프로세스만 확인
```

#### 🔹 2. `Start-Process` – 프로그램 실행

```powershell
Start-Process notepad.exe  #프로그램 실행
```

```powershell
Start-Process powershell -Verb runAs  #관리자 권한으로 실행
```

#### 🔹 3. `Get-Service` – 윈도우 서비스 확인

```powershell
Get-Service  #모든 서비스 목록 표시
```

```powershell
Get-Service | Where-Object { $_.Status -eq "Running" }  #실행 중인 서비스만 필터
```

#### 🔹 4. `Get-LocalUser` – 로컬 사용자 계정 목록 확인

```powershell
Get-LocalUser  #모든 로컬 사용자 목록 표
```

```powershell
Get-LocalUser | Where-Object { $_.Enabled -eq $true -and $_.PrincipalSource -eq "Local" }  #관리자 계정 필터
```

###### ❗일부 명령어는 관리자 권한에서만 작동하므로 PowerShell을 **관리자 권한으로 실행**해야 한다.

<br>

---

<br>

#### 🟩 그 외 자주 쓰이는 명령어 🟩

##### 1. 시스템 정보/환경 정보 수집
- `systeminfo` : 시스템 운영체제 정보, 핫픽스, 메모리 등 요약
- `Get-ComputerInfo` : 더 자세한 시스템 정보 (Windows 버전, BIOS 등)
- `Get-WmiObject win32_bios` : BIOS 정보 수집
- `Get-WmiObject win32_logicaldisk` : 드라이브 용량 정보 수집
- `$env:USERNAME`, `$env:USERDOMAIN` : 현재 사용자/도메인 확인
- `$env:COMPUTERNAME` : 현재 컴퓨터 이름





