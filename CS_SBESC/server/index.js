// server/index.js
const express = require('express');
const cors = require('cors');
const axios = require('axios'); // instale: npm install axios

const app = express();
const PORT = 3000;

app.use(cors());
app.use(express.json());

// Rota GET
app.get('/dados', (req, res) => {
  res.json({ mensagem: 'Olá do servidor!', timestamp: new Date().toISOString() });
});

// Rota POST
app.post('/enviar', async (req, res) => {
  console.log('Recebido do cliente:', req.body);

  try {
    const picoResponse = await axios.post(
      'http://172.22.67.2/receber',
      req.body, 
      { timeout: 5000 }
    );

    console.log('Resposta da Pico W:', picoResponse.data);

    res.json({
      status: 'Dados enviados para a Pico W com sucesso!',
      picoResponse: picoResponse.data,
    });

  } catch (error) {
    console.error('Erro ao enviar para a Pico W:', error.message);
    res.status(500).json({
      status: 'Erro ao enviar para a Pico W',
      error: error.message,
    });
  }
});

app.listen(PORT, () => {
  console.log(`Servidor rodando em http://localhost:${PORT}`);
});
