import socket

target_ip = "127.0.0.1"
for port in range(20, 1025):
    s = socket.socket()
    s.settimeout(0.5)
    try:
        s.connect((target_ip, port))
        print(f"[+] Port {port} is open")
    except:
        pass
    s.close()