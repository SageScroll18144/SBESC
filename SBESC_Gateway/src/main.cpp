#include <Arduino.h>
#include <WiFi.h>
#include <WebServer.h>

// Defina seu Wi-Fi
const char* ssid = "CINGUESTS";
const char* password = "acessocin";

WebServer server(80); // Porta padrão HTTP

// Função para lidar com POST em /receber
void handlePost() {
  if (server.hasArg("plain") == false) {
    server.send(400, "text/plain", "Corpo da requisição ausente");
    return;
  }

  String body = server.arg("plain");
  Serial.println("Dados recebidos:");
  Serial.println(body);

  // Resposta para o cliente
  server.send(200, "application/json", "{\"status\": \"Recebido com sucesso\"}");

  // Resposta para a serial
}

void setup() {
  Serial.begin(115200);

  WiFi.begin(ssid, password);
  Serial.print("Conectando ao WiFi");

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("Conectado!");
  Serial.print("Endereço IP: ");
  Serial.println(WiFi.localIP());

  server.on("/receber", HTTP_POST, handlePost);
  server.begin();
  Serial.println("🌐 Servidor HTTP iniciado");
}

void loop() {
  server.handleClient();
}
