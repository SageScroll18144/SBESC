import network
import socket
import json
import time

# Configurações da rede Wi-Fi
SSID = 'CINGUESTS'
PASSWORD = 'acessocin'

# Conecta ao Wi-Fi
wlan = network.WLAN(network.STA_IF)
wlan.active(True)
wlan.connect(SSID, PASSWORD)

print("Conectando ao Wi-Fi...")
while not wlan.isconnected():
    time.sleep(1)

print("Conectado com IP:", wlan.ifconfig()[0])

# Cria um socket de servidor
addr = socket.getaddrinfo('0.0.0.0', 80)[0][-1]
server = socket.socket()
server.bind(addr)
server.listen(1)

print("Aguardando requisições...")

while True:
    try:
        conn, addr = server.accept()
        print("Conexão de:", addr)

        request = conn.recv(1024).decode()
        print("Requisição bruta:")
        print(request)

        # Verifica se é uma requisição POST
        if 'POST /receber' in request:
            body_start = request.find('\r\n\r\n') + 4
            json_data = request[body_start:]
            print("JSON recebido:", json_data)

            # Converte string JSON em dicionário
            try:
                data = json.loads(json_data)
                print("Dados processados:", data)
            except Exception as e:
                print("Erro ao parsear JSON:", e)

            # Resposta ao cliente
            response = 'HTTP/1.1 200 OK\r\nContent-Type: application/json\r\n\r\n'
            response += json.dumps({'status': 'Recebido com sucesso!', 'eco': data})
            conn.send(response)

        else:
            # Para outras requisições (GET etc.)
            conn.send("HTTP/1.1 404 Not Found\r\n\r\n")

        conn.close()

    except Exception as e:
        print("Erro:", e)
