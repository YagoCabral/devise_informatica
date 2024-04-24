#Exemplo de JSON a ser enviado para criação de um Pedido, necessario que seja preenchido os dados das peças corretamente, igual ao que foi passado no projeto.
{
  "customer": {
    "name": "Maria"
  },
  "computer": {
    "processor": {
      "name": "Core i5",
      "brand": "Intel"
    },
    "motherboard": {
      "name": "Asus ROG",
      "processor_supported": "Intel",
      "ram_supported": 16,
      "slot": 2,
      "integrated_video": false
    },
    "rams": [
      {
        "name": "Kingston Hiper X",
        "size": 8
      },
      {
        "name": "Kingston Hiper X",
        "size": 8
      }
    ],
    "video_card": {
      "name": "Evga Geforce RTX 2060 6GB"
    }
  }
}