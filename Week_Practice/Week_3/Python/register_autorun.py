# -*- coding: utf-8 -*-
import sys, os, winreg

# 레지스트리 Run 키
KEY_PATH   = r"Software\Microsoft\Windows\CurrentVersion\Run"
VALUE_NAME = "PyAutoRunTest"

# 실행할 파이썬 스크립트 경로 (네 경로 그대로)
SCRIPT = r"C:\Users\USER\Desktop\모각소\Week_3\autorun_py_log.py"

# 현재 파이썬 실행 파일 경로 (공백/한글 경로 안전)
python_exe = sys.executable

# 콘솔창 뜨는 게 싫다면 pythonw.exe 사용 (있으면 교체)
pythonw = python_exe.replace("python.exe", "pythonw.exe")
if os.path.exists(pythonw):
    python_exe = pythonw

# 전체 명령 (따옴표로 안전하게 감싸기)
cmd = f'"{python_exe}" "{SCRIPT}"'

# 레지스트리 쓰기
with winreg.OpenKey(winreg.HKEY_CURRENT_USER, KEY_PATH, 0, winreg.KEY_SET_VALUE) as k:
    winreg.SetValueEx(k, VALUE_NAME, 0, winreg.REG_SZ, cmd)

print("등록 완료:", VALUE_NAME, "->", cmd)