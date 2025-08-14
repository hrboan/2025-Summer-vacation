from datetime import datetime

log_path = r"C:\Users\USER\Desktop\모각소\Week_3\autorun_py_log.txt"

with open(log_path, "a", encoding="utf-8") as f:
    f.write(f"[Python] 자동 실행 테스트 성공! - {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")